-- 2e930c5e9ec3034e34a19076810a6b37
-- This hash is used for caching, delete to decompile the file again

require( "ui.uieditor.widgets.Promo.Promo_ZMHD_ThermometerAndRewards" )
require( "ui.uieditor.widgets.Promo.Promo_ZMHD_CommunityWidget_TitleAndDesc" )

CoD.Promo_ZMHD_CommunityWidget = InheritFrom( LUI.UIElement )
CoD.Promo_ZMHD_CommunityWidget.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.Promo_ZMHD_CommunityWidget )
	self.id = "Promo_ZMHD_CommunityWidget"
	self.soundSet = "default"
	self:setLeftRight( true, false, 0, 1280 )
	self:setTopBottom( true, false, 0, 550 )
	self:makeFocusable()
	self.onlyChildrenFocusable = true
	self.anyChildUsesUpdateState = true
	
	local PromoZMHDThermometerAndRewards = CoD.Promo_ZMHD_ThermometerAndRewards.new( menu, controller )
	PromoZMHDThermometerAndRewards:setLeftRight( true, false, 736.94, 1084.94 )
	PromoZMHDThermometerAndRewards:setTopBottom( true, false, 66.67, 504.67 )
	PromoZMHDThermometerAndRewards:setScale( 0.9 )
	self:addElement( PromoZMHDThermometerAndRewards )
	self.PromoZMHDThermometerAndRewards = PromoZMHDThermometerAndRewards
	
	local RewardsText = LUI.UIText.new()
	RewardsText:setLeftRight( true, false, 720.28, 1135.28 )
	RewardsText:setTopBottom( true, false, 55.67, 77.67 )
	RewardsText:setRGB( 0.22, 0.94, 1 )
	RewardsText:setText( Engine.Localize( "CONTRACT_BGB_CC_REQUIREMENT" ) )
	RewardsText:setTTF( "fonts/FoundryGridnik-Bold.ttf" )
	RewardsText:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_LEFT )
	RewardsText:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	self:addElement( RewardsText )
	self.RewardsText = RewardsText
	
	local TitleAndDesc = CoD.Promo_ZMHD_CommunityWidget_TitleAndDesc.new( menu, controller )
	TitleAndDesc:setLeftRight( true, false, 100, 640 )
	TitleAndDesc:setTopBottom( true, false, 34, 86 )
	TitleAndDesc.title:setText( LocalizeToUpperString( "CONTRACT_COMMUNITY_CONTRACT_ZMHD_TITLE" ) )
	TitleAndDesc.txtDescription:setText( Engine.Localize( "CONTRACT_COMMUNITY_CONTRACT_ZMHD_DESC" ) )
	self:addElement( TitleAndDesc )
	self.TitleAndDesc = TitleAndDesc
	
	PromoZMHDThermometerAndRewards.id = "PromoZMHDThermometerAndRewards"
	self:registerEventHandler( "gain_focus", function ( element, event )
		if element.m_focusable and element.PromoZMHDThermometerAndRewards:processEvent( event ) then
			return true
		else
			return LUI.UIElement.gainFocus( element, event )
		end
	end )

	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.PromoZMHDThermometerAndRewards:close()
		element.TitleAndDesc:close()
	end )
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
