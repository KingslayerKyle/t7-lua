-- 3cfb4372dc11443a1a14f26715834ba4
-- This hash is used for caching, delete to decompile the file again

CoD.FE_ListSubHeaderPanelShader = InheritFrom( LUI.UIElement )
CoD.FE_ListSubHeaderPanelShader.new = function ( menu, controller )
	local self = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end
	self:setUseStencil( false )
	self:setClass( CoD.FE_ListSubHeaderPanelShader )
	self.id = "FE_ListSubHeaderPanelShader"
	self.soundSet = "default"
	self:setLeftRight( true, false, 0, 32 )
	self:setTopBottom( true, false, 0, 30 )
	
	local Image = LUI.UIImage.new()
	Image:setLeftRight( true, true, -7, 9 )
	Image:setTopBottom( true, true, -1, 1 )
	Image:setImage( RegisterImage( "uie_t7_menu_frontend_listsubheadpanelfull" ) )
	Image:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_scene_blur_pass_1_nineslice" ) )
	Image:setShaderVector( 0, 0.33, 0.12, 0, 0 )
	Image:setShaderVector( 1, 30, 20, 0, 0 )
	Image:setupNineSliceShader( 16, 4 )
	self:addElement( Image )
	self.Image = Image
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end

