-- b7e49c252935add97f0e61ebaccc51d1
-- This hash is used for caching, delete to decompile the file again

require( "ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke" )
require( "ui.uieditor.widgets.Craft.Paintshop.PaintshopButtonPrompt" )
require( "ui.uieditor.widgets.Craft.Paintshop.PaintshopChooseSide" )

CoD.PaintshopControls = InheritFrom( LUI.UIElement )
CoD.PaintshopControls.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.PaintshopControls )
	self.id = "PaintshopControls"
	self.soundSet = "default"
	self:setLeftRight( true, false, 0, 250 )
	self:setTopBottom( true, false, 0, 225 )
	self.anyChildUsesUpdateState = true
	
	local Image0 = LUI.UIImage.new()
	Image0:setLeftRight( true, true, 0.45, 0 )
	Image0:setTopBottom( true, true, 31, 0 )
	Image0:setRGB( 0, 0, 0 )
	Image0:setAlpha( 0.5 )
	self:addElement( Image0 )
	self.Image0 = Image0
	
	local cacButtonBoxLrgInactiveStroke0 = CoD.cac_ButtonBoxLrgInactiveStroke.new( menu, controller )
	cacButtonBoxLrgInactiveStroke0:setLeftRight( true, true, -2, 2 )
	cacButtonBoxLrgInactiveStroke0:setTopBottom( true, true, 28, 2 )
	self:addElement( cacButtonBoxLrgInactiveStroke0 )
	self.cacButtonBoxLrgInactiveStroke0 = cacButtonBoxLrgInactiveStroke0
	
	local Copy = CoD.PaintshopButtonPrompt.new( menu, controller )
	Copy:setLeftRight( true, false, 16, 249 )
	Copy:setTopBottom( true, false, 36, 67 )
	Copy.label:setText( Engine.Localize( "MENU_EMBLEM_COPY_LAYER" ) )
	Copy:subscribeToGlobalModel( controller, "Controller", "back_button_image", function ( model )
		local backButtonImage = Engine.GetModelValue( model )
		if backButtonImage then
			Copy.buttonPromptImage:setImage( RegisterImage( backButtonImage ) )
		end
	end )
	self:addElement( Copy )
	self.Copy = Copy
	
	local Cut = CoD.PaintshopButtonPrompt.new( menu, controller )
	Cut:setLeftRight( true, false, 16, 249 )
	Cut:setTopBottom( true, false, 62, 93 )
	Cut.label:setText( Engine.Localize( "MENU_EMBLEM_CUT_LAYER" ) )
	Cut:subscribeToGlobalModel( controller, "Controller", "alt1_button_image", function ( model )
		local alt1ButtonImage = Engine.GetModelValue( model )
		if alt1ButtonImage then
			Cut.buttonPromptImage:setImage( RegisterImage( alt1ButtonImage ) )
		end
	end )
	self:addElement( Cut )
	self.Cut = Cut
	
	local Change = CoD.PaintshopButtonPrompt.new( menu, controller )
	Change:setLeftRight( true, false, 16, 249 )
	Change:setTopBottom( true, false, 88.95, 119.95 )
	Change.label:setText( Engine.Localize( "MENU_EMBLEM_CHANGE_DECAL" ) )
	Change:subscribeToGlobalModel( controller, "Controller", "alt2_button_image", function ( model )
		local alt2ButtonImage = Engine.GetModelValue( model )
		if alt2ButtonImage then
			Change.buttonPromptImage:setImage( RegisterImage( alt2ButtonImage ) )
		end
	end )
	self:addElement( Change )
	self.Change = Change
	
	local Insert = CoD.PaintshopButtonPrompt.new( menu, controller )
	Insert:setLeftRight( true, false, 16, 249 )
	Insert:setTopBottom( true, false, 115.95, 146.95 )
	Insert.label:setText( Engine.Localize( "MENU_EMBLEM_INSERT_DECAL" ) )
	Insert:subscribeToGlobalModel( controller, "Controller", "dpad_down_button_image", function ( model )
		local dpadDownButtonImage = Engine.GetModelValue( model )
		if dpadDownButtonImage then
			Insert.buttonPromptImage:setImage( RegisterImage( dpadDownButtonImage ) )
		end
	end )
	self:addElement( Insert )
	self.Insert = Insert
	
	local linkLayers = CoD.PaintshopButtonPrompt.new( menu, controller )
	linkLayers:setLeftRight( true, false, 16, 249 )
	linkLayers:setTopBottom( true, false, 142.95, 173.95 )
	linkLayers.label:setText( Engine.Localize( "MENU_EMBLEM_LINK_LAYERS" ) )
	linkLayers:subscribeToGlobalModel( controller, "Controller", "right_trigger_button_image", function ( model )
		local rightTriggerButtonImage = Engine.GetModelValue( model )
		if rightTriggerButtonImage then
			linkLayers.buttonPromptImage:setImage( RegisterImage( rightTriggerButtonImage ) )
		end
	end )
	self:addElement( linkLayers )
	self.linkLayers = linkLayers
	
	local groupLayers = CoD.PaintshopButtonPrompt.new( menu, controller )
	groupLayers:setLeftRight( true, false, 16, 249 )
	groupLayers:setTopBottom( true, false, 168.95, 199.95 )
	groupLayers.label:setText( Engine.Localize( "MENU_EMBLEMS_UNGROUP" ) )
	groupLayers:subscribeToGlobalModel( controller, "Controller", "left_shoulder_button_image", function ( model )
		local leftShoulderButtonImage = Engine.GetModelValue( model )
		if leftShoulderButtonImage then
			groupLayers.buttonPromptImage:setImage( RegisterImage( leftShoulderButtonImage ) )
		end
	end )
	self:addElement( groupLayers )
	self.groupLayers = groupLayers
	
	local saveDecal = CoD.PaintshopButtonPrompt.new( menu, controller )
	saveDecal:setLeftRight( true, false, 16, 249 )
	saveDecal:setTopBottom( true, false, 194, 225 )
	saveDecal.label:setText( Engine.Localize( "MENU_EMBLEM_SAVE_DECAL_GROUP" ) )
	saveDecal:subscribeToGlobalModel( controller, "Controller", "right_shoulder_button_image", function ( model )
		local rightShoulderButtonImage = Engine.GetModelValue( model )
		if rightShoulderButtonImage then
			saveDecal.buttonPromptImage:setImage( RegisterImage( rightShoulderButtonImage ) )
		end
	end )
	self:addElement( saveDecal )
	self.saveDecal = saveDecal
	
	local PaintshopChooseSide0 = CoD.PaintshopChooseSide.new( menu, controller )
	PaintshopChooseSide0:setLeftRight( true, true, 0.45, 0 )
	PaintshopChooseSide0:setTopBottom( true, false, 1, 22 )
	PaintshopChooseSide0.text:setText( Engine.Localize( "MENU_CONTROLS_CAPS" ) )
	PaintshopChooseSide0.text:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	self:addElement( PaintshopChooseSide0 )
	self.PaintshopChooseSide0 = PaintshopChooseSide0
	
	self.clipsPerState = {
		DefaultState = {
			DefaultClip = function ()
				self:setupElementClipCounter( 10 )

				Image0:completeAnimation()
				self.Image0:setAlpha( 0 )
				self.clipFinished( Image0, {} )

				cacButtonBoxLrgInactiveStroke0:completeAnimation()
				self.cacButtonBoxLrgInactiveStroke0:setAlpha( 0 )
				self.clipFinished( cacButtonBoxLrgInactiveStroke0, {} )

				Copy:completeAnimation()
				self.Copy:setAlpha( 0 )
				self.clipFinished( Copy, {} )

				Cut:completeAnimation()
				self.Cut:setAlpha( 0 )
				self.clipFinished( Cut, {} )

				Change:completeAnimation()
				self.Change:setAlpha( 0 )
				self.clipFinished( Change, {} )

				Insert:completeAnimation()
				self.Insert:setAlpha( 0 )
				self.clipFinished( Insert, {} )

				linkLayers:completeAnimation()
				self.linkLayers:setAlpha( 0 )
				self.clipFinished( linkLayers, {} )

				groupLayers:completeAnimation()
				self.groupLayers:setAlpha( 0 )
				self.clipFinished( groupLayers, {} )

				saveDecal:completeAnimation()
				self.saveDecal:setAlpha( 0 )
				self.clipFinished( saveDecal, {} )

				PaintshopChooseSide0:completeAnimation()
				self.PaintshopChooseSide0:setAlpha( 0 )
				self.clipFinished( PaintshopChooseSide0, {} )
			end
		},
		BrowseModeLinkedLayer = {
			DefaultClip = function ()
				self:setupElementClipCounter( 10 )

				Image0:completeAnimation()
				self.Image0:setAlpha( 0.5 )
				self.clipFinished( Image0, {} )

				cacButtonBoxLrgInactiveStroke0:completeAnimation()
				self.cacButtonBoxLrgInactiveStroke0:setAlpha( 1 )
				self.clipFinished( cacButtonBoxLrgInactiveStroke0, {} )

				Copy:completeAnimation()
				self.Copy:setAlpha( 1 )
				self.clipFinished( Copy, {} )

				Cut:completeAnimation()
				self.Cut:setAlpha( 1 )
				self.clipFinished( Cut, {} )

				Change:completeAnimation()
				self.Change:setLeftRight( true, false, 16, 249 )
				self.Change:setTopBottom( true, false, 88.95, 119.95 )
				self.Change:setAlpha( 1 )
				self.clipFinished( Change, {} )

				Insert:completeAnimation()
				self.Insert:setLeftRight( true, false, 16, 249 )
				self.Insert:setTopBottom( true, false, 115.95, 146.95 )
				self.Insert:setAlpha( 1 )
				self.clipFinished( Insert, {} )

				linkLayers:completeAnimation()

				linkLayers.label:completeAnimation()
				self.linkLayers:setLeftRight( true, false, 16, 249 )
				self.linkLayers:setTopBottom( true, false, 142.95, 173.95 )
				self.linkLayers:setAlpha( 1 )
				self.linkLayers.label:setText( Engine.Localize( "MENU_EMBLEM_UNLINK_LAYERS" ) )
				self.clipFinished( linkLayers, {} )

				groupLayers:completeAnimation()

				groupLayers.label:completeAnimation()
				self.groupLayers:setLeftRight( true, false, 16, 249 )
				self.groupLayers:setTopBottom( true, false, 168.95, 199.95 )
				self.groupLayers:setAlpha( 1 )
				self.groupLayers.label:setText( Engine.Localize( "MENU_EMBLEMS_GROUP" ) )
				self.clipFinished( groupLayers, {} )

				saveDecal:completeAnimation()
				self.saveDecal:setAlpha( 0 )
				self.clipFinished( saveDecal, {} )

				PaintshopChooseSide0:completeAnimation()
				self.PaintshopChooseSide0:setAlpha( 1 )
				self.clipFinished( PaintshopChooseSide0, {} )
			end
		},
		BrowseModeGroupedLayer = {
			DefaultClip = function ()
				self:setupElementClipCounter( 10 )

				Image0:completeAnimation()
				self.Image0:setAlpha( 0.5 )
				self.clipFinished( Image0, {} )

				cacButtonBoxLrgInactiveStroke0:completeAnimation()
				self.cacButtonBoxLrgInactiveStroke0:setAlpha( 1 )
				self.clipFinished( cacButtonBoxLrgInactiveStroke0, {} )

				Copy:completeAnimation()
				self.Copy:setAlpha( 1 )
				self.clipFinished( Copy, {} )

				Cut:completeAnimation()
				self.Cut:setAlpha( 1 )
				self.clipFinished( Cut, {} )

				Change:completeAnimation()
				self.Change:setAlpha( 0 )
				self.clipFinished( Change, {} )

				Insert:completeAnimation()
				self.Insert:setLeftRight( true, false, 16, 249 )
				self.Insert:setTopBottom( true, false, 88.95, 119.95 )
				self.Insert:setAlpha( 1 )
				self.clipFinished( Insert, {} )

				linkLayers:completeAnimation()
				self.linkLayers:setLeftRight( true, false, 16, 249 )
				self.linkLayers:setTopBottom( true, false, 142.95, 173.95 )
				self.linkLayers:setAlpha( 0 )
				self.clipFinished( linkLayers, {} )

				groupLayers:completeAnimation()

				groupLayers.label:completeAnimation()
				self.groupLayers:setLeftRight( true, false, 16, 249 )
				self.groupLayers:setTopBottom( true, false, 114.5, 145.5 )
				self.groupLayers:setAlpha( 1 )
				self.groupLayers.label:setText( Engine.Localize( "MENU_EMBLEMS_UNGROUP" ) )
				self.clipFinished( groupLayers, {} )

				saveDecal:completeAnimation()
				self.saveDecal:setLeftRight( true, false, 16, 249 )
				self.saveDecal:setTopBottom( true, false, 168, 199 )
				self.saveDecal:setAlpha( 0 )
				self.clipFinished( saveDecal, {} )

				PaintshopChooseSide0:completeAnimation()
				self.PaintshopChooseSide0:setAlpha( 1 )
				self.clipFinished( PaintshopChooseSide0, {} )
			end
		},
		BrowseModeOneLayerLinked = {
			DefaultClip = function ()
				self:setupElementClipCounter( 7 )

				Copy:completeAnimation()
				self.Copy:setLeftRight( true, false, 16, 249 )
				self.Copy:setTopBottom( true, false, 36, 67 )
				self.Copy:setAlpha( 1 )
				self.clipFinished( Copy, {} )

				Cut:completeAnimation()
				self.Cut:setLeftRight( true, false, 16, 249 )
				self.Cut:setTopBottom( true, false, 62, 93 )
				self.Cut:setAlpha( 1 )
				self.clipFinished( Cut, {} )

				Change:completeAnimation()
				self.Change:setLeftRight( true, false, 16, 249 )
				self.Change:setTopBottom( true, false, 88.95, 119.95 )
				self.Change:setAlpha( 1 )
				self.clipFinished( Change, {} )

				Insert:completeAnimation()
				self.Insert:setLeftRight( true, false, 16, 249 )
				self.Insert:setTopBottom( true, false, 115.95, 146.95 )
				self.Insert:setAlpha( 1 )
				self.clipFinished( Insert, {} )

				linkLayers:completeAnimation()

				linkLayers.label:completeAnimation()
				self.linkLayers:setLeftRight( true, false, 16, 249 )
				self.linkLayers:setTopBottom( true, false, 142.95, 173.95 )
				self.linkLayers:setAlpha( 1 )
				self.linkLayers.label:setText( Engine.Localize( "MENU_EMBLEM_UNLINK_LAYERS" ) )
				self.clipFinished( linkLayers, {} )

				groupLayers:completeAnimation()
				self.groupLayers:setAlpha( 0 )
				self.clipFinished( groupLayers, {} )

				saveDecal:completeAnimation()
				self.saveDecal:setAlpha( 0 )
				self.clipFinished( saveDecal, {} )
			end
		},
		BrowseMode = {
			DefaultClip = function ()
				self:setupElementClipCounter( 10 )

				Image0:completeAnimation()
				self.Image0:setAlpha( 0.5 )
				self.clipFinished( Image0, {} )

				cacButtonBoxLrgInactiveStroke0:completeAnimation()
				self.cacButtonBoxLrgInactiveStroke0:setAlpha( 1 )
				self.clipFinished( cacButtonBoxLrgInactiveStroke0, {} )

				Copy:completeAnimation()
				self.Copy:setAlpha( 1 )
				self.clipFinished( Copy, {} )

				Cut:completeAnimation()
				self.Cut:setAlpha( 1 )
				self.clipFinished( Cut, {} )

				Change:completeAnimation()
				self.Change:setLeftRight( true, false, 16, 249 )
				self.Change:setTopBottom( true, false, 88.95, 119.95 )
				self.Change:setAlpha( 1 )
				self.clipFinished( Change, {} )

				Insert:completeAnimation()
				self.Insert:setLeftRight( true, false, 16, 249 )
				self.Insert:setTopBottom( true, false, 115.95, 146.95 )
				self.Insert:setAlpha( 1 )
				self.clipFinished( Insert, {} )

				linkLayers:completeAnimation()

				linkLayers.label:completeAnimation()
				self.linkLayers:setLeftRight( true, false, 16, 249 )
				self.linkLayers:setTopBottom( true, false, 142.95, 173.95 )
				self.linkLayers:setAlpha( 1 )
				self.linkLayers.label:setText( Engine.Localize( "MENU_EMBLEM_LINK_LAYERS" ) )
				self.clipFinished( linkLayers, {} )

				groupLayers:completeAnimation()
				self.groupLayers:setAlpha( 0 )
				self.clipFinished( groupLayers, {} )

				saveDecal:completeAnimation()
				self.saveDecal:setAlpha( 0 )
				self.clipFinished( saveDecal, {} )

				PaintshopChooseSide0:completeAnimation()
				self.PaintshopChooseSide0:setAlpha( 1 )
				self.clipFinished( PaintshopChooseSide0, {} )
			end
		}
	}

	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.cacButtonBoxLrgInactiveStroke0:close()
		element.Copy:close()
		element.Cut:close()
		element.Change:close()
		element.Insert:close()
		element.linkLayers:close()
		element.groupLayers:close()
		element.saveDecal:close()
		element.PaintshopChooseSide0:close()
	end )
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
