-- 375b0f9401bd7151f80635343dc3dca0
-- This hash is used for caching, delete to decompile the file again

require( "ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel" )
require( "ui.uieditor.widgets.CAC.NewBreadcrumb" )

CoD.BM_Contracts_AAR_title = InheritFrom( LUI.UIElement )
CoD.BM_Contracts_AAR_title.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.BM_Contracts_AAR_title )
	self.id = "BM_Contracts_AAR_title"
	self.soundSet = "ChooseDecal"
	self:setLeftRight( true, false, 0, 120 )
	self:setTopBottom( true, false, 0, 33 )
	self.anyChildUsesUpdateState = true
	
	local FEButtonPanel0 = CoD.FE_ButtonPanel.new( menu, controller )
	FEButtonPanel0:setLeftRight( true, true, 0, 0 )
	FEButtonPanel0:setTopBottom( true, true, 2, -1.95 )
	FEButtonPanel0:setRGB( 0, 0, 0 )
	FEButtonPanel0:setAlpha( 0 )
	self:addElement( FEButtonPanel0 )
	self.FEButtonPanel0 = FEButtonPanel0
	
	local SubTitle = LUI.UIText.new()
	SubTitle:setLeftRight( true, true, 7, -7 )
	SubTitle:setTopBottom( true, false, 6.5, 26.5 )
	SubTitle:setText( Engine.Localize( "SOMETHING" ) )
	SubTitle:setTTF( "fonts/RefrigeratorDeluxe-Regular.ttf" )
	SubTitle:setLetterSpacing( 0.5 )
	SubTitle:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_LEFT )
	SubTitle:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	self:addElement( SubTitle )
	self.SubTitle = SubTitle
	
	local newIcon = CoD.NewBreadcrumb.new( menu, controller )
	newIcon:setLeftRight( false, true, 0, 12 )
	newIcon:setTopBottom( false, false, -6, 6 )
	newIcon:setAlpha( 0 )
	self:addElement( newIcon )
	self.newIcon = newIcon
	
	self.clipsPerState = {
		DefaultState = {
			DefaultClip = function ()
				self:setupElementClipCounter( 2 )

				FEButtonPanel0:completeAnimation()
				self.FEButtonPanel0:setLeftRight( true, true, 0, 0 )
				self.FEButtonPanel0:setTopBottom( true, true, 2, -1.95 )
				self.clipFinished( FEButtonPanel0, {} )

				newIcon:completeAnimation()
				self.newIcon:setAlpha( 0 )
				self.clipFinished( newIcon, {} )
			end
		},
		HasNew = {
			DefaultClip = function ()
				self:setupElementClipCounter( 2 )

				FEButtonPanel0:completeAnimation()
				self.FEButtonPanel0:setLeftRight( true, true, 0, 14 )
				self.FEButtonPanel0:setTopBottom( true, true, 2, -1.95 )
				self.clipFinished( FEButtonPanel0, {} )

				newIcon:completeAnimation()
				self.newIcon:setAlpha( 1 )
				self.clipFinished( newIcon, {} )
			end
		}
	}

	self:mergeStateConditions( {
		{
			stateName = "HasNew",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} )

	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.FEButtonPanel0:close()
		element.newIcon:close()
	end )
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
