#!/bin/env python3

"""
Super dumb implementation of a converter from Squareline Studio LVGL
C code to berry script which can be used within Tasmota.

This currently just considers the main screen file in the same directory
and emits a file called ui.be which has the converted code in it.

This strictly relies on how Squareline Studio emits the code and will
horribly break down on any manual stuff, also complex scenarios and widgets
are untested.
"""

import re

debug = False  # set this to true to get some debugging output for the regexes etc.
cbs = []

with open("ui_Screen1.c", "r") as f:
    with open("ui.be", "w") as tf:
        code = f.readlines()
        tf.write("lv.start()\nhres = lv.get_hor_res()\nvres = lv.get_ver_res()\n")
        for l in code:
            # keep empty lines
            if l.startswith("\n"):
                tf.write(l)
                continue
            # drop includes
            if "#include" in l:
                continue
            # drop braces
            if l.startswith("{"):
                continue
            # drop comments
            if l.startswith("//"):
                continue
            # drop braces
            if l.startswith("}"):
                continue
            # drop the screen function header
            if l.startswith("void") and l.endswith("(void)\n"):
                continue
            # indented area, this is where the codes meat is
            if l.startswith("    "):
                line = (
                    l.replace(";\n", "\n")  # semicolons ... nah
                    .replace("; ", " ")  # semicolons ... nah
                    .replace("///", "#")  # inline comments, we keep them
                    .replace(  # init method for screen differs, hard replacement
                        "lv_obj_create(NULL)", "lv.scr_act()"
                    )
                    .replace("lv_", "lv.")  # dot notation
                    .replace("LV_", "lv.")  # dot notation
                    .replace("color_hex", "color")  # whyever this was renamed...
                    .replace(  # constructor methods lack the create suffix in berry
                        "_create(", "("
                    )
                    .lstrip(" ")  # remove indent for easier copying
                )
                if line.startswith("lv."):  # ok ok some regex is needed I guess...
                    debug and print("Unmodified line: ", line)
                    # consider a line like:
                    # lv.obj_add_event_cb(ui_Switch3, ui_event_Switch3, lv.EVENT_ALL, NULL)
                    # for berry object oriented notation, we delete lv.xxx_ (until first underscore)
                    # and replace it by the component name which is the first argument in the round
                    # braces, which we subsequently delete as well.
                    # So in summary we just move the module name to the front and add a dot.
                    match = re.match(r"^(lv\..*?_).*?\(((.*?)\,\s).*$", line)
                    debug and print("Match Groups: ", match[1], match[2], match[3])
                    line = line.replace(match[1], match[3] + ".")
                    line = line.replace(match[2], "")
                    debug and print("Modified line: ", line)
                if "&lv.font" in line:
                    # this is almost impossible to generalize as font usage and naming might
                    # vary greatly, but this should cut it at least for the embedded monserrat font
                    match = re.match(r"^.*((\&lv\.font_(.*))_([0-9]+))", line)
                    debug and print("Font whole match: ", match[1])
                    line = line.replace(
                        match[1], "lv." + match[3] + "_font(" + match[4] + ")"
                    )
                if "ui_event_" in line:
                    # for convencience extract skeletons for the event callbacks
                    match = re.match(r"^.*(ui_event_.*?), ", line)
                    debug and print("Callback found: ", match[1])
                    if match[1] not in cbs:
                        # avoid outputting duplicate callback skeletons
                        # so we remember which ones we already have
                        tf.write("\ndef " + match[1] + "(obj, event)\n\nend\n")
                        cbs.append(match[1])
                    line = line.replace("NULL", "0")

                tf.write(line)
