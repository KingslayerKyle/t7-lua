-- ec7207472b353fe1c94c2b1a0bb4943b
-- This hash is used for caching, delete to decompile the file again

require( "ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemNameLabel" )
require( "ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemVariantName" )

CoD.InfoPaneItemNameWithVariantName = InheritFrom( LUI.UIElement )
CoD.InfoPaneItemNameWithVariantName.new = function ( menu, controller )
	local self = LUI.UIHorizontalList.new( {
		left = 0,
		top = 0,
		right = 0,
		bottom = 0,
		leftAnchor = true,
		topAnchor = true,
		rightAnchor = true,
		bottomAnchor = true,
		spacing = 0
	} )
	self:setAlignment( LUI.Alignment.Left )
	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end
	self:setUseStencil( false )
	self:setClass( CoD.InfoPaneItemNameWithVariantName )
	self.id = "InfoPaneItemNameWithVariantName"
	self.soundSet = "CAC_EditLoadout"
	self:setLeftRight( true, false, 0, 595 )
	self:setTopBottom( true, false, 0, 34 )
	self.anyChildUsesUpdateState = true
	
	local itemName = CoD.InfoPaneItemNameLabel.new( menu, controller )
	itemName:setLeftRight( true, false, 0, 146.76 )
	itemName:setTopBottom( true, false, 0, 34 )
	itemName.TitleGlow1:setAlpha( 0.75 )
	itemName.itemName:setText( Engine.Localize( "WEAPON_AR_STANDARD" ) )
	self:addElement( itemName )
	self.itemName = itemName
	
	local variantName = CoD.InfoPaneItemVariantName.new( menu, controller )
	variantName:setLeftRight( true, false, 146.76, 482 )
	variantName:setTopBottom( true, false, 0, 34 )
	variantName:setAlpha( 0 )
	variantName.itemName:setText( Engine.Localize( "Henry" ) )
	self:addElement( variantName )
	self.variantName = variantName
	
	local Guide = LUI.UIImage.new()
	Guide:setLeftRight( true, false, 482, 485 )
	Guide:setTopBottom( true, false, 0.71, 34 )
	Guide:setRGB( 1, 0.61, 0.15 )
	Guide:setAlpha( 0 )
	self:addElement( Guide )
	self.Guide = Guide
	
	self.clipsPerState = {
		DefaultState = {
			DefaultClip = function ()
				self:setupElementClipCounter( 0 )
			end
		}
	}
	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.itemName:close()
		element.variantName:close()
	end )
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end

