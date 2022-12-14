-- f55f34290db7120990341689732e8e19
-- This hash is used for caching, delete to decompile the file again

CoD.ChargerShot_Active_Center = InheritFrom( LUI.UIElement )
CoD.ChargerShot_Active_Center.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.ChargerShot_Active_Center )
	self.id = "ChargerShot_Active_Center"
	self.soundSet = "ChooseDecal"
	self:setLeftRight( true, false, 0, 72 )
	self:setTopBottom( true, false, 0, 72 )
	
	local Image0 = LUI.UIImage.new()
	Image0:setLeftRight( true, true, 0, 0 )
	Image0:setTopBottom( true, true, 0, 0 )
	Image0:setImage( RegisterImage( "uie_t7_hud_chargeshot_active_center" ) )
	self:addElement( Image0 )
	self.Image0 = Image0
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
