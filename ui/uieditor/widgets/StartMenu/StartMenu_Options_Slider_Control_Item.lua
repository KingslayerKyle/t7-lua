-- 658a91960ebeff6a4e03e5e43f114cdf
-- This hash is used for caching, delete to decompile the file again

require( "ui.uieditor.widgets.StartMenu.StartMenu_Options_Slider_Item_Arrow" )

local PostLoadFunc = function ( self, controller, menu )
	if CoD.isPC then
		self.m_preventFromBeingCurrentMouseFocus = true
		self:setForceMouseEventDispatch( true )
	end
end

CoD.StartMenu_Options_Slider_Control_Item = InheritFrom( LUI.UIElement )
CoD.StartMenu_Options_Slider_Control_Item.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.StartMenu_Options_Slider_Control_Item )
	self.id = "StartMenu_Options_Slider_Control_Item"
	self.soundSet = "ChooseDecal"
	self:setLeftRight( true, false, 0, 168 )
	self:setTopBottom( true, false, 0, 30 )
	self:makeFocusable()
	self:setHandleMouse( true )
	self.anyChildUsesUpdateState = true
	
	local left = CoD.StartMenu_Options_Slider_Item_Arrow.new( menu, controller )
	left:setLeftRight( true, false, -15, 0 )
	left:setTopBottom( false, false, -6, 6 )
	left:setAlpha( 0.8 )
	left:setZRot( -90 )
	left:registerEventHandler( "button_action", function ( element, event )
		local f3_local0 = nil
		SendButtonPressToMenuEx( menu, controller, Enum.LUIButton.LUI_KEY_LEFT )
		if not f3_local0 then
			f3_local0 = element:dispatchEventToChildren( event )
		end
		return f3_local0
	end )
	self:addElement( left )
	self.left = left
	
	local right = CoD.StartMenu_Options_Slider_Item_Arrow.new( menu, controller )
	right:setLeftRight( false, true, 0, 15 )
	right:setTopBottom( false, false, -6, 6 )
	right:setAlpha( 0.8 )
	right:setYRot( 180 )
	right:setZRot( -90 )
	right:registerEventHandler( "button_action", function ( element, event )
		local f4_local0 = nil
		SendButtonPressToMenuEx( menu, controller, Enum.LUIButton.LUI_KEY_RIGHT )
		if not f4_local0 then
			f4_local0 = element:dispatchEventToChildren( event )
		end
		return f4_local0
	end )
	self:addElement( right )
	self.right = right
	
	local TextBox = LUI.UIText.new()
	TextBox:setLeftRight( true, true, 0, 0 )
	TextBox:setTopBottom( false, false, -10, 10 )
	TextBox:setTTF( "fonts/RefrigeratorDeluxe-Regular.ttf" )
	TextBox:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	TextBox:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE )
	TextBox:linkToElementModel( self, "text", true, function ( model )
		local text = Engine.GetModelValue( model )
		if text then
			TextBox:setText( Engine.Localize( text ) )
		end
	end )
	self:addElement( TextBox )
	self.TextBox = TextBox
	
	self.clipsPerState = {
		DefaultState = {
			DefaultClip = function ()
				self:setupElementClipCounter( 3 )

				left:completeAnimation()
				self.left:setAlpha( 1 )
				self.clipFinished( left, {} )

				right:completeAnimation()
				self.right:setAlpha( 1 )
				self.clipFinished( right, {} )

				TextBox:completeAnimation()
				self.TextBox:setRGB( 1, 1, 1 )
				self.clipFinished( TextBox, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 1 )

				TextBox:completeAnimation()
				self.TextBox:setRGB( ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b )
				self.clipFinished( TextBox, {} )
			end
		},
		ArrowsHidden = {
			DefaultClip = function ()
				self:setupElementClipCounter( 3 )

				left:completeAnimation()
				self.left:setAlpha( 0 )
				self.clipFinished( left, {} )

				right:completeAnimation()
				self.right:setAlpha( 0 )
				self.clipFinished( right, {} )

				TextBox:completeAnimation()
				self.TextBox:setRGB( 1, 1, 1 )
				self.clipFinished( TextBox, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 3 )

				left:completeAnimation()
				self.left:setAlpha( 0 )
				self.clipFinished( left, {} )

				right:completeAnimation()
				self.right:setAlpha( 0 )
				self.clipFinished( right, {} )

				TextBox:completeAnimation()
				self.TextBox:setRGB( 1, 0.41, 0 )
				self.clipFinished( TextBox, {} )
			end
		},
		LeftArrowHidden = {
			DefaultClip = function ()
				self:setupElementClipCounter( 3 )

				left:completeAnimation()
				self.left:setAlpha( 0 )
				self.clipFinished( left, {} )

				right:completeAnimation()
				self.right:setAlpha( 0.8 )
				self.clipFinished( right, {} )

				TextBox:completeAnimation()
				self.TextBox:setRGB( 1, 1, 1 )
				self.clipFinished( TextBox, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 3 )

				left:completeAnimation()
				self.left:setAlpha( 0 )
				self.clipFinished( left, {} )

				right:completeAnimation()
				self.right:setAlpha( 0.8 )
				self.clipFinished( right, {} )

				TextBox:completeAnimation()
				self.TextBox:setRGB( 1, 0.41, 0 )
				self.clipFinished( TextBox, {} )
			end
		},
		RightArrowHidden = {
			DefaultClip = function ()
				self:setupElementClipCounter( 3 )

				left:completeAnimation()
				self.left:setAlpha( 0.8 )
				self.clipFinished( left, {} )

				right:completeAnimation()
				self.right:setAlpha( 0 )
				self.clipFinished( right, {} )

				TextBox:completeAnimation()
				self.TextBox:setRGB( 1, 1, 1 )
				self.clipFinished( TextBox, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 3 )

				left:completeAnimation()
				self.left:setAlpha( 0.8 )
				self.clipFinished( left, {} )

				right:completeAnimation()
				self.right:setAlpha( 0 )
				self.clipFinished( right, {} )

				TextBox:completeAnimation()
				self.TextBox:setRGB( 1, 0.41, 0 )
				self.clipFinished( TextBox, {} )
			end
		}
	}

	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller )
		if IsElementInState( element, "DefaultState" ) then
			SetElementStateByElementName( self, "left", controller, "DefaultState" )
			SetElementStateByElementName( self, "right", controller, "DefaultState" )
			SetElementStateByElementName( self, "left", controller, "DefaultState" )
			SetElementStateByElementName( self, "right", controller, "DefaultState" )
		elseif IsElementInState( element, "ArrowsHidden" ) then
			SetElementStateByElementName( self, "left", controller, "Hidden" )
			SetElementStateByElementName( self, "right", controller, "Hidden" )
			SetElementStateByElementName( self, "left", controller, "Hidden" )
			SetElementStateByElementName( self, "right", controller, "Hidden" )
		end
	end )

	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.left:close()
		element.right:close()
		element.TextBox:close()
	end )
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
