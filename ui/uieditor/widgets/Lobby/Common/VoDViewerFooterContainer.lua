-- 9ca23df2ac1c7e7a3b94f7270f0ba815
-- This hash is used for caching, delete to decompile the file again

require( "ui.uieditor.widgets.Lobby.Common.VoDViewerFooter" )

CoD.VoDViewerFooterContainer = InheritFrom( LUI.UIElement )
CoD.VoDViewerFooterContainer.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.VoDViewerFooterContainer )
	self.id = "VoDViewerFooterContainer"
	self.soundSet = "default"
	self:setLeftRight( true, false, 0, 1280 )
	self:setTopBottom( true, false, 0, 720 )
	self.anyChildUsesUpdateState = true
	
	local LiveEventViewerFooter0 = CoD.VoDViewerFooter.new( menu, controller )
	LiveEventViewerFooter0:setLeftRight( true, true, 0, 0 )
	LiveEventViewerFooter0:setTopBottom( false, true, -65, 0 )
	LiveEventViewerFooter0:registerEventHandler( "menu_loaded", function ( element, event )
		local f2_local0 = nil
		SizeToSafeArea( element, controller )
		if not f2_local0 then
			f2_local0 = element:dispatchEventToChildren( event )
		end
		return f2_local0
	end )
	self:addElement( LiveEventViewerFooter0 )
	self.LiveEventViewerFooter0 = LiveEventViewerFooter0
	
	LiveEventViewerFooter0:setModel( menu.buttonModel, controller )

	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.LiveEventViewerFooter0:close()
	end )
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
