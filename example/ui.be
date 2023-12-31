lv.start()
hres = lv.get_hor_res()
vres = lv.get_ver_res()


ui_Screen1 = lv.scr_act()
ui_Screen1.clear_flag(lv.OBJ_FLAG_SCROLLABLE)      # Flags
ui_Screen1.set_style_bg_color(lv.color(0xFFFFFF), lv.PART_MAIN | lv.STATE_DEFAULT)
ui_Screen1.set_style_bg_opa(255, lv.PART_MAIN | lv.STATE_DEFAULT)
ui_Screen1.set_style_bg_grad_color(lv.color(0x818181), lv.PART_MAIN | lv.STATE_DEFAULT)
ui_Screen1.set_style_bg_grad_dir(lv.GRAD_DIR_VER, lv.PART_MAIN | lv.STATE_DEFAULT)

ui_ButtonAllOn = lv.btn(ui_Screen1)
ui_ButtonAllOn.set_width(lv.pct(10))
ui_ButtonAllOn.set_height(lv.pct(10))
ui_ButtonAllOn.set_x(lv.pct(67))
ui_ButtonAllOn.set_y(lv.pct(85))
ui_ButtonAllOn.add_flag(lv.OBJ_FLAG_SCROLL_ON_FOCUS)     # Flags
ui_ButtonAllOn.clear_flag(lv.OBJ_FLAG_SCROLLABLE)      # Flags
ui_ButtonAllOn.set_style_bg_color(lv.color(0x27324A), lv.PART_MAIN | lv.STATE_DEFAULT)
ui_ButtonAllOn.set_style_bg_opa(255, lv.PART_MAIN | lv.STATE_DEFAULT)
ui_ButtonAllOn.set_style_shadow_color(lv.color(0x3C3C3C), lv.PART_MAIN | lv.STATE_DEFAULT)
ui_ButtonAllOn.set_style_shadow_opa(255, lv.PART_MAIN | lv.STATE_DEFAULT)
ui_ButtonAllOn.set_style_shadow_width(4, lv.PART_MAIN | lv.STATE_DEFAULT)
ui_ButtonAllOn.set_style_shadow_spread(2, lv.PART_MAIN | lv.STATE_DEFAULT)
ui_ButtonAllOn.set_style_shadow_ofs_x(3, lv.PART_MAIN | lv.STATE_DEFAULT)
ui_ButtonAllOn.set_style_shadow_ofs_y(3, lv.PART_MAIN | lv.STATE_DEFAULT)

ui_ButtonAllOnLabel = lv.label(ui_ButtonAllOn)
ui_ButtonAllOnLabel.set_width(lv.SIZE_CONTENT)   # 1
ui_ButtonAllOnLabel.set_height(lv.SIZE_CONTENT)    # 1
ui_ButtonAllOnLabel.set_align(lv.ALIGN_CENTER)
ui_ButtonAllOnLabel.set_text("Alle An")

ui_ButtonAllOff = lv.btn(ui_Screen1)
ui_ButtonAllOff.set_width(lv.pct(10))
ui_ButtonAllOff.set_height(lv.pct(10))
ui_ButtonAllOff.set_x(lv.pct(80))
ui_ButtonAllOff.set_y(lv.pct(85))
ui_ButtonAllOff.add_flag(lv.OBJ_FLAG_SCROLL_ON_FOCUS)     # Flags
ui_ButtonAllOff.clear_flag(lv.OBJ_FLAG_SCROLLABLE)      # Flags
ui_ButtonAllOff.set_style_bg_color(lv.color(0x27324A), lv.PART_MAIN | lv.STATE_DEFAULT)
ui_ButtonAllOff.set_style_bg_opa(255, lv.PART_MAIN | lv.STATE_DEFAULT)
ui_ButtonAllOff.set_style_shadow_color(lv.color(0x3C3C3C), lv.PART_MAIN | lv.STATE_DEFAULT)
ui_ButtonAllOff.set_style_shadow_opa(255, lv.PART_MAIN | lv.STATE_DEFAULT)
ui_ButtonAllOff.set_style_shadow_width(4, lv.PART_MAIN | lv.STATE_DEFAULT)
ui_ButtonAllOff.set_style_shadow_spread(2, lv.PART_MAIN | lv.STATE_DEFAULT)
ui_ButtonAllOff.set_style_shadow_ofs_x(3, lv.PART_MAIN | lv.STATE_DEFAULT)
ui_ButtonAllOff.set_style_shadow_ofs_y(3, lv.PART_MAIN | lv.STATE_DEFAULT)

ui_ButtonAllOffLabel = lv.label(ui_ButtonAllOff)
ui_ButtonAllOffLabel.set_width(lv.SIZE_CONTENT)   # 1
ui_ButtonAllOffLabel.set_height(lv.SIZE_CONTENT)    # 1
ui_ButtonAllOffLabel.set_align(lv.ALIGN_CENTER)
ui_ButtonAllOffLabel.set_text("Alle Aus")

ui_PanelTop = lv.obj(ui_Screen1)
ui_PanelTop.set_width(lv.pct(100))
ui_PanelTop.set_height(lv.pct(15))
ui_PanelTop.clear_flag(lv.OBJ_FLAG_SCROLLABLE)      # Flags
ui_PanelTop.set_style_radius(0, lv.PART_MAIN | lv.STATE_DEFAULT)
ui_PanelTop.set_style_bg_color(lv.color(0x27324A), lv.PART_MAIN | lv.STATE_DEFAULT)
ui_PanelTop.set_style_bg_opa(255, lv.PART_MAIN | lv.STATE_DEFAULT)

ui_LabelHeader = lv.label(ui_PanelTop)
ui_LabelHeader.set_width(lv.SIZE_CONTENT)   # 80
ui_LabelHeader.set_height(lv.SIZE_CONTENT)    # 0
ui_LabelHeader.set_x(lv.pct(0))
ui_LabelHeader.set_y(lv.pct(-15))
ui_LabelHeader.set_text("Keller Lichtsteuerung")
ui_LabelHeader.set_style_text_color(lv.color(0xFFFFFF), lv.PART_MAIN | lv.STATE_DEFAULT)
ui_LabelHeader.set_style_text_opa(255, lv.PART_MAIN | lv.STATE_DEFAULT)
ui_LabelHeader.set_style_text_font(lv.montserrat_font(40), lv.PART_MAIN | lv.STATE_DEFAULT)

ui_Switch1 = lv.switch(ui_Screen1)
ui_Switch1.set_width(lv.pct(6))
ui_Switch1.set_height(lv.pct(5))
ui_Switch1.set_x(500)
ui_Switch1.set_y(300)

ui_Switch1.set_style_bg_color(lv.color(0x696969), lv.PART_INDICATOR | lv.STATE_DEFAULT)
ui_Switch1.set_style_bg_opa(255, lv.PART_INDICATOR | lv.STATE_DEFAULT)
ui_Switch1.set_style_bg_color(lv.color(0x27324A), lv.PART_INDICATOR | lv.STATE_CHECKED)
ui_Switch1.set_style_bg_opa(255, lv.PART_INDICATOR | lv.STATE_CHECKED)
ui_Switch1.set_style_shadow_color(lv.color(0xE5BC09), lv.PART_INDICATOR | lv.STATE_CHECKED)
ui_Switch1.set_style_shadow_opa(255, lv.PART_INDICATOR | lv.STATE_CHECKED)
ui_Switch1.set_style_shadow_width(40, lv.PART_INDICATOR | lv.STATE_CHECKED)
ui_Switch1.set_style_shadow_spread(20, lv.PART_INDICATOR | lv.STATE_CHECKED)

ui_SwitchLabel1 = lv.label(ui_Screen1)
ui_SwitchLabel1.set_width(lv.SIZE_CONTENT)   # 1
ui_SwitchLabel1.set_height(lv.SIZE_CONTENT)    # 1
ui_SwitchLabel1.set_x(500)
ui_SwitchLabel1.set_y(330)
ui_SwitchLabel1.set_text("Hauptkeller")
ui_SwitchLabel1.set_style_text_font(lv.montserrat_font(20), lv.PART_MAIN | lv.STATE_DEFAULT)

ui_Switch2 = lv.switch(ui_Screen1)
ui_Switch2.set_width(lv.pct(6))
ui_Switch2.set_height(lv.pct(5))
ui_Switch2.set_x(570)
ui_Switch2.set_y(150)

ui_Switch2.set_style_bg_color(lv.color(0x696969), lv.PART_INDICATOR | lv.STATE_DEFAULT)
ui_Switch2.set_style_bg_opa(255, lv.PART_INDICATOR | lv.STATE_DEFAULT)
ui_Switch2.set_style_bg_color(lv.color(0x27324A), lv.PART_INDICATOR | lv.STATE_CHECKED)
ui_Switch2.set_style_bg_opa(255, lv.PART_INDICATOR | lv.STATE_CHECKED)
ui_Switch2.set_style_shadow_color(lv.color(0xE5BC09), lv.PART_INDICATOR | lv.STATE_CHECKED)
ui_Switch2.set_style_shadow_opa(255, lv.PART_INDICATOR | lv.STATE_CHECKED)
ui_Switch2.set_style_shadow_width(40, lv.PART_INDICATOR | lv.STATE_CHECKED)
ui_Switch2.set_style_shadow_spread(20, lv.PART_INDICATOR | lv.STATE_CHECKED)

ui_SwitchLabel2 = lv.label(ui_Screen1)
ui_SwitchLabel2.set_width(lv.SIZE_CONTENT)   # 1
ui_SwitchLabel2.set_height(lv.SIZE_CONTENT)    # 1
ui_SwitchLabel2.set_x(570)
ui_SwitchLabel2.set_y(180)
ui_SwitchLabel2.set_text("Waschkeller")
ui_SwitchLabel2.set_style_text_font(lv.montserrat_font(20), lv.PART_MAIN | lv.STATE_DEFAULT)

ui_Switch3 = lv.switch(ui_Screen1)
ui_Switch3.set_width(lv.pct(6))
ui_Switch3.set_height(lv.pct(5))
ui_Switch3.set_x(310)
ui_Switch3.set_y(150)

ui_Switch3.set_style_bg_color(lv.color(0x696969), lv.PART_INDICATOR | lv.STATE_DEFAULT)
ui_Switch3.set_style_bg_opa(255, lv.PART_INDICATOR | lv.STATE_DEFAULT)
ui_Switch3.set_style_bg_color(lv.color(0x27324A), lv.PART_INDICATOR | lv.STATE_CHECKED)
ui_Switch3.set_style_bg_opa(255, lv.PART_INDICATOR | lv.STATE_CHECKED)
ui_Switch3.set_style_shadow_color(lv.color(0xE5BC09), lv.PART_INDICATOR | lv.STATE_CHECKED)
ui_Switch3.set_style_shadow_opa(255, lv.PART_INDICATOR | lv.STATE_CHECKED)
ui_Switch3.set_style_shadow_width(40, lv.PART_INDICATOR | lv.STATE_CHECKED)
ui_Switch3.set_style_shadow_spread(20, lv.PART_INDICATOR | lv.STATE_CHECKED)

ui_SwitchLabel3 = lv.label(ui_Screen1)
ui_SwitchLabel3.set_width(lv.SIZE_CONTENT)   # 1
ui_SwitchLabel3.set_height(lv.SIZE_CONTENT)    # 1
ui_SwitchLabel3.set_x(310)
ui_SwitchLabel3.set_y(180)
ui_SwitchLabel3.set_text("Nordkeller")
ui_SwitchLabel3.set_style_text_font(lv.montserrat_font(20), lv.PART_MAIN | lv.STATE_DEFAULT)

ui_Switch4 = lv.switch(ui_Screen1)
ui_Switch4.set_width(lv.pct(6))
ui_Switch4.set_height(lv.pct(5))
ui_Switch4.set_x(150)
ui_Switch4.set_y(300)

ui_Switch4.set_style_bg_color(lv.color(0x696969), lv.PART_INDICATOR | lv.STATE_DEFAULT)
ui_Switch4.set_style_bg_opa(255, lv.PART_INDICATOR | lv.STATE_DEFAULT)
ui_Switch4.set_style_bg_color(lv.color(0x27324A), lv.PART_INDICATOR | lv.STATE_CHECKED)
ui_Switch4.set_style_bg_opa(255, lv.PART_INDICATOR | lv.STATE_CHECKED)
ui_Switch4.set_style_shadow_color(lv.color(0xE5BC09), lv.PART_INDICATOR | lv.STATE_CHECKED)
ui_Switch4.set_style_shadow_opa(255, lv.PART_INDICATOR | lv.STATE_CHECKED)
ui_Switch4.set_style_shadow_width(40, lv.PART_INDICATOR | lv.STATE_CHECKED)
ui_Switch4.set_style_shadow_spread(20, lv.PART_INDICATOR | lv.STATE_CHECKED)

ui_SwitchLabel4 = lv.label(ui_Screen1)
ui_SwitchLabel4.set_width(lv.SIZE_CONTENT)   # 1
ui_SwitchLabel4.set_height(lv.SIZE_CONTENT)    # 1
ui_SwitchLabel4.set_x(150)
ui_SwitchLabel4.set_y(330)
ui_SwitchLabel4.set_text("Heizungs- und\nEinmachkeller")
ui_SwitchLabel4.set_style_text_font(lv.montserrat_font(20), lv.PART_MAIN | lv.STATE_DEFAULT)


def ui_event_ButtonAllOn(obj, event)

end
ui_ButtonAllOn.add_event_cb(ui_event_ButtonAllOn, lv.EVENT_ALL, 0)

def ui_event_ButtonAllOff(obj, event)

end
ui_ButtonAllOff.add_event_cb(ui_event_ButtonAllOff, lv.EVENT_ALL, 0)

def ui_event_Switch1(obj, event)

end
ui_Switch1.add_event_cb(ui_event_Switch1, lv.EVENT_ALL, 0)

def ui_event_Switch2(obj, event)

end
ui_Switch2.add_event_cb(ui_event_Switch2, lv.EVENT_ALL, 0)

def ui_event_Switch3(obj, event)

end
ui_Switch3.add_event_cb(ui_event_Switch3, lv.EVENT_ALL, 0)

def ui_event_Switch4(obj, event)

end
ui_Switch4.add_event_cb(ui_event_Switch4, lv.EVENT_ALL, 0)

