-- 56a5966387fa6c8cb232d4837858034c
-- This hash is used for caching, delete to decompile the file again

require( "ui.uieditor.widgets.GenericPopups.DialogBackground" )
require( "ui.uieditor.widgets.button" )

LUI.createMenu.Failure = function ( controller )
	local self = CoD.Menu.NewForUIEditor( "Failure" )
	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end
	self.soundSet = "FrontendMain"
	self:setOwner( controller )
	self:setLeftRight( true, true, 0, 0 )
	self:setTopBottom( true, true, 0, 0 )
	self:playSound( "menu_open", controller )
	self.buttonModel = Engine.CreateModel( Engine.GetModelForController( controller ), "Failure.buttonPrompts" )
	local f1_local1 = self
	self.anyChildUsesUpdateState = true
	
	local DialogBackground0 = CoD.DialogBackground.new( f1_local1, controller )
	DialogBackground0:setLeftRight( true, false, 381.5, 898.5 )
	DialogBackground0:setTopBottom( true, false, 234, 486 )
	self:addElement( DialogBackground0 )
	self.DialogBackground0 = DialogBackground0
	
	local TextBox0 = LUI.UIText.new()
	TextBox0:setLeftRight( true, false, 521, 729 )
	TextBox0:setTopBottom( true, false, 276.05, 312.05 )
	TextBox0:setText( Engine.Localize( "ACCOUNT_LINK_FAIL" ) )
	TextBox0:setTTF( "fonts/default.ttf" )
	TextBox0:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_LEFT )
	TextBox0:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	self:addElement( TextBox0 )
	self.TextBox0 = TextBox0
	
	local button0 = CoD.button.new( f1_local1, controller )
	button0:setLeftRight( true, false, 625, 655 )
	button0:setTopBottom( true, false, 390.52, 420.52 )
	button0.buttoninternal0.Text0:setText( Engine.Localize( "MENU_OK" ) )
	button0:registerEventHandler( "button_action", function ( element, event )
		local f2_local0 = nil
		AccountLink_SetAccountLinkViewed( self, element, controller )
		GoBack( self, controller )
		LobbyBeginPlay( self, event )
		PlaySoundSetSound( self, "action" )
		LoadSaveGameData( self, controller )
		if not f2_local0 then
			f2_local0 = element:dispatchEventToChildren( event )
		end
		return f2_local0
	end )
	self:addElement( button0 )
	self.button0 = button0
	
	button0.id = "button0"
	self:processEvent( {
		name = "menu_loaded",
		controller = controller
	} )
	self:processEvent( {
		name = "update_state",
		menu = f1_local1
	} )
	if not self:restoreState() then
		self.button0:processEvent( {
			name = "gain_focus",
			controller = controller
		} )
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.DialogBackground0:close()
		element.button0:close()
		Engine.UnsubscribeAndFreeModel( Engine.GetModel( Engine.GetModelForController( controller ), "Failure.buttonPrompts" ) )
	end )
	if PostLoadFunc then
		PostLoadFunc( self, controller )
	end
	
	return self
end

