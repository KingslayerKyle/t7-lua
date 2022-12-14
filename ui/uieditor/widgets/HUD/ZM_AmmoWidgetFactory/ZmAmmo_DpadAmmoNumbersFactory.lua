-- 469ecab0b502ba54b939b389d18ff617
-- This hash is used for caching, delete to decompile the file again

CoD.ZmAmmo_DpadAmmoNumbersFactory = InheritFrom( LUI.UIElement )
CoD.ZmAmmo_DpadAmmoNumbersFactory.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.ZmAmmo_DpadAmmoNumbersFactory )
	self.id = "ZmAmmo_DpadAmmoNumbersFactory"
	self.soundSet = "HUD"
	self:setLeftRight( true, false, 0, 18 )
	self:setTopBottom( true, false, 0, 18 )
	
	local SymbolZ = LUI.UIImage.new()
	SymbolZ:setLeftRight( true, false, -14, 18 )
	SymbolZ:setTopBottom( true, false, -19, 36 )
	SymbolZ:setAlpha( 0 )
	SymbolZ:setImage( RegisterImage( "uie_t7_zm_derriese_hud_ammo_z_blue" ) )
	SymbolZ:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_feather_blend" ) )
	self:addElement( SymbolZ )
	self.SymbolZ = SymbolZ
	
	local Number5 = LUI.UIImage.new()
	Number5:setLeftRight( true, false, -26, 31 )
	Number5:setTopBottom( true, false, -20, 36 )
	Number5:setAlpha( 0 )
	Number5:setImage( RegisterImage( "uie_t7_zm_derriese_hud_ammo_number5" ) )
	Number5:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_feather_blend" ) )
	self:addElement( Number5 )
	self.Number5 = Number5
	
	local Number4 = LUI.UIImage.new()
	Number4:setLeftRight( true, false, -26, 31 )
	Number4:setTopBottom( true, false, -20, 36 )
	Number4:setAlpha( 0 )
	Number4:setImage( RegisterImage( "uie_t7_zm_derriese_hud_ammo_number4" ) )
	Number4:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_feather_blend" ) )
	self:addElement( Number4 )
	self.Number4 = Number4
	
	local Number3 = LUI.UIImage.new()
	Number3:setLeftRight( true, false, -26, 31 )
	Number3:setTopBottom( true, false, -20, 36 )
	Number3:setAlpha( 0 )
	Number3:setImage( RegisterImage( "uie_t7_zm_derriese_hud_ammo_number3" ) )
	Number3:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_feather_blend" ) )
	self:addElement( Number3 )
	self.Number3 = Number3
	
	local Number2 = LUI.UIImage.new()
	Number2:setLeftRight( true, false, -26, 31 )
	Number2:setTopBottom( true, false, -20, 36 )
	Number2:setAlpha( 0 )
	Number2:setImage( RegisterImage( "uie_t7_zm_derriese_hud_ammo_number2" ) )
	Number2:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_feather_blend" ) )
	self:addElement( Number2 )
	self.Number2 = Number2
	
	local Number1 = LUI.UIImage.new()
	Number1:setLeftRight( true, false, -26, 31 )
	Number1:setTopBottom( true, false, -20, 36 )
	Number1:setAlpha( 0 )
	Number1:setImage( RegisterImage( "uie_t7_zm_derriese_hud_ammo_number1" ) )
	Number1:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_feather_blend" ) )
	self:addElement( Number1 )
	self.Number1 = Number1
	
	local Number0 = LUI.UIImage.new()
	Number0:setLeftRight( true, false, -26, 31 )
	Number0:setTopBottom( true, false, -20, 36 )
	Number0:setImage( RegisterImage( "uie_t7_zm_derriese_hud_ammo_number0" ) )
	self:addElement( Number0 )
	self.Number0 = Number0
	
	local SymbolCrossBlue = LUI.UIImage.new()
	SymbolCrossBlue:setLeftRight( true, false, -26, 31 )
	SymbolCrossBlue:setTopBottom( true, false, -20, 37 )
	SymbolCrossBlue:setAlpha( 0 )
	SymbolCrossBlue:setImage( RegisterImage( "uie_t7_zm_derriese_hud_ammo_emptycross" ) )
	SymbolCrossBlue:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_feather_blend" ) )
	self:addElement( SymbolCrossBlue )
	self.SymbolCrossBlue = SymbolCrossBlue
	
	self.clipsPerState = {
		DefaultState = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				SymbolZ:completeAnimation()
				self.SymbolZ:setAlpha( 0 )
				self.clipFinished( SymbolZ, {} )

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

				SymbolCrossBlue:completeAnimation()
				self.SymbolCrossBlue:setAlpha( 0 )
				self.clipFinished( SymbolCrossBlue, {} )
			end
		},
		ShowZ = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				SymbolZ:completeAnimation()
				self.SymbolZ:setAlpha( 1 )
				self.clipFinished( SymbolZ, {} )

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

				SymbolCrossBlue:completeAnimation()
				self.SymbolCrossBlue:setAlpha( 0 )
				self.clipFinished( SymbolCrossBlue, {} )
			end
		},
		ShowCross = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				SymbolZ:completeAnimation()
				self.SymbolZ:setAlpha( 0 )
				self.clipFinished( SymbolZ, {} )

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

				SymbolCrossBlue:completeAnimation()
				self.SymbolCrossBlue:setAlpha( 1 )
				self.clipFinished( SymbolCrossBlue, {} )
			end
		},
		Show5 = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				SymbolZ:completeAnimation()
				self.SymbolZ:setAlpha( 0 )
				self.clipFinished( SymbolZ, {} )

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

				SymbolCrossBlue:completeAnimation()
				self.SymbolCrossBlue:setAlpha( 0 )
				self.clipFinished( SymbolCrossBlue, {} )
			end
		},
		Show4 = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				SymbolZ:completeAnimation()
				self.SymbolZ:setAlpha( 0 )
				self.clipFinished( SymbolZ, {} )

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

				SymbolCrossBlue:completeAnimation()
				self.SymbolCrossBlue:setAlpha( 0 )
				self.clipFinished( SymbolCrossBlue, {} )
			end
		},
		Show3 = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				SymbolZ:completeAnimation()
				self.SymbolZ:setAlpha( 0 )
				self.clipFinished( SymbolZ, {} )

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

				SymbolCrossBlue:completeAnimation()
				self.SymbolCrossBlue:setAlpha( 0 )
				self.clipFinished( SymbolCrossBlue, {} )
			end
		},
		Show2 = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				SymbolZ:completeAnimation()
				self.SymbolZ:setAlpha( 0 )
				self.clipFinished( SymbolZ, {} )

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

				SymbolCrossBlue:completeAnimation()
				self.SymbolCrossBlue:setAlpha( 0 )
				self.clipFinished( SymbolCrossBlue, {} )
			end
		},
		Show1 = {
			DefaultClip = function ()
				self:setupElementClipCounter( 7 )

				SymbolZ:completeAnimation()
				self.SymbolZ:setAlpha( 0 )
				self.clipFinished( SymbolZ, {} )

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
			end
		},
		Show0 = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				SymbolZ:completeAnimation()
				self.SymbolZ:setAlpha( 0 )
				self.clipFinished( SymbolZ, {} )

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

				SymbolCrossBlue:completeAnimation()
				self.SymbolCrossBlue:setAlpha( 0 )
				self.clipFinished( SymbolCrossBlue, {} )
			end
		},
		Hidden = {
			DefaultClip = function ()
				self:setupElementClipCounter( 8 )

				SymbolZ:completeAnimation()
				self.SymbolZ:setAlpha( 0 )
				self.clipFinished( SymbolZ, {} )

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

				SymbolCrossBlue:completeAnimation()
				self.SymbolCrossBlue:setAlpha( 0 )
				self.clipFinished( SymbolCrossBlue, {} )
			end
		}
	}
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
