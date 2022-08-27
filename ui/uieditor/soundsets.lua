-- 7ea119d9c012b3de6a1f8f16ec995dda
-- This hash is used for caching, delete to decompile the file again

SoundSet = {
	none = nil,
	default = {
		action = "cac_grid_equip_item",
		gain_focus = "cac_grid_nav",
		list_action = "uin_select",
		menu_go_back = "uin_cmn_backout",
		menu_open = "cac_grid_equip_item",
		list_up = "cac_slide_nav",
		list_down = "cac_slide_nav",
		list_left = "cac_slide_nav",
		list_right = "cac_slide_nav",
		partyease_slide_left = "uin_party_ease_slide",
		partyease_slide_right = "uin_party_ease_slide_back",
		toggle = "uin_paint_image_flip_toggle",
		ekg_1 = "mpl_rejack_ekg_1",
		ekg_2 = "mpl_rejack_ekg_2",
		ekg_3 = "mpl_rejack_ekg_3",
		flatline = "mpl_rejack_flatline",
		faction_in = "mpl_start_faction_ui_in",
		faction_out = "mpl_start_faction_ui_out",
		xp_in = "mpl_start_xp_ui_in",
		xp_out = "mpl_start_xp_ui_out",
		obj_in = "mpl_start_show_obj_ui_in",
		obj_out = "mpl_start_show_obj_ui_out"
	},
	FrontendMain = {
		action = "uin_enter_mode_menu"
	},
	ModeSelection = {
		list_action = "uin_select",
		list_up = "uin_up",
		list_down = "uin_down",
		menu_go_back = "uin_back"
	},
	CampaignMain = {
		list_action = "uin_select",
		list_up = "uin_up",
		list_down = "uin_down",
		menu_go_back = "uin_back_mode_select"
	},
	MultiplayerMain = {
		list_action = "uin_select",
		list_up = "uin_up",
		list_down = "uin_down",
		list_left = "cac_slide_nav",
		list_right = "cac_slide_nav",
		menu_go_back = "uin_back_mode_select",
		team_switch = "uin_paint_image_flip_toggle",
		menu_open = "cac_grid_equip_item",
		gain_focus = "cac_grid_nav",
		action = "cac_grid_equip_item",
		action_denied = "uin_bm_denied"
	},
	ZombiesMain = {
		list_action = "uin_select",
		list_up = "uin_up",
		list_down = "uin_down",
		menu_go_back = "uin_back_mode_select"
	},
	FriendsMenu = {
		menu_open = "uin_open_friends",
		list_action = "uin_select",
		list_up = "uin_up",
		list_down = "uin_down",
		tab_changed = "uin_friends_left_right",
		menu_go_back = "uin_back_mode_select"
	},
	HUD = {
		hud_boot = "mpl_bootup_sequence",
		medal_earned = "mpl_medal_earned",
		list_down = "cac_killstreak_nav",
		list_up = "cac_killstreak_nav",
		list_left = "cac_wpn_cust_nav",
		list_right = "cac_wpn_cust_nav",
		rank_up = "mpl_promotion",
		weapon_level_up = "mpl_weapon_level_up",
		hero_level_up = "mpl_hero_level_up",
		challenge_complete = "mpl_challenge_met",
		action = "cac_grid_equip_item"
	},
	AAR = {
		hud_boot = "mpl_bootup_sequence",
		medal_earned = "mpl_medal_earned",
		list_down = "cac_killstreak_nav",
		list_up = "cac_killstreak_nav",
		list_left = "cac_killstreak_nav",
		list_right = "cac_killstreak_nav",
		rank_up = "mpl_promotion",
		weapon_level_up = "mpl_weapon_level_up",
		hero_level_up = "mpl_hero_level_up",
		challenge_complete = "mpl_challenge_met",
		action = "cac_grid_equip_item",
		rank_music = "uin_level_up",
		rank_sound = "uin_rank_promotion"
	},
	CAC = {
		menu_open_from_lobby = "cac_enter",
		menu_open_from_edit = "cac_reenter",
		menu_go_back = "cac_main_exit_cac",
		list_up = "cac_main_nav",
		list_down = "cac_main_nav",
		list_action = "cac_main_edit_loadout",
		menu_sub = "cac_open_wpn_cust_sub",
		menu_open = "cac_grid_equip_item",
		action = "cac_grid_equip_item",
		list_action = "uin_select"
	},
	Loadout = {
		menu_open_from_lobby = "cac_enter",
		menu_open_from_edit = "cac_reenter",
		menu_go_back = "uin_spinner",
		list_up = "cac_main_nav",
		list_down = "cac_main_nav",
		list_action = "cac_main_edit_loadout",
		menu_sub = "cac_open_wpn_cust_sub",
		menu_open = "cac_grid_equip_item",
		action = "cac_grid_equip_item",
		list_action = "uin_select"
	},
	CAC_EditLoadout = {
		cac_enter_wpn_cust = "cac_open_wpn_cust",
		cac_enter_wpn_cust_sub = "cac_open_wpn_cust_sub",
		menu_go_back = "cac_wpn_cust_exit",
		list_up = "cac_wpn_cust_nav",
		list_down = "cac_wpn_cust_nav",
		list_left = "cac_wpn_cust_nav",
		list_right = "cac_wpn_cust_nav",
		navigate = "cac_loadout_nav",
		unequip_item = "cac_equipment_remove",
		equip_item = "cac_equipment_add_equipment",
		equip_mod = "cac_equipment_add_mod",
		list_action = "uin_select",
		action = "uin_select",
		gain_focus = "uin_select"
	},
	Blackmarket_extra = {
		list_action = "uin_select",
		list_up = "uin_up",
		list_down = "uin_down",
		list_left = "uin_bm_item_scroll",
		list_right = "uin_bm_item_scroll",
		menu_go_back = "uin_back_mode_select",
		team_switch = "uin_paint_image_flip_toggle",
		menu_open = "cac_grid_equip_item",
		gain_focus = "cac_grid_nav",
		action = "cac_grid_equip_item",
		action_denied = "uin_bm_denied"
	},
	MP_SpecialistsAndScorestreaks = LUI.ShallowCopy( SoundSet.CAC_EditLoadout ),
	MP_SpecialistsAndScorestreaks = "cac_grid_equip_item",
	CAC_SubMenu = {
		menu_no_selection = "cac_cmn_backout",
		list_up = "cac_slide_nav",
		list_down = "cac_slide_nav",
		list_left = "cac_slide_nav",
		list_right = "cac_slide_nav",
		toggle_switch = "cac_grid_equip_item"
	},
	Paintshop = {
		list_action = "uin_paint_select",
		tab_changed = "uin_paint_weapon_scroll",
		list_up = "uin_paint_decal_nav",
		list_down = "uin_paint_decal_nav",
		list_left = "uin_paint_decal_nav",
		list_right = "uin_paint_decal_nav",
		list_back = "uin_cmn_backout",
		menu_go_back = "uin_back",
		save_box = "cac_grid_nav"
	},
	CustomizationEditor = {
		list_action = "uin_paint_layer_select",
		list_left = "uin_paint_layer_scroll",
		list_right = "uin_paint_layer_scroll",
		switch_camera = "uin_paint_camera",
		color_picker = "uin_paint_color_picker",
		flip_image = "uin_paint_image_flip_toggle",
		toggle_outline = "uin_paint_image_outline_toggle",
		scale = "uin_paint_image_manipulate",
		rotate = "uin_paint_image_manipulate",
		opacity = "uin_paint_image_manipulate",
		options = "uin_paint_options",
		menu_go_back = "uin_cmn_backout",
		save_box = "cac_grid_nav",
		gain_focus = "cac_grid_nav",
		menu_open = "cac_grid_equip_item",
		layer_switch = "uin_select"
	},
	ChooseDecal = {
		list_up = "uin_paint_decal_nav",
		list_down = "uin_paint_decal_nav",
		list_left = "uin_paint_decal_nav",
		list_right = "uin_paint_decal_nav",
		list_action = "uin_paint_decal_select",
		tab_changed = "uin_paint_decal_cat_nav",
		menu_go_back = "uin_back",
		menu_enter = "cac_open_wpn_cust_sub",
		item_select = "cac_equipment_add_equipment",
		gain_focus = "cac_grid_nav",
		menu_open = "cac_grid_equip_item",
		action = "cac_grid_equip_item"
	},
	SelectColor = {
		menu_open = "uin_paint_color_picker",
		menu_go_back = "uin_back",
		action = "uin_paint_color_select",
		toggle_color_picker = "uin_paint_color_mixer"
	},
	SelectColor_ColorSwatchPicker = {
		list_up = "uin_paint_grid_nav",
		list_down = "uin_paint_grid_nav",
		list_left = "uin_paint_grid_nav",
		list_right = "uin_paint_grid_nav",
		gain_focus = "uin_paint_grid_nav"
	},
	SelectColor_ColorMixer = {
		list_up = "uin_paint_grid_nav",
		list_down = "uin_paint_grid_nav",
		list_left = "uin_paint_image_manipulate",
		list_right = "uin_paint_image_manipulate",
		list_action = nil,
		manipulate_slider = "uin_paint_image_manipulate"
	},
	Omnipedia = {
		action = "cac_grid_equip_item",
		gain_focus = "cac_grid_nav",
		list_action = "uin_select",
		menu_go_back = "uin_cmn_backout",
		menu_open = "cac_grid_equip_item",
		list_up = "cac_slide_nav",
		list_down = "cac_slide_nav",
		list_left = "cac_slide_nav",
		list_right = "cac_slide_nav",
		toggle = "uin_paint_image_flip_toggle",
		item_read = "uin_sh_omni_open",
		item_hilight = "uin_sh_html_highlight"
	},
	Special_widgets = {
		feature_update = "uin_featured_scroll",
		menu_open = "uin_spinner"
	},
	CAC_PrimaryWeapon = LUI.ShallowCopy( SoundSet.CAC_SubMenu ),
	CAC_PrimaryWeapon = "cac_slide_equip_item_weapon",
	CAC_PrimaryWeapon = "cac_slide_nav_up",
	CAC_PrimaryWeapon = "cac_slide_nav_down",
	CAC_PrimaryWeapon = "cac_slide_nav_lr",
	CAC_PrimaryWeapon = "cac_slide_nav_lr",
	CAC_SecondaryWeapon = LUI.ShallowCopy( SoundSet.CAC_SubMenu ),
	CAC_SecondaryWeapon = "cac_slide_equip_item_weapon",
	CAC_SecondaryWeapon = "cac_slide_nav_up",
	CAC_SecondaryWeapon = "cac_slide_nav_down",
	CAC_SecondaryWeapon = "cac_slide_nav_lr",
	CAC_SecondaryWeapon = "cac_slide_nav_lr",
	CAC_PrimaryAttachment = LUI.ShallowCopy( SoundSet.CAC_SubMenu ),
	CAC_PrimaryAttachment = "cac_equipment_add_equipment",
	CAC_SecondaryAttachment = LUI.ShallowCopy( SoundSet.CAC_SubMenu ),
	CAC_SecondaryAttachment = "cac_equipment_add_equipment",
	CAC_LethalGrenade = LUI.ShallowCopy( SoundSet.CAC_SubMenu ),
	CAC_LethalGrenade = "cac_equipment_add_lethal",
	CAC_TacticalGrenade = LUI.ShallowCopy( SoundSet.CAC_SubMenu ),
	CAC_TacticalGrenade = "cac_equipment_add_tactical",
	CAC_Perk = LUI.ShallowCopy( SoundSet.CAC_SubMenu ),
	CAC_Perk = "cac_perk_select",
	CAC_Wildcard = LUI.ShallowCopy( SoundSet.CAC_SubMenu ),
	CAC_Wildcard = "cac_grid_equip_item_wildcard",
	CAC_Overcapacity = LUI.ShallowCopy( SoundSet.CAC_SubMenu ),
	CAC_Overcapacity = "cac_overload_enter",
	CAC_Overcapacity = "cac_overload_exit",
	CAC_Overcapacity = "cac_overload_select",
	AbilityWheel = {
		menu_open = "uin_cybercore_menu_open",
		menu_start_close = "uin_cybercore_menu_close",
		gain_focus = "uin_cybercore_menu_select",
		left_bumper = "uin_cybercore_menu_bumpers",
		right_bumper = "uin_cybercore_menu_bumpers"
	},
	BootMenu = {
		menu_open = "uin_hud_bootup_display"
	},
	Siegebot = LUI.ShallowCopy( SoundSet.default )
}
if Engine.IsMultiplayerGame() then
	SoundSet.Siegebot.menu_open = "evt_siegebot_bootup"
end
