-- 46c484e6f7dfec8ff1d0848b044699b6
-- This hash is used for caching, delete to decompile the file again

CoD.vhud_ms_ReticleLineHostUR = InheritFrom( LUI.UIElement )
CoD.vhud_ms_ReticleLineHostUR.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.vhud_ms_ReticleLineHostUR )
	self.id = "vhud_ms_ReticleLineHostUR"
	self.soundSet = "default"
	self:setLeftRight( true, false, 0, 155 )
	self:setTopBottom( true, false, 0, 57 )
	
	local Image0 = LUI.UIImage.new()
	Image0:setLeftRight( true, true, 0, 0 )
	Image0:setTopBottom( true, true, 0, 0 )
	Image0:setRGB( 0.74, 0.94, 0.99 )
	Image0:setAlpha( 0.07 )
	Image0:setZoom( -40 )
	Image0:setImage( RegisterImage( "uie_t7_cp_hud_vehicle_mothership_reticlehost" ) )
	Image0:setMaterial( LUI.UIImage.GetCachedMaterial( "ui_add" ) )
	self:addElement( Image0 )
	self.Image0 = Image0
	
	local msReticleHostUpperR = LUI.UIImage.new()
	msReticleHostUpperR:setLeftRight( true, true, 0, 0 )
	msReticleHostUpperR:setTopBottom( true, true, 0, 0 )
	msReticleHostUpperR:setRGB( 0.74, 0.94, 0.99 )
	msReticleHostUpperR:setAlpha( 0.4 )
	msReticleHostUpperR:setImage( RegisterImage( "uie_t7_cp_hud_vehicle_mothership_reticlehost" ) )
	msReticleHostUpperR:setMaterial( LUI.UIImage.GetCachedMaterial( "ui_add" ) )
	self:addElement( msReticleHostUpperR )
	self.msReticleHostUpperR = msReticleHostUpperR
	
	self.clipsPerState = {
		DefaultState = {
			DefaultClip = function ()
				self:setupElementClipCounter( 0 )
			end,
			StartUp = function ()
				self:setupElementClipCounter( 0 )
			end,
			Zoom = function ()
				self:setupElementClipCounter( 0 )
			end
		},
		Zoom = {
			DefaultClip = function ()
				self:setupElementClipCounter( 0 )
			end,
			DefaultState = function ()
				self:setupElementClipCounter( 0 )
			end
		}
	}
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
