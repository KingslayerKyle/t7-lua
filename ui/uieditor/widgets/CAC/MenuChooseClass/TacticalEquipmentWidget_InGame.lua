-- 2a29804bb8f4d506350445624bcdd79a
-- This hash is used for caching, delete to decompile the file again

require( "ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.WeaponItemModelWidgetNew_InGame" )

CoD.TacticalEquipmentWidget_InGame = InheritFrom( LUI.UIElement )
CoD.TacticalEquipmentWidget_InGame.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.TacticalEquipmentWidget_InGame )
	self.id = "TacticalEquipmentWidget_InGame"
	self.soundSet = "CAC"
	self:setLeftRight( true, false, 0, 62 )
	self:setTopBottom( true, false, 0, 145 )
	self.anyChildUsesUpdateState = true
	
	local header = LUI.UITightText.new()
	header:setLeftRight( true, false, 0, 61 )
	header:setTopBottom( true, false, -5, 14 )
	header:setRGB( 0.57, 0.6, 0.65 )
	header:setTTF( "fonts/RefrigeratorDeluxe-Regular.ttf" )
	header:setLetterSpacing( 0.5 )
	header:linkToElementModel( self, "headerName", true, function ( model )
		local headerName = Engine.GetModelValue( model )
		if headerName then
			header:setText( Engine.Localize( headerName ) )
		end
	end )
	self:addElement( header )
	self.header = header
	
	local Equipment2 = CoD.WeaponItemModelWidgetNew_InGame.new( menu, controller )
	Equipment2:setLeftRight( true, true, 0, 0 )
	Equipment2:setTopBottom( true, false, 83, 145 )
	Equipment2:linkToElementModel( self, "image", true, function ( model )
		local image = Engine.GetModelValue( model )
		if image then
			Equipment2.itemImage:setImage( RegisterImage( image ) )
		end
	end )
	Equipment2:mergeStateConditions( {
		{
			stateName = "Equipped",
			condition = function ( menu, element, event )
				return IsCACSlotEquipped( menu, element, controller ) and IsCACTakeTwoSecondaryGadgetAttachmentEquipped( menu )
			end
		},
		{
			stateName = "NotEquippable",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "NotAvailable",
			condition = function ( menu, element, event )
				return not IsCACSlotEquipped( menu, element, controller )
			end
		}
	} )
	self:addElement( Equipment2 )
	self.Equipment2 = Equipment2
	
	local Equipment1 = CoD.WeaponItemModelWidgetNew_InGame.new( menu, controller )
	Equipment1:setLeftRight( true, true, 0, 0 )
	Equipment1:setTopBottom( true, false, 16, 78 )
	Equipment1:linkToElementModel( self, "image", true, function ( model )
		local image = Engine.GetModelValue( model )
		if image then
			Equipment1.itemImage:setImage( RegisterImage( image ) )
		end
	end )
	self:addElement( Equipment1 )
	self.Equipment1 = Equipment1
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.Equipment2:close()
		element.Equipment1:close()
		element.header:close()
	end )
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
