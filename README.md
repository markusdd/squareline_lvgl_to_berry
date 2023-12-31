# squareline_lvgl_to_berry
A dumb converter to read Squareline Studio LVGL screen C-files and output a berry script usable in Tasmota

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/R6R8DQO8C)

## What this is

A Python script that reads a `ui_Screen1.c` file from the same directory produced by Squareline Studio export and outputs a `ui.be` file that should resemble a valid berry script or at least be somewhat close.

## What this is not

A proper transpiler for generic LVGL C-Code. It is very, VERY dumb string-based search and replace, which relies on the specific format the Squareline Studio produces. Hey, even the filename is hardcoded! And it only works on the main screen file. If you need anything from the helpers files etc you need to do that yourself. Also Font handling other than the default might be flaky, as are more complex widgets.

## Usage

If you are in a IDE like VS Code just run the Python script with the play button in the upper right corner, any Python3 in your environment should work.
Make sure the `ui_Screen1.c` is in the same directory.
It will then output the berry file, please be mindful it will override `ui.be` WITHOUT ASKING.
So it is recommended after conversion that you copy out the parts from `ui.be` that you need.

When callbacks for e.g. buttons are found I do generate a function skeleton similar to what Squareline studio outputs into `ui_events.c`.
You can copy those out and fill them with the functionality you need.

## Example
I just provide this here as I made it for a little private project and thought it might be useful. You can look at the [example](example/) folder, there is a basement
light controller UI that I made in Squareline studio.
The code you see does not cover the line widget I used
to draw the basement walls, this is handcoded in another file as Squareline Studio cannot do the arbitrary line widget as of December 2023, so ignore that.