-- 14f0be3b3e4a9e64ddc0c29ffa6e7358
-- This hash is used for caching, delete to decompile the file again

require( "ui.uieditor.widgets.Craft.EmblemEditor.EmblemEditorRightButtonBar" )
require( "ui.uieditor.widgets.buttonprompt" )

CoD.EmblemBrowseControlsBar = InheritFrom( LUI.UIElement )
CoD.EmblemBrowseControlsBar.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.EmblemBrowseControlsBar )
	self.id = "EmblemBrowseControlsBar"
	self.soundSet = "CustomizationEditor"
	self:setLeftRight( true, false, 0, 1280 )
	self:setTopBottom( true, false, 0, 38 )
	self.anyChildUsesUpdateState = true
	
	local rightButtonBar = CoD.EmblemEditorRightButtonBar.new( menu, controller )
	rightButtonBar:setLeftRight( false, true, -389, -44 )
	rightButtonBar:setTopBottom( false, true, -36, -3 )
	rightButtonBar.change.label:setText( Engine.Localize( "MENU_EMBLEM_CHANGE_DECAL" ) )
	rightButtonBar.cut.label:setText( Engine.Localize( "MENU_EMBLEM_CUT_LAYER" ) )
	rightButtonBar.copy.label:setText( Engine.Localize( "MENU_EMBLEM_COPY_LAYER" ) )
	rightButtonBar.new.label:setText( Engine.Localize( "MENU_EMBLEM_INSERT_LAYER" ) )
	self:addElement( rightButtonBar )
	self.rightButtonBar = rightButtonBar
	
	local link = CoD.buttonprompt.new( menu, controller )
	link:setLeftRight( false, false, -70, 0 )
	link:setTopBottom( false, true, -34, -3 )
	link.label:setText( Engine.Localize( "MENU_EMBLEM_LINK_LAYERS" ) )
	link:subscribeToGlobalModel( controller, "Controller", "right_trigger_button_image", function ( model )
		local rightTriggerButtonImage = Engine.GetModelValue( model )
		if rightTriggerButtonImage then
			link.buttonPromptImage:setImage( RegisterImage( rightTriggerButtonImage ) )
		end
	end )
	self:addElement( link )
	self.link = link
	
	local group = CoD.buttonprompt.new( menu, controller )
	group:setLeftRight( false, false, 0, 90 )
	group:setTopBottom( false, true, -34, -3 )
	group.label:setText( Engine.Localize( "MENU_EMBLEMS_GROUP" ) )
	group:subscribeToGlobalModel( controller, "Controller", "right_shoulder_button_image", function ( model )
		local rightShoulderButtonImage = Engine.GetModelValue( model )
		if rightShoulderButtonImage then
			group.buttonPromptImage:setImage( RegisterImage( rightShoulderButtonImage ) )
		end
	end )
	self:addElement( group )
	self.group = group
	
	self.clipsPerState = {
		DefaultState = {
			DefaultClip = function ()
				self:setupElementClipCounter( 3 )

				rightButtonBar:completeAnimation()

				rightButtonBar.change:completeAnimation()

				rightButtonBar.change.label:completeAnimation()

				rightButtonBar.cut:completeAnimation()

				rightButtonBar.cut.label:completeAnimation()

				rightButtonBar.copy:completeAnimation()

				rightButtonBar.copy.label:completeAnimation()

				rightButtonBar.new:completeAnimation()

				rightButtonBar.new.label:completeAnimation()
				self.rightButtonBar:setAlpha( 1 )
				self.rightButtonBar.change:setAlpha( 0 )
				self.rightButtonBar.change.label:setText( Engine.Localize( "MENU_EMBLEM_CHANGE_DECAL" ) )
				self.rightButtonBar.cut:setAlpha( 0 )
				self.rightButtonBar.cut.label:setText( Engine.Localize( "MENU_EMBLEM_CUT_LAYER" ) )
				self.rightButtonBar.copy:setAlpha( 0 )
				self.rightButtonBar.copy.label:setText( Engine.Localize( "MENU_EMBLEM_COPY_LAYER" ) )
				self.rightButtonBar.new:setAlpha( 0 )
				self.rightButtonBar.new.label:setText( Engine.Localize( "MENU_NEW" ) )
				self.clipFinished( rightButtonBar, {} )

				link:completeAnimation()
				self.link:setAlpha( 0 )
				self.clipFinished( link, {} )

				group:completeAnimation()
				self.group:setAlpha( 0 )
				self.clipFinished( group, {} )
			end
		},
		BrowseModeLinkedLayer = {
			DefaultClip = function ()
				self:setupElementClipCounter( 3 )

				rightButtonBar:completeAnimation()

				rightButtonBar.change:completeAnimation()

				rightButtonBar.change.label:completeAnimation()

				rightButtonBar.cut:completeAnimation()

				rightButtonBar.cut.label:completeAnimation()

				rightButtonBar.copy:completeAnimation()

				rightButtonBar.copy.label:completeAnimation()

				rightButtonBar.new:completeAnimation()

				rightButtonBar.new.label:completeAnimation()
				self.rightButtonBar.change:setAlpha( 1 )
				self.rightButtonBar.change.label:setText( Engine.Localize( "MENU_EMBLEM_CHANGE_DECAL" ) )
				self.rightButtonBar.cut:setAlpha( 1 )
				self.rightButtonBar.cut.label:setText( Engine.Localize( "MENU_EMBLEM_CUT_LAYER" ) )
				self.rightButtonBar.copy:setAlpha( 1 )
				self.rightButtonBar.copy.label:setText( Engine.Localize( "MENU_EMBLEM_COPY_LAYER" ) )
				self.rightButtonBar.new:setAlpha( 1 )
				self.rightButtonBar.new.label:setText( Engine.Localize( "MENU_NEW" ) )
				self.clipFinished( rightButtonBar, {} )

				link:completeAnimation()

				link.label:completeAnimation()
				self.link:setLeftRight( false, false, -70, 0 )
				self.link:setTopBottom( false, true, -34, -3 )
				self.link:setAlpha( 1 )
				self.link.label:setText( Engine.Localize( "MENU_EMBLEM_UNLINK_LAYERS" ) )
				self.clipFinished( link, {} )

				group:completeAnimation()

				group.label:completeAnimation()
				self.group:setLeftRight( false, false, 0, 90 )
				self.group:setTopBottom( false, true, -34, -3 )
				self.group:setAlpha( 1 )
				self.group.label:setText( Engine.Localize( "MENU_EMBLEMS_GROUP" ) )
				self.clipFinished( group, {} )
			end
		},
		BrowseModeGroupedLayer = {
			DefaultClip = function ()
				self:setupElementClipCounter( 3 )

				rightButtonBar:completeAnimation()

				rightButtonBar.change:completeAnimation()

				rightButtonBar.change.label:completeAnimation()

				rightButtonBar.cut:completeAnimation()

				rightButtonBar.cut.label:completeAnimation()

				rightButtonBar.copy:completeAnimation()

				rightButtonBar.copy.label:completeAnimation()

				rightButtonBar.new:completeAnimation()

				rightButtonBar.new.label:completeAnimation()
				self.rightButtonBar.change:setAlpha( 0.27 )
				self.rightButtonBar.change.label:setText( Engine.Localize( "MENU_EMBLEM_CHANGE_DECAL" ) )
				self.rightButtonBar.cut:setAlpha( 1 )
				self.rightButtonBar.cut.label:setText( Engine.Localize( "MENU_EMBLEM_CUT_LAYER" ) )
				self.rightButtonBar.copy:setAlpha( 1 )
				self.rightButtonBar.copy.label:setText( Engine.Localize( "MENU_EMBLEM_COPY_LAYER" ) )
				self.rightButtonBar.new:setAlpha( 1 )
				self.rightButtonBar.new.label:setText( Engine.Localize( "MENU_NEW" ) )
				self.clipFinished( rightButtonBar, {} )

				link:completeAnimation()

				link.label:completeAnimation()
				self.link:setLeftRight( false, false, -70, 0 )
				self.link:setTopBottom( false, true, -34, -3 )
				self.link:setAlpha( 0 )
				self.link.label:setText( Engine.Localize( "MENU_SAVE" ) )
				self.clipFinished( link, {} )

				group:completeAnimation()

				group.label:completeAnimation()
				self.group:setLeftRight( false, false, -70, 20 )
				self.group:setTopBottom( false, true, -34, -3 )
				self.group:setAlpha( 1 )
				self.group.label:setText( Engine.Localize( "MENU_EMBLEMS_UNGROUP" ) )
				self.clipFinished( group, {} )
			end
		},
		BrowseModeOneLayerLinked = {
			DefaultClip = function ()
				self:setupElementClipCounter( 3 )

				rightButtonBar:completeAnimation()

				rightButtonBar.change:completeAnimation()

				rightButtonBar.change.label:completeAnimation()

				rightButtonBar.cut:completeAnimation()

				rightButtonBar.cut.label:completeAnimation()

				rightButtonBar.copy:completeAnimation()

				rightButtonBar.copy.label:completeAnimation()

				rightButtonBar.new:completeAnimation()

				rightButtonBar.new.label:completeAnimation()
				self.rightButtonBar.change:setAlpha( 1 )
				self.rightButtonBar.change.label:setText( Engine.Localize( "MENU_EMBLEM_CHANGE_DECAL" ) )
				self.rightButtonBar.cut:setAlpha( 1 )
				self.rightButtonBar.cut.label:setText( Engine.Localize( "MENU_EMBLEM_CUT_LAYER" ) )
				self.rightButtonBar.copy:setAlpha( 1 )
				self.rightButtonBar.copy.label:setText( Engine.Localize( "MENU_EMBLEM_COPY_LAYER" ) )
				self.rightButtonBar.new:setAlpha( 1 )
				self.rightButtonBar.new.label:setText( Engine.Localize( "MENU_NEW" ) )
				self.clipFinished( rightButtonBar, {} )

				link:completeAnimation()

				link.label:completeAnimation()
				self.link:setLeftRight( false, false, -70, 0 )
				self.link:setTopBottom( false, true, -34, -3 )
				self.link:setAlpha( 1 )
				self.link.label:setText( Engine.Localize( "MENU_EMBLEM_UNLINK_LAYERS" ) )
				self.clipFinished( link, {} )

				group:completeAnimation()

				group.label:completeAnimation()
				self.group:setAlpha( 0 )
				self.group.label:setText( Engine.Localize( "MENU_EMBLEMS_GROUP" ) )
				self.clipFinished( group, {} )
			end
		},
		BrowseMode = {
			DefaultClip = function ()
				self:setupElementClipCounter( 3 )

				rightButtonBar:completeAnimation()

				rightButtonBar.change:completeAnimation()

				rightButtonBar.change.label:completeAnimation()

				rightButtonBar.cut:completeAnimation()

				rightButtonBar.cut.label:completeAnimation()

				rightButtonBar.copy:completeAnimation()

				rightButtonBar.copy.label:completeAnimation()

				rightButtonBar.new:completeAnimation()

				rightButtonBar.new.label:completeAnimation()
				self.rightButtonBar.change:setAlpha( 1 )
				self.rightButtonBar.change.label:setText( Engine.Localize( "MENU_EMBLEM_CHANGE_DECAL" ) )
				self.rightButtonBar.cut:setAlpha( 1 )
				self.rightButtonBar.cut.label:setText( Engine.Localize( "MENU_EMBLEM_CUT_LAYER" ) )
				self.rightButtonBar.copy:setAlpha( 1 )
				self.rightButtonBar.copy.label:setText( Engine.Localize( "MENU_EMBLEM_COPY_LAYER" ) )
				self.rightButtonBar.new:setAlpha( 1 )
				self.rightButtonBar.new.label:setText( Engine.Localize( "MENU_NEW" ) )
				self.clipFinished( rightButtonBar, {} )

				link:completeAnimation()

				link.label:completeAnimation()
				self.link:setLeftRight( false, false, -70, 0 )
				self.link:setTopBottom( false, true, -34, -3 )
				self.link:setAlpha( 1 )
				self.link.label:setText( Engine.Localize( "MENU_EMBLEM_LINK_LAYERS" ) )
				self.clipFinished( link, {} )

				group:completeAnimation()

				group.label:completeAnimation()
				self.group:setAlpha( 0 )
				self.group.label:setText( Engine.Localize( "MENU_EMBLEMS_GROUP" ) )
				self.clipFinished( group, {} )
			end
		},
		GroupsDisabledMode = {
			DefaultClip = function ()
				self:setupElementClipCounter( 3 )

				rightButtonBar:completeAnimation()

				rightButtonBar.change:completeAnimation()

				rightButtonBar.change.label:completeAnimation()

				rightButtonBar.cut:completeAnimation()

				rightButtonBar.cut.label:completeAnimation()

				rightButtonBar.copy:completeAnimation()

				rightButtonBar.copy.label:completeAnimation()

				rightButtonBar.new:completeAnimation()

				rightButtonBar.new.label:completeAnimation()
				self.rightButtonBar.change:setAlpha( 1 )
				self.rightButtonBar.change.label:setText( Engine.Localize( "MENU_EMBLEM_CHANGE_DECAL" ) )
				self.rightButtonBar.cut:setAlpha( 1 )
				self.rightButtonBar.cut.label:setText( Engine.Localize( "MENU_EMBLEM_CUT_LAYER" ) )
				self.rightButtonBar.copy:setAlpha( 1 )
				self.rightButtonBar.copy.label:setText( Engine.Localize( "MENU_EMBLEM_COPY_LAYER" ) )
				self.rightButtonBar.new:setAlpha( 1 )
				self.rightButtonBar.new.label:setText( Engine.Localize( "MENU_NEW" ) )
				self.clipFinished( rightButtonBar, {} )

				link:completeAnimation()

				link.label:completeAnimation()
				self.link:setAlpha( 0 )
				self.link.label:setText( Engine.Localize( "MENU_EMBLEM_LINK_LAYERS" ) )
				self.clipFinished( link, {} )

				group:completeAnimation()

				group.label:completeAnimation()
				self.group:setAlpha( 0 )
				self.group.label:setText( Engine.Localize( "MENU_EMBLEMS_GROUP" ) )
				self.clipFinished( group, {} )
			end
		}
	}

	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.rightButtonBar:close()
		element.link:close()
		element.group:close()
	end )
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
