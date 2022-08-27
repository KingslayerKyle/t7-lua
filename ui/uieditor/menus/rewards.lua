-- d682bb1553d8066e6ed3f28da6e66f8a
-- This hash is used for caching, delete to decompile the file again

require( "ui.uieditor.menus.AfterActionReportMenu" )
require( "ui.uieditor.widgets.MenuSpecificWidgets.RewardsListWidget" )

local PostLoadFunc = function ( f1_arg0 )
	f1_arg0.rewardsList:processEvent( {
		name = "gain_focus",
		controller = controller
	} )
end

LUI.createMenu.Rewards = function ( controller )
	local self = CoD.Menu.NewForUIEditor( "Rewards" )
	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end
	self.soundSet = "default"
	self:setOwner( controller )
	self:setLeftRight( true, true, 0, 0 )
	self:setTopBottom( true, true, 0, 0 )
	self:playSound( "menu_open", controller )
	self.buttonModel = Engine.CreateModel( Engine.GetModelForController( controller ), "Rewards.buttonPrompts" )
	local f2_local1 = self
	self.anyChildUsesUpdateState = true
	
	local background = LUI.UIImage.new()
	background:setLeftRight( true, true, 0, 0 )
	background:setTopBottom( true, true, 0, 0 )
	background:setRGB( 0, 0, 0 )
	self:addElement( background )
	self.background = background
	
	local background2 = LUI.UIImage.new()
	background2:setLeftRight( true, true, 0, 0 )
	background2:setTopBottom( false, false, -232, 248 )
	background2:setRGB( 0.21, 0.21, 0.21 )
	self:addElement( background2 )
	self.background2 = background2
	
	local titleLabel = LUI.UITightText.new()
	titleLabel:setLeftRight( true, false, 191, 325 )
	titleLabel:setTopBottom( true, false, 150, 198 )
	titleLabel:setText( Engine.Localize( "MPUI_REWARDS_CAPS" ) )
	titleLabel:setTTF( "fonts/default.ttf" )
	self:addElement( titleLabel )
	self.titleLabel = titleLabel
	
	local itemNameLabel = LUI.UITightText.new()
	itemNameLabel:setLeftRight( true, false, 191, 277 )
	itemNameLabel:setTopBottom( true, false, 442.5, 472.5 )
	itemNameLabel:setTTF( "fonts/default.ttf" )
	self:addElement( itemNameLabel )
	self.itemNameLabel = itemNameLabel
	
	local itemDescLabel = LUI.UITightText.new()
	itemDescLabel:setLeftRight( true, false, 191, 723 )
	itemDescLabel:setTopBottom( true, false, 472.5, 497.5 )
	itemDescLabel:setAlpha( 0 )
	itemDescLabel:setTTF( "fonts/default.ttf" )
	self:addElement( itemDescLabel )
	self.itemDescLabel = itemDescLabel
	
	local itemDesc2Label = LUI.UITightText.new()
	itemDesc2Label:setLeftRight( true, false, 191, 489 )
	itemDesc2Label:setTopBottom( true, false, 497.5, 522.5 )
	itemDesc2Label:setRGB( 0.61, 0.61, 0.61 )
	itemDesc2Label:setTTF( "fonts/default.ttf" )
	self:addElement( itemDesc2Label )
	self.itemDesc2Label = itemDesc2Label
	
	local missionStatusLabel = LUI.UITightText.new()
	missionStatusLabel:setLeftRight( true, false, 793, 855 )
	missionStatusLabel:setTopBottom( true, false, 167, 192 )
	missionStatusLabel:setRGB( 0.22, 0.76, 0.32 )
	missionStatusLabel:setTTF( "fonts/default.ttf" )
	self:addElement( missionStatusLabel )
	self.missionStatusLabel = missionStatusLabel
	
	local gameTypeLabel = LUI.UITightText.new()
	gameTypeLabel:setLeftRight( true, false, 941, 1017 )
	gameTypeLabel:setTopBottom( true, false, 167, 192 )
	gameTypeLabel:setText( Engine.Localize( "MPUI_SABOTAGE_CAPS" ) )
	gameTypeLabel:setTTF( "fonts/default.ttf" )
	self:addElement( gameTypeLabel )
	self.gameTypeLabel = gameTypeLabel
	
	local locationLabel = LUI.UITightText.new()
	locationLabel:setLeftRight( false, true, -248, -100 )
	locationLabel:setTopBottom( true, false, 171, 191 )
	locationLabel:setText( Engine.Localize( "CPUI_CP_HUB_SING_HILLTOP_PARK_C" ) )
	locationLabel:setTTF( "fonts/default.ttf" )
	self:addElement( locationLabel )
	self.locationLabel = locationLabel
	
	local rewardsList = LUI.UIList.new( f2_local1, controller, 25, 0, nil, false, false, 0, 0, false, true )
	rewardsList:makeFocusable()
	rewardsList:setLeftRight( true, false, 186, 1571 )
	rewardsList:setTopBottom( true, false, 218, 428 )
	rewardsList:setDataSource( "Rewards" )
	rewardsList:setWidgetType( CoD.RewardsListWidget )
	rewardsList:setHorizontalCount( 6 )
	rewardsList:setSpacing( 25 )
	self:addElement( rewardsList )
	self.rewardsList = rewardsList
	
	itemNameLabel:linkToElementModel( rewardsList, "rewardName", true, function ( model )
		local rewardName = Engine.GetModelValue( model )
		if rewardName then
			itemNameLabel:setText( Engine.Localize( rewardName ) )
		end
	end )
	itemDescLabel:linkToElementModel( rewardsList, "rewardDesc1", true, function ( model )
		local rewardDesc1 = Engine.GetModelValue( model )
		if rewardDesc1 then
			itemDescLabel:setText( Engine.Localize( rewardDesc1 ) )
		end
	end )
	itemDesc2Label:linkToElementModel( rewardsList, "rewardDesc2", true, function ( model )
		local rewardDesc2 = Engine.GetModelValue( model )
		if rewardDesc2 then
			itemDesc2Label:setText( Engine.Localize( rewardDesc2 ) )
		end
	end )
	self.missionStatusLabel:linkToElementModel( self, "matchResult", true, function ( model )
		local matchResult = Engine.GetModelValue( model )
		if matchResult then
			missionStatusLabel:setText( Engine.Localize( matchResult ) )
		end
	end )
	f2_local1:AddButtonCallbackFunction( self, controller, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", function ( f7_arg0, f7_arg1, f7_arg2, f7_arg3 )
		NavigateToMenu( self, "AfterActionReportMenu", false, f7_arg2 )
		return true
	end, function ( f8_arg0, f8_arg1, f8_arg2 )
		CoD.Menu.SetButtonLabel( f8_arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_CONTINUE" )
		return true
	end, false )
	rewardsList.id = "rewardsList"
	self:processEvent( {
		name = "menu_loaded",
		controller = controller
	} )
	self:processEvent( {
		name = "update_state",
		menu = f2_local1
	} )
	if not self:restoreState() then
		self.rewardsList:processEvent( {
			name = "gain_focus",
			controller = controller
		} )
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.rewardsList:close()
		element.itemNameLabel:close()
		element.itemDescLabel:close()
		element.itemDesc2Label:close()
		element.missionStatusLabel:close()
		Engine.UnsubscribeAndFreeModel( Engine.GetModel( Engine.GetModelForController( controller ), "Rewards.buttonPrompts" ) )
	end )
	if PostLoadFunc then
		PostLoadFunc( self, controller )
	end
	
	return self
end

