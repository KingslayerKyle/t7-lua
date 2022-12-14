-- f1e7a0060de687948e03fe150f84c25d
-- This hash is used for caching, delete to decompile the file again

require( "ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive" )
require( "ui.uieditor.widgets.StartMenu.StartMenu_ImageContainer" )
require( "ui.uieditor.widgets.CAC.cac_lock" )
require( "ui.uieditor.widgets.StartMenu.StartMenu_Identity_SubTitle" )
require( "ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags" )
require( "ui.uieditor.widgets.StartMenu.StartMenu_OnlineOnly" )
require( "ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer" )

CoD.StartMenu_Button_LG = InheritFrom( LUI.UIElement )
CoD.StartMenu_Button_LG.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.StartMenu_Button_LG )
	self.id = "StartMenu_Button_LG"
	self.soundSet = "ChooseDecal"
	self:setLeftRight( true, false, 0, 362 )
	self:setTopBottom( true, false, 0, 140 )
	self:makeFocusable()
	self:setHandleMouse( true )
	self.anyChildUsesUpdateState = true
	
	local BoxButtonLrgInactive = CoD.cac_ButtonBoxLrgInactive.new( menu, controller )
	BoxButtonLrgInactive:setLeftRight( true, true, -2, 2 )
	BoxButtonLrgInactive:setTopBottom( true, true, -2, 2 )
	BoxButtonLrgInactive:setRGB( 0.87, 0.97, 1 )
	BoxButtonLrgInactive:setAlpha( 0.4 )
	self:addElement( BoxButtonLrgInactive )
	self.BoxButtonLrgInactive = BoxButtonLrgInactive
	
	local ImageContainer = CoD.StartMenu_ImageContainer.new( menu, controller )
	ImageContainer:setLeftRight( true, true, 2, -1 )
	ImageContainer:setTopBottom( true, true, 1, -2.5 )
	self:addElement( ImageContainer )
	self.ImageContainer = ImageContainer
	
	local Title = LUI.UIText.new()
	Title:setLeftRight( true, false, 11.73, 217.73 )
	Title:setTopBottom( false, true, -51, -29 )
	Title:setText( Engine.Localize( "MENU_MULTIPLAYER_CAPS" ) )
	Title:setTTF( "fonts/escom.ttf" )
	Title:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_LEFT )
	Title:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	self:addElement( Title )
	self.Title = Title
	
	local LockBackground = LUI.UIImage.new()
	LockBackground:setLeftRight( true, true, 2, -2 )
	LockBackground:setTopBottom( true, true, 1, -3 )
	LockBackground:setRGB( 0, 0, 0 )
	LockBackground:setAlpha( 0 )
	self:addElement( LockBackground )
	self.LockBackground = LockBackground
	
	local LOCKBlackCircle0 = LUI.UIImage.new()
	LOCKBlackCircle0:setLeftRight( false, false, -22.94, 22 )
	LOCKBlackCircle0:setTopBottom( false, false, -23.94, 21 )
	LOCKBlackCircle0:setRGB( 0, 0, 0 )
	LOCKBlackCircle0:setAlpha( 0.3 )
	LOCKBlackCircle0:setScale( 0.9 )
	LOCKBlackCircle0:setImage( RegisterImage( "uie_t7_core_hud_ammowidget_panelcircle" ) )
	self:addElement( LOCKBlackCircle0 )
	self.LOCKBlackCircle0 = LOCKBlackCircle0
	
	local TitleBg = LUI.UIImage.new()
	TitleBg:setLeftRight( false, false, -178, 179 )
	TitleBg:setTopBottom( false, false, -18.47, 14 )
	TitleBg:setRGB( 0, 0, 0 )
	TitleBg:setAlpha( 0 )
	TitleBg:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_feather_edges" ) )
	TitleBg:setShaderVector( 0, 0.02, 0.02, 0.02, 0.02 )
	self:addElement( TitleBg )
	self.TitleBg = TitleBg
	
	local lockedIcon = CoD.cac_lock.new( menu, controller )
	lockedIcon:setLeftRight( false, false, -16, 16 )
	lockedIcon:setTopBottom( false, false, -18, 14 )
	self:addElement( lockedIcon )
	self.lockedIcon = lockedIcon
	
	local StartMenuIdentitySubTitle0 = CoD.StartMenu_Identity_SubTitle.new( menu, controller )
	StartMenuIdentitySubTitle0:setLeftRight( true, false, 5, 359 )
	StartMenuIdentitySubTitle0:setTopBottom( false, true, -32, -6 )
	StartMenuIdentitySubTitle0.SubTitle:setText( Engine.Localize( "Customize your campaign character" ) )
	StartMenuIdentitySubTitle0.SubTitle:setTTF( "fonts/RefrigeratorDeluxe-Regular.ttf" )
	self:addElement( StartMenuIdentitySubTitle0 )
	self.StartMenuIdentitySubTitle0 = StartMenuIdentitySubTitle0
	
	local ImageText = LUI.UIText.new()
	ImageText:setLeftRight( true, true, 0, 0 )
	ImageText:setTopBottom( true, false, 39, 107 )
	ImageText:setText( Engine.Localize( "" ) )
	ImageText:setTTF( "fonts/RefrigeratorDeluxe-Regular.ttf" )
	ImageText:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	ImageText:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	self:addElement( ImageText )
	self.ImageText = ImageText
	
	local BoxButtonLrgInactiveDiag = CoD.cac_ButtonBoxLrgInactiveDiags.new( menu, controller )
	BoxButtonLrgInactiveDiag:setLeftRight( true, true, 0, -1 )
	BoxButtonLrgInactiveDiag:setTopBottom( true, true, 0, -1 )
	BoxButtonLrgInactiveDiag:setAlpha( 0 )
	self:addElement( BoxButtonLrgInactiveDiag )
	self.BoxButtonLrgInactiveDiag = BoxButtonLrgInactiveDiag
	
	local StartMenuOnlineOnly = CoD.StartMenu_OnlineOnly.new( menu, controller )
	StartMenuOnlineOnly:setLeftRight( false, false, -48, 47 )
	StartMenuOnlineOnly:setTopBottom( false, false, -16.47, 11.53 )
	StartMenuOnlineOnly:setScale( 0.9 )
	StartMenuOnlineOnly.TextBox0:setText( LocalizeToUpperString( "MENU_ONLINE_ONLY" ) )
	self:addElement( StartMenuOnlineOnly )
	self.StartMenuOnlineOnly = StartMenuOnlineOnly
	
	local FocusBarT = CoD.FE_FocusBarContainer.new( menu, controller )
	FocusBarT:setLeftRight( true, true, 0, 0 )
	FocusBarT:setTopBottom( true, false, -1, 3 )
	FocusBarT:setAlpha( 0 )
	FocusBarT:setZoom( 1 )
	self:addElement( FocusBarT )
	self.FocusBarT = FocusBarT
	
	local FocusBarB = CoD.FE_FocusBarContainer.new( menu, controller )
	FocusBarB:setLeftRight( true, true, 0, 0 )
	FocusBarB:setTopBottom( false, true, -3, 1 )
	FocusBarB:setAlpha( 0 )
	FocusBarB:setZoom( 1 )
	self:addElement( FocusBarB )
	self.FocusBarB = FocusBarB
	
	self.clipsPerState = {
		DefaultState = {
			DefaultClip = function ()
				self:setupElementClipCounter( 10 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.4 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				ImageContainer:completeAnimation()

				ImageContainer.ImageContainer:completeAnimation()
				self.ImageContainer.ImageContainer:setAlpha( 0.79 )
				self.clipFinished( ImageContainer, {} )

				LockBackground:completeAnimation()
				self.LockBackground:setAlpha( 0.05 )
				self.clipFinished( LockBackground, {} )

				LOCKBlackCircle0:completeAnimation()
				self.LOCKBlackCircle0:setAlpha( 0 )
				self.clipFinished( LOCKBlackCircle0, {} )

				TitleBg:completeAnimation()
				self.TitleBg:setAlpha( 0 )
				self.clipFinished( TitleBg, {} )

				lockedIcon:completeAnimation()
				self.lockedIcon:setAlpha( 0 )
				self.clipFinished( lockedIcon, {} )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				StartMenuOnlineOnly:completeAnimation()
				self.StartMenuOnlineOnly:setAlpha( 0 )
				self.clipFinished( StartMenuOnlineOnly, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )
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

				LOCKBlackCircle0:completeAnimation()
				self.LOCKBlackCircle0:setAlpha( 0 )
				self.clipFinished( LOCKBlackCircle0, {} )

				TitleBg:completeAnimation()
				self.TitleBg:setAlpha( 0 )
				self.clipFinished( TitleBg, {} )

				lockedIcon:completeAnimation()
				self.lockedIcon:setAlpha( 0 )
				self.clipFinished( lockedIcon, {} )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				StartMenuOnlineOnly:completeAnimation()
				self.StartMenuOnlineOnly:setAlpha( 0 )
				self.clipFinished( StartMenuOnlineOnly, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )
			end
		},
		Disabled = {
			DefaultClip = function ()
				self:setupElementClipCounter( 10 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.4 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				ImageContainer:completeAnimation()

				ImageContainer.ImageContainer:completeAnimation()
				self.ImageContainer.ImageContainer:setAlpha( 0.79 )
				self.clipFinished( ImageContainer, {} )

				LockBackground:completeAnimation()
				self.LockBackground:setAlpha( 0.1 )
				self.clipFinished( LockBackground, {} )

				LOCKBlackCircle0:completeAnimation()
				self.LOCKBlackCircle0:setAlpha( 0 )
				self.clipFinished( LOCKBlackCircle0, {} )

				TitleBg:completeAnimation()
				self.TitleBg:setLeftRight( false, false, -178, 179 )
				self.TitleBg:setTopBottom( false, false, -18.47, 14 )
				self.TitleBg:setAlpha( 0.4 )
				self.clipFinished( TitleBg, {} )

				lockedIcon:completeAnimation()
				self.lockedIcon:setAlpha( 1 )
				self.clipFinished( lockedIcon, {} )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0.5 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				StartMenuOnlineOnly:completeAnimation()
				self.StartMenuOnlineOnly:setAlpha( 0 )
				self.clipFinished( StartMenuOnlineOnly, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )
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

				LOCKBlackCircle0:completeAnimation()
				self.LOCKBlackCircle0:setAlpha( 0 )
				self.clipFinished( LOCKBlackCircle0, {} )

				TitleBg:completeAnimation()
				self.TitleBg:setAlpha( 0.4 )
				self.clipFinished( TitleBg, {} )

				lockedIcon:completeAnimation()
				self.lockedIcon:setAlpha( 0.8 )
				self.clipFinished( lockedIcon, {} )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0.5 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				StartMenuOnlineOnly:completeAnimation()
				self.StartMenuOnlineOnly:setAlpha( 0 )
				self.clipFinished( StartMenuOnlineOnly, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )
			end
		},
		OnlineOnly = {
			DefaultClip = function ()
				self:setupElementClipCounter( 10 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.4 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				ImageContainer:completeAnimation()

				ImageContainer.ImageContainer:completeAnimation()
				self.ImageContainer.ImageContainer:setAlpha( 0.79 )
				self.clipFinished( ImageContainer, {} )

				LockBackground:completeAnimation()
				self.LockBackground:setAlpha( 0.1 )
				self.clipFinished( LockBackground, {} )

				LOCKBlackCircle0:completeAnimation()
				self.LOCKBlackCircle0:setAlpha( 0 )
				self.clipFinished( LOCKBlackCircle0, {} )

				TitleBg:completeAnimation()
				self.TitleBg:setAlpha( 0 )
				self.clipFinished( TitleBg, {} )

				lockedIcon:completeAnimation()
				self.lockedIcon:setAlpha( 0 )
				self.clipFinished( lockedIcon, {} )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				StartMenuOnlineOnly:completeAnimation()

				StartMenuOnlineOnly.TextBox0:completeAnimation()
				self.StartMenuOnlineOnly:setAlpha( 1 )
				self.StartMenuOnlineOnly.TextBox0:setText( LocalizeToUpperString( "MENU_ONLINE_ONLY" ) )
				self.clipFinished( StartMenuOnlineOnly, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 9 )

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

				LOCKBlackCircle0:completeAnimation()
				self.LOCKBlackCircle0:setAlpha( 0 )
				self.clipFinished( LOCKBlackCircle0, {} )

				lockedIcon:completeAnimation()
				self.lockedIcon:setAlpha( 0 )
				self.clipFinished( lockedIcon, {} )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				StartMenuOnlineOnly:completeAnimation()
				self.StartMenuOnlineOnly:setAlpha( 1 )
				self.clipFinished( StartMenuOnlineOnly, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )
			end
		},
		ComingSoon = {
			DefaultClip = function ()
				self:setupElementClipCounter( 10 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.4 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				ImageContainer:completeAnimation()

				ImageContainer.ImageContainer:completeAnimation()
				self.ImageContainer.ImageContainer:setAlpha( 0.79 )
				self.clipFinished( ImageContainer, {} )

				LockBackground:completeAnimation()
				self.LockBackground:setAlpha( 0.1 )
				self.clipFinished( LockBackground, {} )

				LOCKBlackCircle0:completeAnimation()
				self.LOCKBlackCircle0:setAlpha( 0 )
				self.clipFinished( LOCKBlackCircle0, {} )

				TitleBg:completeAnimation()
				self.TitleBg:setAlpha( 0 )
				self.clipFinished( TitleBg, {} )

				lockedIcon:completeAnimation()
				self.lockedIcon:setAlpha( 0 )
				self.clipFinished( lockedIcon, {} )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				StartMenuOnlineOnly:completeAnimation()

				StartMenuOnlineOnly.TextBox0:completeAnimation()
				self.StartMenuOnlineOnly:setAlpha( 1 )
				self.StartMenuOnlineOnly.TextBox0:setText( LocalizeToUpperString( "MENU_COMING_SOON" ) )
				self.clipFinished( StartMenuOnlineOnly, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 9 )

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

				LOCKBlackCircle0:completeAnimation()
				self.LOCKBlackCircle0:setAlpha( 0 )
				self.clipFinished( LOCKBlackCircle0, {} )

				lockedIcon:completeAnimation()
				self.lockedIcon:setAlpha( 0 )
				self.clipFinished( lockedIcon, {} )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				StartMenuOnlineOnly:completeAnimation()
				self.StartMenuOnlineOnly:setAlpha( 1 )
				self.clipFinished( StartMenuOnlineOnly, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )
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
			stateName = "ComingSoon",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} )
	StartMenuOnlineOnly.id = "StartMenuOnlineOnly"
	self:registerEventHandler( "gain_focus", function ( element, event )
		if element.m_focusable and element.StartMenuOnlineOnly:processEvent( event ) then
			return true
		else
			return LUI.UIElement.gainFocus( element, event )
		end
	end )

	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.BoxButtonLrgInactive:close()
		element.ImageContainer:close()
		element.lockedIcon:close()
		element.StartMenuIdentitySubTitle0:close()
		element.BoxButtonLrgInactiveDiag:close()
		element.StartMenuOnlineOnly:close()
		element.FocusBarT:close()
		element.FocusBarB:close()
	end )
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
