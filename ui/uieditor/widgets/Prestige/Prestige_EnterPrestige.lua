-- 94b8fd4fd7c7bb2afad78eb21853f4f5
-- This hash is used for caching, delete to decompile the file again

require( "ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive" )
require( "ui.uieditor.widgets.CAC.cac_lock" )
require( "ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer" )
require( "ui.uieditor.widgets.Prestige.Prestige_Button_Title" )

CoD.Prestige_EnterPrestige = InheritFrom( LUI.UIElement )
CoD.Prestige_EnterPrestige.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.Prestige_EnterPrestige )
	self.id = "Prestige_EnterPrestige"
	self.soundSet = "ChooseDecal"
	self:setLeftRight( true, false, 0, 752 )
	self:setTopBottom( true, false, 0, 276 )
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
	
	local BlackBox = LUI.UIImage.new()
	BlackBox:setLeftRight( true, true, 3, -3 )
	BlackBox:setTopBottom( true, true, 2, -4 )
	BlackBox:setRGB( 0, 0, 0 )
	BlackBox:setAlpha( 0.05 )
	self:addElement( BlackBox )
	self.BlackBox = BlackBox
	
	local LockIcon = CoD.cac_lock.new( menu, controller )
	LockIcon:setLeftRight( false, false, -64, 64 )
	LockIcon:setTopBottom( false, false, -82, 46 )
	LockIcon:setAlpha( 0 )
	LockIcon.lockedIcon:setAlpha( 0 )
	self:addElement( LockIcon )
	self.LockIcon = LockIcon
	
	local LockedHint = LUI.UIText.new()
	LockedHint:setLeftRight( false, false, -175, 175 )
	LockedHint:setTopBottom( false, false, 35, 52 )
	LockedHint:setRGB( 0.67, 0.67, 0.67 )
	LockedHint:setAlpha( 0 )
	LockedHint:setText( Engine.Localize( GetPrestigeUnlockText( "MENU_PRESTIGE_MODE_LOCKED_HINT" ) ) )
	LockedHint:setTTF( "fonts/escom.ttf" )
	LockedHint:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	LockedHint:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	self:addElement( LockedHint )
	self.LockedHint = LockedHint
	
	local PrestigeIcon = LUI.UIImage.new()
	PrestigeIcon:setLeftRight( true, false, 29, 209 )
	PrestigeIcon:setTopBottom( true, false, 27, 207 )
	self:addElement( PrestigeIcon )
	self.PrestigeIcon = PrestigeIcon
	
	local PrestigeCallingCard = LUI.UIImage.new()
	PrestigeCallingCard:setLeftRight( false, true, -440, -104 )
	PrestigeCallingCard:setTopBottom( true, false, 78, 162 )
	self:addElement( PrestigeCallingCard )
	self.PrestigeCallingCard = PrestigeCallingCard
	
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
	
	local PrestigeButtonTitle = CoD.Prestige_Button_Title.new( menu, controller )
	PrestigeButtonTitle:setLeftRight( true, false, 5, 361 )
	PrestigeButtonTitle:setTopBottom( false, true, -31, -5 )
	PrestigeButtonTitle.FEButtonPanel0:setAlpha( 0.4 )
	PrestigeButtonTitle.ButtonTitle:setText( Engine.Localize( "MENU_PRESTIGE_ENTER_LEVEL" ) )
	self:addElement( PrestigeButtonTitle )
	self.PrestigeButtonTitle = PrestigeButtonTitle
	
	self.clipsPerState = {
		DefaultState = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.4 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				BlackBox:completeAnimation()
				self.BlackBox:setAlpha( 0.05 )
				self.clipFinished( BlackBox, {} )

				LockIcon:completeAnimation()
				self.LockIcon:setAlpha( 0 )
				self.clipFinished( LockIcon, {} )

				LockedHint:completeAnimation()
				self.LockedHint:setAlpha( 0 )
				self.clipFinished( LockedHint, {} )

				PrestigeIcon:completeAnimation()
				self.PrestigeIcon:setAlpha( 1 )
				self.clipFinished( PrestigeIcon, {} )

				PrestigeCallingCard:completeAnimation()
				self.PrestigeCallingCard:setAlpha( 1 )
				self.clipFinished( PrestigeCallingCard, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 8 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.7 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				BlackBox:completeAnimation()
				self.BlackBox:setAlpha( 0 )
				self.clipFinished( BlackBox, {} )

				LockIcon:completeAnimation()
				self.LockIcon:setAlpha( 0 )
				self.clipFinished( LockIcon, {} )

				LockedHint:completeAnimation()
				self.LockedHint:setAlpha( 0 )
				self.clipFinished( LockedHint, {} )

				PrestigeIcon:completeAnimation()
				self.PrestigeIcon:setAlpha( 1 )
				self.clipFinished( PrestigeIcon, {} )

				PrestigeCallingCard:completeAnimation()
				self.PrestigeCallingCard:setAlpha( 1 )
				self.clipFinished( PrestigeCallingCard, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setLeftRight( true, true, 0, -2 )
				self.FocusBarT:setTopBottom( true, false, -1, 3 )
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setLeftRight( true, true, 0, -2 )
				self.FocusBarB:setTopBottom( false, true, -3, 1 )
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )
			end
		},
		Locked = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.4 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				BlackBox:completeAnimation()
				self.BlackBox:setAlpha( 0.05 )
				self.clipFinished( BlackBox, {} )

				LockIcon:completeAnimation()
				self.LockIcon:setAlpha( 1 )
				self.clipFinished( LockIcon, {} )

				LockedHint:completeAnimation()
				self.LockedHint:setAlpha( 1 )
				self.clipFinished( LockedHint, {} )

				PrestigeIcon:completeAnimation()
				self.PrestigeIcon:setAlpha( 0 )
				self.clipFinished( PrestigeIcon, {} )

				PrestigeCallingCard:completeAnimation()
				self.PrestigeCallingCard:setAlpha( 0 )
				self.clipFinished( PrestigeCallingCard, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 8 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.7 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				BlackBox:completeAnimation()
				self.BlackBox:setAlpha( 0 )
				self.clipFinished( BlackBox, {} )

				LockIcon:completeAnimation()
				self.LockIcon:setAlpha( 1 )
				self.clipFinished( LockIcon, {} )

				LockedHint:completeAnimation()
				self.LockedHint:setAlpha( 1 )
				self.clipFinished( LockedHint, {} )

				PrestigeIcon:completeAnimation()
				self.PrestigeIcon:setAlpha( 0 )
				self.clipFinished( PrestigeIcon, {} )

				PrestigeCallingCard:completeAnimation()
				self.PrestigeCallingCard:setAlpha( 0 )
				self.clipFinished( PrestigeCallingCard, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )
			end
		},
		PrestigeMasterLocked = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.4 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				BlackBox:completeAnimation()
				self.BlackBox:setAlpha( 0.05 )
				self.clipFinished( BlackBox, {} )

				LockIcon:completeAnimation()
				self.LockIcon:setAlpha( 1 )
				self.clipFinished( LockIcon, {} )

				LockedHint:completeAnimation()
				self.LockedHint:setAlpha( 1 )
				self.clipFinished( LockedHint, {} )

				PrestigeIcon:completeAnimation()
				self.PrestigeIcon:setAlpha( 0 )
				self.clipFinished( PrestigeIcon, {} )

				PrestigeCallingCard:completeAnimation()
				self.PrestigeCallingCard:setAlpha( 0 )
				self.clipFinished( PrestigeCallingCard, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 8 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.7 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				BlackBox:completeAnimation()
				self.BlackBox:setAlpha( 0 )
				self.clipFinished( BlackBox, {} )

				LockIcon:completeAnimation()
				self.LockIcon:setAlpha( 1 )
				self.clipFinished( LockIcon, {} )

				LockedHint:completeAnimation()
				self.LockedHint:setAlpha( 1 )
				self.clipFinished( LockedHint, {} )

				PrestigeIcon:completeAnimation()
				self.PrestigeIcon:setAlpha( 0 )
				self.clipFinished( PrestigeIcon, {} )

				PrestigeCallingCard:completeAnimation()
				self.PrestigeCallingCard:setAlpha( 0 )
				self.clipFinished( PrestigeCallingCard, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )
			end
		},
		DefaultStateZM = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.4 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				BlackBox:completeAnimation()
				self.BlackBox:setAlpha( 0.05 )
				self.clipFinished( BlackBox, {} )

				LockIcon:completeAnimation()
				self.LockIcon:setAlpha( 0 )
				self.clipFinished( LockIcon, {} )

				LockedHint:completeAnimation()
				self.LockedHint:setAlpha( 0 )
				self.clipFinished( LockedHint, {} )

				PrestigeIcon:completeAnimation()
				self.PrestigeIcon:setLeftRight( true, false, 271, 451 )
				self.PrestigeIcon:setTopBottom( true, false, 30, 210 )
				self.PrestigeIcon:setAlpha( 1 )
				self.clipFinished( PrestigeIcon, {} )

				PrestigeCallingCard:completeAnimation()
				self.PrestigeCallingCard:setAlpha( 0 )
				self.clipFinished( PrestigeCallingCard, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 8 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.7 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				BlackBox:completeAnimation()
				self.BlackBox:setAlpha( 0 )
				self.clipFinished( BlackBox, {} )

				LockIcon:completeAnimation()
				self.LockIcon:setAlpha( 0 )
				self.clipFinished( LockIcon, {} )

				LockedHint:completeAnimation()
				self.LockedHint:setAlpha( 0 )
				self.clipFinished( LockedHint, {} )

				PrestigeIcon:completeAnimation()
				self.PrestigeIcon:setLeftRight( true, false, 271, 451 )
				self.PrestigeIcon:setTopBottom( true, false, 30, 210 )
				self.PrestigeIcon:setAlpha( 1 )
				self.clipFinished( PrestigeIcon, {} )

				PrestigeCallingCard:completeAnimation()
				self.PrestigeCallingCard:setAlpha( 0 )
				self.clipFinished( PrestigeCallingCard, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setLeftRight( true, true, 0, -2 )
				self.FocusBarT:setTopBottom( true, false, -1, 3 )
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setLeftRight( true, true, 0, -2 )
				self.FocusBarB:setTopBottom( false, true, -3, 1 )
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )
			end
		}
	}
	PrestigeButtonTitle.id = "PrestigeButtonTitle"
	self:registerEventHandler( "gain_focus", function ( element, event )
		if element.m_focusable and element.PrestigeButtonTitle:processEvent( event ) then
			return true
		else
			return LUI.UIElement.gainFocus( element, event )
		end
	end )

	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.BoxButtonLrgInactive:close()
		element.LockIcon:close()
		element.FocusBarT:close()
		element.FocusBarB:close()
		element.PrestigeButtonTitle:close()
	end )
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
