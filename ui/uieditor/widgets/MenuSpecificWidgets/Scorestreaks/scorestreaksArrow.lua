-- 4e25d1cf197c321d4292a1d823e879b0
-- This hash is used for caching, delete to decompile the file again

CoD.scorestreaksArrow = InheritFrom( LUI.UIElement )
CoD.scorestreaksArrow.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.scorestreaksArrow )
	self.id = "scorestreaksArrow"
	self.soundSet = "CAC"
	self:setLeftRight( true, false, 0, 10 )
	self:setTopBottom( true, false, 0, 10 )
	
	local arrowUp = LUI.UIImage.new()
	arrowUp:setLeftRight( false, false, -11, 11 )
	arrowUp:setTopBottom( false, false, -8, 7 )
	arrowUp:setZRot( 180 )
	arrowUp:setImage( RegisterImage( "uie_img_t7_menu_startmenu_option_arrow" ) )
	arrowUp:setMaterial( LUI.UIImage.GetCachedMaterial( "ui_add" ) )
	self:addElement( arrowUp )
	self.arrowUp = arrowUp
	
	self.clipsPerState = {
		DefaultState = {
			DefaultClip = function ()
				self:setupElementClipCounter( 1 )

				arrowUp:completeAnimation()
				self.arrowUp:setAlpha( 1 )
				self.clipFinished( arrowUp, {} )
			end
		},
		NoHintText = {
			DefaultClip = function ()
				self:setupElementClipCounter( 1 )

				arrowUp:completeAnimation()
				self.arrowUp:setAlpha( 0 )
				self.clipFinished( arrowUp, {} )
			end
		}
	}

	self:mergeStateConditions( {
		{
			stateName = "NoHintText",
			condition = function ( menu, element, event )
				return not HasHintText( element )
			end
		}
	} )
	self:linkToElementModel( self, nil, true, function ( model )
		menu:updateElementState( self, {
			name = "model_validation",
			menu = menu,
			modelValue = Engine.GetModelValue( model ),
			modelName = nil
		} )
	end )
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
