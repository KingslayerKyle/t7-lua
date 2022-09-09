-- 917c5b32335bb7bd3b78e3a76e80b244
-- This hash is used for caching, delete to decompile the file again

require( "ui.uieditor.widgets.button" )

CoD.ConfirmationDialog = InheritFrom( LUI.UIElement )
CoD.ConfirmationDialog.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( true )
	self:setClass( CoD.ConfirmationDialog )
	self.id = "ConfirmationDialog"
	self.soundSet = "default"
	self:setLeftRight( true, false, 0, 654 )
	self:setTopBottom( true, false, 0, 361 )
	self:makeFocusable()
	self.onlyChildrenFocusable = true
	self.anyChildUsesUpdateState = true
	
	local Title = LUI.UIText.new()
	Title:setLeftRight( true, false, 0, 500 )
	Title:setTopBottom( true, false, 0, 39 )
	Title:setText( Engine.Localize( "MENU_CONTINUE_RESTART_CHECKPOINT" ) )
	Title:setTTF( "fonts/default.ttf" )
	Title:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_LEFT )
	Title:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	self:addElement( Title )
	self.Title = Title
	
	local TextBox0 = LUI.UIText.new()
	TextBox0:setLeftRight( true, false, 0, 654 )
	TextBox0:setTopBottom( true, false, 43.95, 79.95 )
	TextBox0:setText( Engine.Localize( "MENU_CHECKPOINT_RESTART_TEXT" ) )
	TextBox0:setTTF( "fonts/default.ttf" )
	TextBox0:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_LEFT )
	TextBox0:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	self:addElement( TextBox0 )
	self.TextBox0 = TextBox0
	
	local Resume = CoD.button.new( menu, controller )
	Resume:setLeftRight( true, false, 0, 250 )
	Resume:setTopBottom( true, false, 331.3, 361.3 )
	Resume.buttoninternal0.Text0:setText( Engine.Localize( "MENU_RESUMEGAME_CAPS" ) )
	Resume:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil
		if element.gainFocus then
			f2_local0 = element:gainFocus( event )
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event )
		end
		CoD.Menu.UpdateButtonShownState( element, menu, controller, Enum.LUIButton.LUI_KEY_XBA_PSCROSS )
		return f2_local0
	end )
	Resume:registerEventHandler( "lose_focus", function ( element, event )
		local f3_local0 = nil
		if element.loseFocus then
			f3_local0 = element:loseFocus( event )
		elseif element.super.loseFocus then
			f3_local0 = element.super:loseFocus( event )
		end
		return f3_local0
	end )
	menu:AddButtonCallbackFunction( Resume, controller, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", function ( f4_arg0, f4_arg1, f4_arg2, f4_arg3 )
		SetResponseNo( self, f4_arg2 )
		return true
	end, function ( f5_arg0, f5_arg1, f5_arg2 )
		CoD.Menu.SetButtonLabel( f5_arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT" )
		return true
	end, false )
	self:addElement( Resume )
	self.Resume = Resume
	
	local Restart = CoD.button.new( menu, controller )
	Restart:setLeftRight( true, false, 0, 250 )
	Restart:setTopBottom( true, false, 301.3, 331.3 )
	Restart.buttoninternal0.Text0:setText( Engine.Localize( "MENU_RESTART_CHECKPOINT_CAPS" ) )
	Restart:registerEventHandler( "gain_focus", function ( element, event )
		local f6_local0 = nil
		if element.gainFocus then
			f6_local0 = element:gainFocus( event )
		elseif element.super.gainFocus then
			f6_local0 = element.super:gainFocus( event )
		end
		CoD.Menu.UpdateButtonShownState( element, menu, controller, Enum.LUIButton.LUI_KEY_XBA_PSCROSS )
		return f6_local0
	end )
	Restart:registerEventHandler( "lose_focus", function ( element, event )
		local f7_local0 = nil
		if element.loseFocus then
			f7_local0 = element:loseFocus( event )
		elseif element.super.loseFocus then
			f7_local0 = element.super:loseFocus( event )
		end
		return f7_local0
	end )
	menu:AddButtonCallbackFunction( Restart, controller, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", function ( f8_arg0, f8_arg1, f8_arg2, f8_arg3 )
		SetResponseYes( self, f8_arg2 )
		return true
	end, function ( f9_arg0, f9_arg1, f9_arg2 )
		CoD.Menu.SetButtonLabel( f9_arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT" )
		return true
	end, false )
	self:addElement( Restart )
	self.Restart = Restart
	
	Resume.navigation = {
		up = Restart
	}
	Restart.navigation = {
		down = Resume
	}
	CoD.Menu.AddNavigationHandler( menu, self, controller )
	Resume.id = "Resume"
	Restart.id = "Restart"
	self:registerEventHandler( "gain_focus", function ( element, event )
		if element.m_focusable and element.Resume:processEvent( event ) then
			return true
		else
			return LUI.UIElement.gainFocus( element, event )
		end
	end )

	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.Resume:close()
		element.Restart:close()
	end )
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
