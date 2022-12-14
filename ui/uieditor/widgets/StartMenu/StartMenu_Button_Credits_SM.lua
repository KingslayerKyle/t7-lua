-- 166869abdc06eddbb08982e4e68f3250
-- This hash is used for caching, delete to decompile the file again

require( "ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags" )
require( "ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive" )
require( "ui.uieditor.widgets.StartMenu.StartMenu_ImageContainer_Credits_SM" )
require( "ui.uieditor.widgets.StartMenu.StartMenu_Identity_SubTitle" )
require( "ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer" )
require( "ui.uieditor.widgets.CAC.cac_lock" )
require( "ui.uieditor.widgets.StartMenu.StartMenu_OnlineOnly" )

CoD.StartMenu_Button_Credits_SM = InheritFrom( LUI.UIElement )
CoD.StartMenu_Button_Credits_SM.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.StartMenu_Button_Credits_SM )
	self.id = "StartMenu_Button_Credits_SM"
	self.soundSet = "ChooseDecal"
	self:setLeftRight( true, false, 0, 185 )
	self:setTopBottom( true, false, 0, 124 )
	self:makeFocusable()
	self:setHandleMouse( true )
	self.anyChildUsesUpdateState = true
	
	local BoxButtonLrgInactiveDiag = CoD.cac_ButtonBoxLrgInactiveDiags.new( menu, controller )
	BoxButtonLrgInactiveDiag:setLeftRight( true, true, -2, 2 )
	BoxButtonLrgInactiveDiag:setTopBottom( true, true, -2, 2 )
	BoxButtonLrgInactiveDiag:setAlpha( 0 )
	self:addElement( BoxButtonLrgInactiveDiag )
	self.BoxButtonLrgInactiveDiag = BoxButtonLrgInactiveDiag
	
	local BoxButtonLrgInactive = CoD.cac_ButtonBoxLrgInactive.new( menu, controller )
	BoxButtonLrgInactive:setLeftRight( true, true, -2, 2 )
	BoxButtonLrgInactive:setTopBottom( true, true, -2, 2 )
	BoxButtonLrgInactive:setRGB( 0.87, 0.97, 1 )
	BoxButtonLrgInactive:setAlpha( 0.4 )
	self:addElement( BoxButtonLrgInactive )
	self.BoxButtonLrgInactive = BoxButtonLrgInactive
	
	local ImageText = LUI.UIText.new()
	ImageText:setLeftRight( true, true, 0, 0 )
	ImageText:setTopBottom( true, false, 0, 20 )
	ImageText:setText( Engine.Localize( "" ) )
	ImageText:setTTF( "fonts/default.ttf" )
	ImageText:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	ImageText:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	self:addElement( ImageText )
	self.ImageText = ImageText
	
	local ImageContainer = CoD.StartMenu_ImageContainer_Credits_SM.new( menu, controller )
	ImageContainer:setLeftRight( true, true, 2, -2 )
	ImageContainer:setTopBottom( true, true, 2, -3 )
	ImageContainer.ImageContainer:setImage( RegisterImage( "uie_img_t7_menu_startmenu_option_credits" ) )
	self:addElement( ImageContainer )
	self.ImageContainer = ImageContainer
	
	local LockBackground = LUI.UIImage.new()
	LockBackground:setLeftRight( true, true, 2, -2 )
	LockBackground:setTopBottom( true, true, 1, -2 )
	LockBackground:setRGB( 0, 0, 0 )
	LockBackground:setAlpha( 0.05 )
	self:addElement( LockBackground )
	self.LockBackground = LockBackground
	
	local TitleBg = LUI.UIImage.new()
	TitleBg:setLeftRight( true, true, 3, -2 )
	TitleBg:setTopBottom( false, false, -17.97, 14.5 )
	TitleBg:setRGB( 0, 0, 0 )
	TitleBg:setAlpha( 0 )
	TitleBg:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_feather_edges" ) )
	TitleBg:setShaderVector( 0, 0.02, 0.02, 0.02, 0.02 )
	self:addElement( TitleBg )
	self.TitleBg = TitleBg
	
	local LOCKBlackCircle = LUI.UIImage.new()
	LOCKBlackCircle:setLeftRight( false, false, -22.5, 22.5 )
	LOCKBlackCircle:setTopBottom( false, false, -24, 21 )
	LOCKBlackCircle:setRGB( 0, 0, 0 )
	LOCKBlackCircle:setAlpha( 0.3 )
	LOCKBlackCircle:setScale( 0.9 )
	LOCKBlackCircle:setImage( RegisterImage( "uie_t7_core_hud_ammowidget_panelcircle" ) )
	self:addElement( LOCKBlackCircle )
	self.LOCKBlackCircle = LOCKBlackCircle
	
	local StartMenuIdentitySubTitle0 = CoD.StartMenu_Identity_SubTitle.new( menu, controller )
	StartMenuIdentitySubTitle0:setLeftRight( true, false, 8, 178 )
	StartMenuIdentitySubTitle0:setTopBottom( false, true, -32, -6 )
	StartMenuIdentitySubTitle0.SubTitle:setText( Engine.Localize( "SOMETHING" ) )
	StartMenuIdentitySubTitle0.SubTitle:setTTF( "fonts/RefrigeratorDeluxe-Regular.ttf" )
	self:addElement( StartMenuIdentitySubTitle0 )
	self.StartMenuIdentitySubTitle0 = StartMenuIdentitySubTitle0
	
	local ClanTag = LUI.UIText.new()
	ClanTag:setLeftRight( true, true, 0, 0 )
	ClanTag:setTopBottom( false, false, -16, 9 )
	ClanTag:setText( Engine.Localize( "MENU_NEW" ) )
	ClanTag:setTTF( "fonts/escom.ttf" )
	ClanTag:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	ClanTag:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	self:addElement( ClanTag )
	self.ClanTag = ClanTag
	
	local FocusBarB = CoD.FE_FocusBarContainer.new( menu, controller )
	FocusBarB:setLeftRight( true, true, 0, 0 )
	FocusBarB:setTopBottom( false, true, -4, 0 )
	FocusBarB:setAlpha( 0 )
	FocusBarB:setZoom( 1 )
	self:addElement( FocusBarB )
	self.FocusBarB = FocusBarB
	
	local FocusBarT = CoD.FE_FocusBarContainer.new( menu, controller )
	FocusBarT:setLeftRight( true, true, 0, 0 )
	FocusBarT:setTopBottom( true, false, -1, 3 )
	FocusBarT:setAlpha( 0 )
	FocusBarT:setZoom( 1 )
	self:addElement( FocusBarT )
	self.FocusBarT = FocusBarT
	
	local lockedIcon = CoD.cac_lock.new( menu, controller )
	lockedIcon:setLeftRight( false, false, -16, 16 )
	lockedIcon:setTopBottom( false, false, -17.5, 14.5 )
	lockedIcon.lockedIcon:setAlpha( 0.56 )
	self:addElement( lockedIcon )
	self.lockedIcon = lockedIcon
	
	local StartMenuOnlineOnly = CoD.StartMenu_OnlineOnly.new( menu, controller )
	StartMenuOnlineOnly:setLeftRight( false, false, -47.5, 47.5 )
	StartMenuOnlineOnly:setTopBottom( false, false, -16.5, 11.5 )
	StartMenuOnlineOnly:setScale( 0.9 )
	StartMenuOnlineOnly.TextBox0:setText( LocalizeToUpperString( "MENU_ONLINE_ONLY" ) )
	self:addElement( StartMenuOnlineOnly )
	self.StartMenuOnlineOnly = StartMenuOnlineOnly
	
	self.clipsPerState = {
		DefaultState = {
			DefaultClip = function ()
				self:setupElementClipCounter( 12 )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.4 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				ImageText:completeAnimation()
				self.ImageText:setAlpha( 1 )
				self.clipFinished( ImageText, {} )

				ImageContainer:completeAnimation()

				ImageContainer.ImageContainer:completeAnimation()
				self.ImageContainer.ImageContainer:setAlpha( 0.79 )
				self.clipFinished( ImageContainer, {} )

				LockBackground:completeAnimation()
				self.LockBackground:setAlpha( 0.05 )
				self.clipFinished( LockBackground, {} )

				TitleBg:completeAnimation()
				self.TitleBg:setAlpha( 0 )
				self.clipFinished( TitleBg, {} )

				LOCKBlackCircle:completeAnimation()
				self.LOCKBlackCircle:setAlpha( 0 )
				self.clipFinished( LOCKBlackCircle, {} )

				StartMenuIdentitySubTitle0:completeAnimation()
				self.StartMenuIdentitySubTitle0:setAlpha( 1 )
				self.clipFinished( StartMenuIdentitySubTitle0, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )

				lockedIcon:completeAnimation()

				lockedIcon.lockedIcon:completeAnimation()
				self.lockedIcon:setAlpha( 0 )
				self.lockedIcon.lockedIcon:setAlpha( 0.56 )
				self.clipFinished( lockedIcon, {} )

				StartMenuOnlineOnly:completeAnimation()
				self.StartMenuOnlineOnly:setAlpha( 0 )
				self.clipFinished( StartMenuOnlineOnly, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 10 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.7 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				ImageContainer:completeAnimation()

				ImageContainer.ImageContainer:completeAnimation()
				self.ImageContainer.ImageContainer:setAlpha( 1 )
				self.clipFinished( ImageContainer, {} )

				LockBackground:completeAnimation()
				self.LockBackground:setAlpha( 0 )
				self.clipFinished( LockBackground, {} )

				TitleBg:completeAnimation()
				self.TitleBg:setAlpha( 0 )
				self.clipFinished( TitleBg, {} )

				LOCKBlackCircle:completeAnimation()
				self.LOCKBlackCircle:setAlpha( 0 )
				self.clipFinished( LOCKBlackCircle, {} )

				StartMenuIdentitySubTitle0:completeAnimation()
				self.StartMenuIdentitySubTitle0:setAlpha( 1 )
				self.clipFinished( StartMenuIdentitySubTitle0, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )

				lockedIcon:completeAnimation()
				self.lockedIcon:setAlpha( 0 )
				self.clipFinished( lockedIcon, {} )

				StartMenuOnlineOnly:completeAnimation()
				self.StartMenuOnlineOnly:setAlpha( 0 )
				self.clipFinished( StartMenuOnlineOnly, {} )
			end
		},
		Disabled = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.4 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				LockBackground:completeAnimation()
				self.LockBackground:setAlpha( 0.1 )
				self.clipFinished( LockBackground, {} )

				TitleBg:completeAnimation()
				self.TitleBg:setAlpha( 0.4 )
				self.clipFinished( TitleBg, {} )

				LOCKBlackCircle:completeAnimation()
				self.LOCKBlackCircle:setAlpha( 0.3 )
				self.clipFinished( LOCKBlackCircle, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )

				lockedIcon:completeAnimation()
				self.lockedIcon:setAlpha( 1 )
				self.clipFinished( lockedIcon, {} )

				StartMenuOnlineOnly:completeAnimation()
				self.StartMenuOnlineOnly:setAlpha( 0 )
				self.clipFinished( StartMenuOnlineOnly, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 8 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.7 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				LockBackground:completeAnimation()
				self.LockBackground:setAlpha( 0 )
				self.clipFinished( LockBackground, {} )

				TitleBg:completeAnimation()
				self.TitleBg:setAlpha( 0.4 )
				self.clipFinished( TitleBg, {} )

				LOCKBlackCircle:completeAnimation()
				self.LOCKBlackCircle:setAlpha( 0.3 )
				self.clipFinished( LOCKBlackCircle, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )

				lockedIcon:completeAnimation()
				self.lockedIcon:setAlpha( 1 )
				self.clipFinished( lockedIcon, {} )

				StartMenuOnlineOnly:completeAnimation()
				self.StartMenuOnlineOnly:setAlpha( 0 )
				self.clipFinished( StartMenuOnlineOnly, {} )
			end
		},
		OnlineOnly = {
			DefaultClip = function ()
				self:setupElementClipCounter( 12 )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0.01 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.4 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				ImageText:completeAnimation()
				self.ImageText:setAlpha( 1 )
				self.clipFinished( ImageText, {} )

				ImageContainer:completeAnimation()

				ImageContainer.ImageContainer:completeAnimation()
				self.ImageContainer:setAlpha( 1 )
				self.ImageContainer.ImageContainer:setAlpha( 0.79 )
				self.clipFinished( ImageContainer, {} )

				LockBackground:completeAnimation()
				self.LockBackground:setAlpha( 0.1 )
				self.clipFinished( LockBackground, {} )

				TitleBg:completeAnimation()
				self.TitleBg:setAlpha( 0 )
				self.clipFinished( TitleBg, {} )

				LOCKBlackCircle:completeAnimation()
				self.LOCKBlackCircle:setAlpha( 0 )
				self.clipFinished( LOCKBlackCircle, {} )

				StartMenuIdentitySubTitle0:completeAnimation()
				self.StartMenuIdentitySubTitle0:setAlpha( 1 )
				self.clipFinished( StartMenuIdentitySubTitle0, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )

				lockedIcon:completeAnimation()

				lockedIcon.lockedIcon:completeAnimation()
				self.lockedIcon:setAlpha( 0 )
				self.lockedIcon.lockedIcon:setAlpha( 0.56 )
				self.clipFinished( lockedIcon, {} )

				StartMenuOnlineOnly:completeAnimation()

				StartMenuOnlineOnly.TextBox0:completeAnimation()
				self.StartMenuOnlineOnly:setAlpha( 1 )
				self.StartMenuOnlineOnly.TextBox0:setText( LocalizeToUpperString( "MENU_ONLINE_ONLY" ) )
				self.clipFinished( StartMenuOnlineOnly, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 10 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.7 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				ImageContainer:completeAnimation()

				ImageContainer.ImageContainer:completeAnimation()
				self.ImageContainer:setAlpha( 1 )
				self.ImageContainer.ImageContainer:setAlpha( 1 )
				self.clipFinished( ImageContainer, {} )

				LockBackground:completeAnimation()
				self.LockBackground:setAlpha( 0.05 )
				self.clipFinished( LockBackground, {} )

				TitleBg:completeAnimation()
				self.TitleBg:setAlpha( 0 )
				self.clipFinished( TitleBg, {} )

				LOCKBlackCircle:completeAnimation()
				self.LOCKBlackCircle:setAlpha( 0 )
				self.clipFinished( LOCKBlackCircle, {} )

				StartMenuIdentitySubTitle0:completeAnimation()
				self.StartMenuIdentitySubTitle0:setAlpha( 1 )
				self.clipFinished( StartMenuIdentitySubTitle0, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )

				lockedIcon:completeAnimation()
				self.lockedIcon:setAlpha( 0 )
				self.clipFinished( lockedIcon, {} )

				StartMenuOnlineOnly:completeAnimation()
				self.StartMenuOnlineOnly:setAlpha( 1 )
				self.clipFinished( StartMenuOnlineOnly, {} )
			end
		},
		Hidden = {
			DefaultClip = function ()
				self:setupElementClipCounter( 13 )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				ImageText:completeAnimation()
				self.ImageText:setAlpha( 0 )
				self.clipFinished( ImageText, {} )

				ImageContainer:completeAnimation()
				self.ImageContainer:setAlpha( 0 )
				self.clipFinished( ImageContainer, {} )

				LockBackground:completeAnimation()
				self.LockBackground:setAlpha( 0 )
				self.clipFinished( LockBackground, {} )

				TitleBg:completeAnimation()
				self.TitleBg:setAlpha( 0 )
				self.clipFinished( TitleBg, {} )

				LOCKBlackCircle:completeAnimation()
				self.LOCKBlackCircle:setAlpha( 0 )
				self.clipFinished( LOCKBlackCircle, {} )

				StartMenuIdentitySubTitle0:completeAnimation()
				self.StartMenuIdentitySubTitle0:setAlpha( 0 )
				self.clipFinished( StartMenuIdentitySubTitle0, {} )

				ClanTag:completeAnimation()
				self.ClanTag:setAlpha( 0 )
				self.clipFinished( ClanTag, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )

				lockedIcon:completeAnimation()
				self.lockedIcon:setAlpha( 0 )
				self.clipFinished( lockedIcon, {} )

				StartMenuOnlineOnly:completeAnimation()
				self.StartMenuOnlineOnly:setAlpha( 0 )
				self.clipFinished( StartMenuOnlineOnly, {} )
			end
		},
		ComingSoon = {
			DefaultClip = function ()
				self:setupElementClipCounter( 12 )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0.01 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.4 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				ImageText:completeAnimation()
				self.ImageText:setAlpha( 1 )
				self.clipFinished( ImageText, {} )

				ImageContainer:completeAnimation()

				ImageContainer.ImageContainer:completeAnimation()
				self.ImageContainer:setAlpha( 1 )
				self.ImageContainer.ImageContainer:setAlpha( 0.79 )
				self.clipFinished( ImageContainer, {} )

				LockBackground:completeAnimation()
				self.LockBackground:setAlpha( 0.1 )
				self.clipFinished( LockBackground, {} )

				TitleBg:completeAnimation()
				self.TitleBg:setAlpha( 0 )
				self.clipFinished( TitleBg, {} )

				LOCKBlackCircle:completeAnimation()
				self.LOCKBlackCircle:setAlpha( 0 )
				self.clipFinished( LOCKBlackCircle, {} )

				StartMenuIdentitySubTitle0:completeAnimation()
				self.StartMenuIdentitySubTitle0:setAlpha( 1 )
				self.clipFinished( StartMenuIdentitySubTitle0, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )

				lockedIcon:completeAnimation()

				lockedIcon.lockedIcon:completeAnimation()
				self.lockedIcon:setAlpha( 0 )
				self.lockedIcon.lockedIcon:setAlpha( 0.56 )
				self.clipFinished( lockedIcon, {} )

				StartMenuOnlineOnly:completeAnimation()

				StartMenuOnlineOnly.TextBox0:completeAnimation()
				self.StartMenuOnlineOnly:setAlpha( 1 )
				self.StartMenuOnlineOnly.TextBox0:setText( LocalizeToUpperString( "MENU_COMING_SOON" ) )
				self.clipFinished( StartMenuOnlineOnly, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 10 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.7 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				ImageContainer:completeAnimation()

				ImageContainer.ImageContainer:completeAnimation()
				self.ImageContainer:setAlpha( 1 )
				self.ImageContainer.ImageContainer:setAlpha( 1 )
				self.clipFinished( ImageContainer, {} )

				LockBackground:completeAnimation()
				self.LockBackground:setAlpha( 0 )
				self.clipFinished( LockBackground, {} )

				TitleBg:completeAnimation()
				self.TitleBg:setAlpha( 0 )
				self.clipFinished( TitleBg, {} )

				LOCKBlackCircle:completeAnimation()
				self.LOCKBlackCircle:setAlpha( 0 )
				self.clipFinished( LOCKBlackCircle, {} )

				StartMenuIdentitySubTitle0:completeAnimation()
				self.StartMenuIdentitySubTitle0:setAlpha( 1 )
				self.clipFinished( StartMenuIdentitySubTitle0, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )

				lockedIcon:completeAnimation()
				self.lockedIcon:setAlpha( 0 )
				self.clipFinished( lockedIcon, {} )

				StartMenuOnlineOnly:completeAnimation()
				self.StartMenuOnlineOnly:setAlpha( 1 )
				self.clipFinished( StartMenuOnlineOnly, {} )
			end
		},
		NotAvailableInGame = {
			DefaultClip = function ()
				self:setupElementClipCounter( 12 )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0.01 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.4 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				ImageText:completeAnimation()
				self.ImageText:setAlpha( 1 )
				self.clipFinished( ImageText, {} )

				ImageContainer:completeAnimation()

				ImageContainer.ImageContainer:completeAnimation()
				self.ImageContainer:setAlpha( 1 )
				self.ImageContainer.ImageContainer:setAlpha( 0.79 )
				self.clipFinished( ImageContainer, {} )

				LockBackground:completeAnimation()
				self.LockBackground:setAlpha( 0.1 )
				self.clipFinished( LockBackground, {} )

				TitleBg:completeAnimation()
				self.TitleBg:setAlpha( 0 )
				self.clipFinished( TitleBg, {} )

				LOCKBlackCircle:completeAnimation()
				self.LOCKBlackCircle:setAlpha( 0 )
				self.clipFinished( LOCKBlackCircle, {} )

				StartMenuIdentitySubTitle0:completeAnimation()
				self.StartMenuIdentitySubTitle0:setAlpha( 1 )
				self.clipFinished( StartMenuIdentitySubTitle0, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )

				lockedIcon:completeAnimation()

				lockedIcon.lockedIcon:completeAnimation()
				self.lockedIcon:setAlpha( 0 )
				self.lockedIcon.lockedIcon:setAlpha( 0.56 )
				self.clipFinished( lockedIcon, {} )

				StartMenuOnlineOnly:completeAnimation()

				StartMenuOnlineOnly.TextBox0:completeAnimation()
				self.StartMenuOnlineOnly:setAlpha( 1 )
				self.StartMenuOnlineOnly.TextBox0:setText( LocalizeToUpperString( "MENU_NOT_AVAILABLE_IN_GAME" ) )
				self.clipFinished( StartMenuOnlineOnly, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 10 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.7 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				ImageContainer:completeAnimation()

				ImageContainer.ImageContainer:completeAnimation()
				self.ImageContainer:setAlpha( 1 )
				self.ImageContainer.ImageContainer:setAlpha( 1 )
				self.clipFinished( ImageContainer, {} )

				LockBackground:completeAnimation()
				self.LockBackground:setAlpha( 0 )
				self.clipFinished( LockBackground, {} )

				TitleBg:completeAnimation()
				self.TitleBg:setAlpha( 0 )
				self.clipFinished( TitleBg, {} )

				LOCKBlackCircle:completeAnimation()
				self.LOCKBlackCircle:setAlpha( 0 )
				self.clipFinished( LOCKBlackCircle, {} )

				StartMenuIdentitySubTitle0:completeAnimation()
				self.StartMenuIdentitySubTitle0:setAlpha( 1 )
				self.clipFinished( StartMenuIdentitySubTitle0, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )

				lockedIcon:completeAnimation()
				self.lockedIcon:setAlpha( 0 )
				self.clipFinished( lockedIcon, {} )

				StartMenuOnlineOnly:completeAnimation()

				StartMenuOnlineOnly.TextBox0:completeAnimation()
				self.StartMenuOnlineOnly:setAlpha( 1 )
				self.StartMenuOnlineOnly.TextBox0:setText( LocalizeToUpperString( "MENU_NOT_AVAILABLE_IN_GAME" ) )
				self.clipFinished( StartMenuOnlineOnly, {} )
			end
		}
	}

	self:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "OnlineOnly",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "ComingSoon",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "NotAvailableInGame",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} )
	StartMenuOnlineOnly.id = "StartMenuOnlineOnly"

	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.BoxButtonLrgInactiveDiag:close()
		element.BoxButtonLrgInactive:close()
		element.ImageContainer:close()
		element.StartMenuIdentitySubTitle0:close()
		element.FocusBarB:close()
		element.FocusBarT:close()
		element.lockedIcon:close()
		element.StartMenuOnlineOnly:close()
	end )
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
