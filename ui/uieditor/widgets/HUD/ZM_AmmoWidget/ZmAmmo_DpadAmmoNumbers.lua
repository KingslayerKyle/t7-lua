-- 8baee47fe4872f1fce91f3a618ac8bfa
-- This hash is used for caching, delete to decompile the file again

CoD.ZmAmmo_DpadAmmoNumbers = InheritFrom( LUI.UIElement )
CoD.ZmAmmo_DpadAmmoNumbers.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.ZmAmmo_DpadAmmoNumbers )
	self.id = "ZmAmmo_DpadAmmoNumbers"
	self.soundSet = "HUD"
	self:setLeftRight( true, false, 0, 18 )
	self:setTopBottom( true, false, 0, 18 )
	
	local Number5 = LUI.UIImage.new()
	Number5:setLeftRight( true, false, -26, 31 )
	Number5:setTopBottom( true, false, -20, 36 )
	Number5:setAlpha( 0 )
	Number5:setImage( RegisterImage( "uie_t7_zm_hud_ammo_number5" ) )
	Number5:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_feather_blend" ) )
	self:addElement( Number5 )
	self.Number5 = Number5
	
	local Number4 = LUI.UIImage.new()
	Number4:setLeftRight( true, false, -26, 31 )
	Number4:setTopBottom( true, false, -20, 36 )
	Number4:setAlpha( 0 )
	Number4:setImage( RegisterImage( "uie_t7_zm_hud_ammo_number4" ) )
	Number4:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_feather_blend" ) )
	self:addElement( Number4 )
	self.Number4 = Number4
	
	local Number3 = LUI.UIImage.new()
	Number3:setLeftRight( true, false, -26, 31 )
	Number3:setTopBottom( true, false, -20, 36 )
	Number3:setAlpha( 0 )
	Number3:setImage( RegisterImage( "uie_t7_zm_hud_ammo_number3" ) )
	Number3:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_feather_blend" ) )
	self:addElement( Number3 )
	self.Number3 = Number3
	
	local Number2 = LUI.UIImage.new()
	Number2:setLeftRight( true, false, -26, 31 )
	Number2:setTopBottom( true, false, -20, 36 )
	Number2:setAlpha( 0 )
	Number2:setImage( RegisterImage( "uie_t7_zm_hud_ammo_number2" ) )
	Number2:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_feather_blend" ) )
	self:addElement( Number2 )
	self.Number2 = Number2
	
	local Number1 = LUI.UIImage.new()
	Number1:setLeftRight( true, false, -26, 31 )
	Number1:setTopBottom( true, false, -20, 36 )
	Number1:setAlpha( 0 )
	Number1:setImage( RegisterImage( "uie_t7_zm_hud_ammo_number1" ) )
	Number1:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_feather_blend" ) )
	self:addElement( Number1 )
	self.Number1 = Number1
	
	local Number0 = LUI.UIImage.new()
	Number0:setLeftRight( true, false, -26, 31 )
	Number0:setTopBottom( true, false, -20, 36 )
	Number0:setAlpha( 0 )
	Number0:setImage( RegisterImage( "uie_t7_zm_hud_ammo_number0" ) )
	self:addElement( Number0 )
	self.Number0 = Number0
	
	local SymbolZ = LUI.UIImage.new()
	SymbolZ:setLeftRight( true, false, -17.55, 24 )
	SymbolZ:setTopBottom( true, false, -20, 34 )
	SymbolZ:setAlpha( 0 )
	SymbolZ:setImage( RegisterImage( "uie_t7_zm_derriese_hud_ammo_z_orange" ) )
	SymbolZ:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_feather_blend" ) )
	self:addElement( SymbolZ )
	self.SymbolZ = SymbolZ
	
	local SymbolCross = LUI.UIImage.new()
	SymbolCross:setLeftRight( true, false, -26, 31 )
	SymbolCross:setTopBottom( true, false, -20, 37 )
	SymbolCross:setAlpha( 0 )
	SymbolCross:setImage( RegisterImage( "uie_t7_zm_hud_ammo_emptycross" ) )
	SymbolCross:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_feather_blend" ) )
	self:addElement( SymbolCross )
	self.SymbolCross = SymbolCross
	
	self.clipsPerState = {
		DefaultState = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				Number5:completeAnimation()
				self.Number5:setAlpha( 0 )
				self.clipFinished( Number5, {} )

				Number4:completeAnimation()
				self.Number4:setAlpha( 0 )
				self.clipFinished( Number4, {} )

				Number3:completeAnimation()
				self.Number3:setAlpha( 0 )
				self.clipFinished( Number3, {} )

				Number2:completeAnimation()
				self.Number2:setAlpha( 0 )
				self.clipFinished( Number2, {} )

				Number1:completeAnimation()
				self.Number1:setAlpha( 0 )
				self.clipFinished( Number1, {} )

				Number0:completeAnimation()
				self.Number0:setAlpha( 0 )
				self.clipFinished( Number0, {} )

				SymbolZ:completeAnimation()
				self.SymbolZ:setAlpha( 0 )
				self.clipFinished( SymbolZ, {} )

				SymbolCross:completeAnimation()
				self.SymbolCross:setAlpha( 0 )
				self.clipFinished( SymbolCross, {} )
			end
		},
		ShowZ = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				Number5:completeAnimation()
				self.Number5:setAlpha( 0 )
				self.clipFinished( Number5, {} )

				Number4:completeAnimation()
				self.Number4:setAlpha( 0 )
				self.clipFinished( Number4, {} )

				Number3:completeAnimation()
				self.Number3:setAlpha( 0 )
				self.clipFinished( Number3, {} )

				Number2:completeAnimation()
				self.Number2:setAlpha( 0 )
				self.clipFinished( Number2, {} )

				Number1:completeAnimation()
				self.Number1:setAlpha( 0 )
				self.clipFinished( Number1, {} )

				Number0:completeAnimation()
				self.Number0:setAlpha( 0 )
				self.clipFinished( Number0, {} )

				SymbolZ:completeAnimation()
				self.SymbolZ:setAlpha( 1 )
				self.clipFinished( SymbolZ, {} )

				SymbolCross:completeAnimation()
				self.SymbolCross:setAlpha( 0 )
				self.clipFinished( SymbolCross, {} )
			end
		},
		ShowCross = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				Number5:completeAnimation()
				self.Number5:setAlpha( 0 )
				self.clipFinished( Number5, {} )

				Number4:completeAnimation()
				self.Number4:setAlpha( 0 )
				self.clipFinished( Number4, {} )

				Number3:completeAnimation()
				self.Number3:setAlpha( 0 )
				self.clipFinished( Number3, {} )

				Number2:completeAnimation()
				self.Number2:setAlpha( 0 )
				self.clipFinished( Number2, {} )

				Number1:completeAnimation()
				self.Number1:setAlpha( 0 )
				self.clipFinished( Number1, {} )

				Number0:completeAnimation()
				self.Number0:setAlpha( 0 )
				self.clipFinished( Number0, {} )

				SymbolZ:completeAnimation()
				self.SymbolZ:setAlpha( 0 )
				self.clipFinished( SymbolZ, {} )

				SymbolCross:completeAnimation()
				self.SymbolCross:setAlpha( 1 )
				self.SymbolCross:setImage( RegisterImage( "uie_t7_zm_hud_ammo_emptycross" ) )
				self.clipFinished( SymbolCross, {} )
			end
		},
		Show5 = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				Number5:completeAnimation()
				self.Number5:setAlpha( 1 )
				self.clipFinished( Number5, {} )

				Number4:completeAnimation()
				self.Number4:setAlpha( 0 )
				self.clipFinished( Number4, {} )

				Number3:completeAnimation()
				self.Number3:setAlpha( 0 )
				self.clipFinished( Number3, {} )

				Number2:completeAnimation()
				self.Number2:setAlpha( 0 )
				self.clipFinished( Number2, {} )

				Number1:completeAnimation()
				self.Number1:setAlpha( 0 )
				self.clipFinished( Number1, {} )

				Number0:completeAnimation()
				self.Number0:setAlpha( 0 )
				self.clipFinished( Number0, {} )

				SymbolZ:completeAnimation()
				self.SymbolZ:setAlpha( 0 )
				self.clipFinished( SymbolZ, {} )

				SymbolCross:completeAnimation()
				self.SymbolCross:setAlpha( 0 )
				self.clipFinished( SymbolCross, {} )
			end
		},
		Show4 = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				Number5:completeAnimation()
				self.Number5:setAlpha( 0 )
				self.clipFinished( Number5, {} )

				Number4:completeAnimation()
				self.Number4:setAlpha( 1 )
				self.clipFinished( Number4, {} )

				Number3:completeAnimation()
				self.Number3:setAlpha( 0 )
				self.clipFinished( Number3, {} )

				Number2:completeAnimation()
				self.Number2:setAlpha( 0 )
				self.clipFinished( Number2, {} )

				Number1:completeAnimation()
				self.Number1:setAlpha( 0 )
				self.clipFinished( Number1, {} )

				Number0:completeAnimation()
				self.Number0:setAlpha( 0 )
				self.clipFinished( Number0, {} )

				SymbolZ:completeAnimation()
				self.SymbolZ:setAlpha( 0 )
				self.clipFinished( SymbolZ, {} )

				SymbolCross:completeAnimation()
				self.SymbolCross:setAlpha( 0 )
				self.clipFinished( SymbolCross, {} )
			end
		},
		Show3 = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				Number5:completeAnimation()
				self.Number5:setAlpha( 0 )
				self.clipFinished( Number5, {} )

				Number4:completeAnimation()
				self.Number4:setAlpha( 0 )
				self.clipFinished( Number4, {} )

				Number3:completeAnimation()
				self.Number3:setAlpha( 1 )
				self.clipFinished( Number3, {} )

				Number2:completeAnimation()
				self.Number2:setAlpha( 0 )
				self.clipFinished( Number2, {} )

				Number1:completeAnimation()
				self.Number1:setAlpha( 0 )
				self.clipFinished( Number1, {} )

				Number0:completeAnimation()
				self.Number0:setAlpha( 0 )
				self.clipFinished( Number0, {} )

				SymbolZ:completeAnimation()
				self.SymbolZ:setAlpha( 0 )
				self.clipFinished( SymbolZ, {} )

				SymbolCross:completeAnimation()
				self.SymbolCross:setAlpha( 0 )
				self.clipFinished( SymbolCross, {} )
			end
		},
		Show2 = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				Number5:completeAnimation()
				self.Number5:setAlpha( 0 )
				self.clipFinished( Number5, {} )

				Number4:completeAnimation()
				self.Number4:setAlpha( 0 )
				self.clipFinished( Number4, {} )

				Number3:completeAnimation()
				self.Number3:setAlpha( 0 )
				self.clipFinished( Number3, {} )

				Number2:completeAnimation()
				self.Number2:setAlpha( 1 )
				self.clipFinished( Number2, {} )

				Number1:completeAnimation()
				self.Number1:setAlpha( 0 )
				self.clipFinished( Number1, {} )

				Number0:completeAnimation()
				self.Number0:setAlpha( 0 )
				self.clipFinished( Number0, {} )

				SymbolZ:completeAnimation()
				self.SymbolZ:setAlpha( 0 )
				self.clipFinished( SymbolZ, {} )

				SymbolCross:completeAnimation()
				self.SymbolCross:setAlpha( 0 )
				self.clipFinished( SymbolCross, {} )
			end
		},
		Show1 = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				Number5:completeAnimation()
				self.Number5:setAlpha( 0 )
				self.clipFinished( Number5, {} )

				Number4:completeAnimation()
				self.Number4:setAlpha( 0 )
				self.clipFinished( Number4, {} )

				Number3:completeAnimation()
				self.Number3:setAlpha( 0 )
				self.clipFinished( Number3, {} )

				Number2:completeAnimation()
				self.Number2:setAlpha( 0 )
				self.clipFinished( Number2, {} )

				Number1:completeAnimation()
				self.Number1:setAlpha( 1 )
				self.clipFinished( Number1, {} )

				Number0:completeAnimation()
				self.Number0:setAlpha( 0 )
				self.clipFinished( Number0, {} )

				SymbolZ:completeAnimation()
				self.SymbolZ:setAlpha( 0 )
				self.clipFinished( SymbolZ, {} )

				SymbolCross:completeAnimation()
				self.SymbolCross:setAlpha( 0 )
				self.clipFinished( SymbolCross, {} )
			end
		},
		Show0 = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				Number5:completeAnimation()
				self.Number5:setAlpha( 0 )
				self.clipFinished( Number5, {} )

				Number4:completeAnimation()
				self.Number4:setAlpha( 0 )
				self.clipFinished( Number4, {} )

				Number3:completeAnimation()
				self.Number3:setAlpha( 0 )
				self.clipFinished( Number3, {} )

				Number2:completeAnimation()
				self.Number2:setAlpha( 0 )
				self.clipFinished( Number2, {} )

				Number1:completeAnimation()
				self.Number1:setAlpha( 0 )
				self.clipFinished( Number1, {} )

				Number0:completeAnimation()
				self.Number0:setAlpha( 1 )
				self.clipFinished( Number0, {} )

				SymbolZ:completeAnimation()
				self.SymbolZ:setAlpha( 0 )
				self.clipFinished( SymbolZ, {} )

				SymbolCross:completeAnimation()
				self.SymbolCross:setAlpha( 0 )
				self.clipFinished( SymbolCross, {} )
			end
		},
		Hidden = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				Number5:completeAnimation()
				self.Number5:setAlpha( 0 )
				self.clipFinished( Number5, {} )

				Number4:completeAnimation()
				self.Number4:setAlpha( 0 )
				self.clipFinished( Number4, {} )

				Number3:completeAnimation()
				self.Number3:setAlpha( 0 )
				self.clipFinished( Number3, {} )

				Number2:completeAnimation()
				self.Number2:setAlpha( 0 )
				self.clipFinished( Number2, {} )

				Number1:completeAnimation()
				self.Number1:setAlpha( 0 )
				self.clipFinished( Number1, {} )

				Number0:completeAnimation()
				self.Number0:setAlpha( 0 )
				self.clipFinished( Number0, {} )

				SymbolZ:completeAnimation()
				self.SymbolZ:setAlpha( 0 )
				self.clipFinished( SymbolZ, {} )

				SymbolCross:completeAnimation()
				self.SymbolCross:setAlpha( 0 )
				self.clipFinished( SymbolCross, {} )
			end
		}
	}
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
