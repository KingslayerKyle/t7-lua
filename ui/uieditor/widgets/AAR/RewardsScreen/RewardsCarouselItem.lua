-- 8df86ec0f152bdf1bbd667b099e617dc
-- This hash is used for caching, delete to decompile the file again

require( "ui.uieditor.widgets.AAR.RewardsScreen.RewardsCarouselItemInternal" )
require( "ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer" )
require( "ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr" )

CoD.RewardsCarouselItem = InheritFrom( LUI.UIElement )
CoD.RewardsCarouselItem.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.RewardsCarouselItem )
	self.id = "RewardsCarouselItem"
	self.soundSet = "HUD"
	self:setLeftRight( true, false, 0, 276 )
	self:setTopBottom( true, false, 0, 444 )
	self:makeFocusable()
	self:setHandleMouse( true )
	self.anyChildUsesUpdateState = true
	
	local RewardsCarouselItemInternal = CoD.RewardsCarouselItemInternal.new( menu, controller )
	RewardsCarouselItemInternal:setLeftRight( true, true, 0, 0 )
	RewardsCarouselItemInternal:setTopBottom( true, true, 0, 0 )
	RewardsCarouselItemInternal.IndividualRewardItem1.Border:setRGB( 0.75, 0.75, 0.75 )
	RewardsCarouselItemInternal.IndividualRewardItem2.Border:setRGB( 0.75, 0.75, 0.75 )
	RewardsCarouselItemInternal.IndividualRewardItem3.Border:setRGB( 0.75, 0.75, 0.75 )
	RewardsCarouselItemInternal.IndividualRewardItem4.Border:setRGB( 0.75, 0.75, 0.75 )
	RewardsCarouselItemInternal:linkToElementModel( self, nil, false, function ( model )
		RewardsCarouselItemInternal:setModel( model, controller )
	end )
	self:addElement( RewardsCarouselItemInternal )
	self.RewardsCarouselItemInternal = RewardsCarouselItemInternal
	
	local FocusBarB = CoD.FE_FocusBarContainer.new( menu, controller )
	FocusBarB:setLeftRight( true, true, -6, 6 )
	FocusBarB:setTopBottom( false, true, 0, -3 )
	FocusBarB:setAlpha( 0 )
	FocusBarB:setZoom( 1 )
	self:addElement( FocusBarB )
	self.FocusBarB = FocusBarB
	
	local FocusBarT = CoD.FE_FocusBarContainer.new( menu, controller )
	FocusBarT:setLeftRight( true, true, -6, 6 )
	FocusBarT:setTopBottom( true, false, 0, 4 )
	FocusBarT:setAlpha( 0 )
	FocusBarT:setZoom( 1 )
	self:addElement( FocusBarT )
	self.FocusBarT = FocusBarT
	
	local FETitleNumBrdr0 = CoD.FE_TitleNumBrdr.new( menu, controller )
	FETitleNumBrdr0:setLeftRight( false, false, -138, 138 )
	FETitleNumBrdr0:setTopBottom( false, false, -220, 220 )
	self:addElement( FETitleNumBrdr0 )
	self.FETitleNumBrdr0 = FETitleNumBrdr0
	
	local FocusBarB00 = CoD.FE_FocusBarContainer.new( menu, controller )
	FocusBarB00:setLeftRight( false, false, -142, 142 )
	FocusBarB00:setTopBottom( false, false, -216, -222 )
	FocusBarB00:setAlpha( 0 )
	FocusBarB00:setZRot( -180 )
	FocusBarB00:setZoom( 1 )
	self:addElement( FocusBarB00 )
	self.FocusBarB00 = FocusBarB00
	
	local FocusBarB0 = CoD.FE_FocusBarContainer.new( menu, controller )
	FocusBarB0:setLeftRight( false, false, -142, 142 )
	FocusBarB0:setTopBottom( false, false, 221, 217 )
	FocusBarB0:setAlpha( 0 )
	FocusBarB0:setZoom( 1 )
	self:addElement( FocusBarB0 )
	self.FocusBarB0 = FocusBarB0
	
	self.clipsPerState = {
		DefaultState = {
			DefaultClip = function ()
				self:setupElementClipCounter( 6 )

				RewardsCarouselItemInternal:completeAnimation()

				RewardsCarouselItemInternal.FEButtonPanel0:completeAnimation()

				RewardsCarouselItemInternal.IndividualRewardItem1.Border:completeAnimation()

				RewardsCarouselItemInternal.IndividualRewardItem2.Border:completeAnimation()

				RewardsCarouselItemInternal.IndividualRewardItem3.Border:completeAnimation()

				RewardsCarouselItemInternal.IndividualRewardItem4.Border:completeAnimation()
				self.RewardsCarouselItemInternal:setScale( 1 )
				self.RewardsCarouselItemInternal.FEButtonPanel0:setAlpha( 0.5 )
				self.RewardsCarouselItemInternal.IndividualRewardItem1.Border:setRGB( 0.37, 0.37, 0.37 )
				self.RewardsCarouselItemInternal.IndividualRewardItem2.Border:setRGB( 0.37, 0.37, 0.37 )
				self.RewardsCarouselItemInternal.IndividualRewardItem3.Border:setRGB( 0.37, 0.37, 0.37 )
				self.RewardsCarouselItemInternal.IndividualRewardItem4.Border:setRGB( 0.37, 0.37, 0.37 )
				self.clipFinished( RewardsCarouselItemInternal, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )

				FETitleNumBrdr0:completeAnimation()
				self.FETitleNumBrdr0:setAlpha( 0 )
				self.clipFinished( FETitleNumBrdr0, {} )

				FocusBarB00:completeAnimation()
				self.FocusBarB00:setAlpha( 0 )
				self.clipFinished( FocusBarB00, {} )

				FocusBarB0:completeAnimation()
				self.FocusBarB0:setAlpha( 0 )
				self.clipFinished( FocusBarB0, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 6 )

				RewardsCarouselItemInternal:completeAnimation()

				RewardsCarouselItemInternal.FEButtonPanel0:completeAnimation()

				RewardsCarouselItemInternal.IndividualRewardItem1.Border:completeAnimation()

				RewardsCarouselItemInternal.IndividualRewardItem2.Border:completeAnimation()

				RewardsCarouselItemInternal.IndividualRewardItem3.Border:completeAnimation()

				RewardsCarouselItemInternal.IndividualRewardItem4.Border:completeAnimation()
				self.RewardsCarouselItemInternal:setScale( 1.1 )
				self.RewardsCarouselItemInternal.FEButtonPanel0:setAlpha( 0.75 )
				self.RewardsCarouselItemInternal.IndividualRewardItem1.Border:setRGB( 0.67, 0.67, 0.67 )
				self.RewardsCarouselItemInternal.IndividualRewardItem2.Border:setRGB( 0.67, 0.67, 0.67 )
				self.RewardsCarouselItemInternal.IndividualRewardItem3.Border:setRGB( 0.67, 0.67, 0.67 )
				self.RewardsCarouselItemInternal.IndividualRewardItem4.Border:setRGB( 0.67, 0.67, 0.67 )
				self.clipFinished( RewardsCarouselItemInternal, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setLeftRight( true, true, -15, 15 )
				self.FocusBarB:setTopBottom( false, true, 19, 23 )
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setLeftRight( true, true, -15, 15 )
				self.FocusBarT:setTopBottom( true, false, -23, -19 )
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )

				FETitleNumBrdr0:completeAnimation()
				self.FETitleNumBrdr0:setAlpha( 0 )
				self.clipFinished( FETitleNumBrdr0, {} )

				FocusBarB00:completeAnimation()
				self.FocusBarB00:setAlpha( 0 )
				self.clipFinished( FocusBarB00, {} )

				FocusBarB0:completeAnimation()
				self.FocusBarB0:setAlpha( 0 )
				self.clipFinished( FocusBarB0, {} )
			end,
			GainFocus = function ()
				self:setupElementClipCounter( 4 )

				local RewardsCarouselItemInternalFrame2 = function ( RewardsCarouselItemInternal, event )
					local RewardsCarouselItemInternalFrame3 = function ( RewardsCarouselItemInternal, event )
						if not event.interrupted then
							RewardsCarouselItemInternal:beginAnimation( "keyframe", 60, false, true, CoD.TweenType.Linear )
							RewardsCarouselItemInternal.Bg:beginAnimation( "subkeyframe", 60, false, true, CoD.TweenType.Linear )
							RewardsCarouselItemInternal.FEButtonPanel0:beginAnimation( "subkeyframe", 60, false, true, CoD.TweenType.Linear )
							RewardsCarouselItemInternal.IndividualRewardItem1.Border:beginAnimation( "subkeyframe", 60, false, true, CoD.TweenType.Linear )
							RewardsCarouselItemInternal.IndividualRewardItem2.Border:beginAnimation( "subkeyframe", 60, false, true, CoD.TweenType.Linear )
							RewardsCarouselItemInternal.IndividualRewardItem3.Border:beginAnimation( "subkeyframe", 60, false, true, CoD.TweenType.Linear )
							RewardsCarouselItemInternal.IndividualRewardItem4.Border:beginAnimation( "subkeyframe", 60, false, true, CoD.TweenType.Linear )
						end
						RewardsCarouselItemInternal:setScale( 1.1 )
						RewardsCarouselItemInternal.Bg:setAlpha( 0.8 )
						RewardsCarouselItemInternal.FEButtonPanel0:setAlpha( 0.75 )
						RewardsCarouselItemInternal.IndividualRewardItem1.Border:setRGB( 1, 1, 1 )
						RewardsCarouselItemInternal.IndividualRewardItem2.Border:setRGB( 1, 1, 1 )
						RewardsCarouselItemInternal.IndividualRewardItem3.Border:setRGB( 1, 1, 1 )
						RewardsCarouselItemInternal.IndividualRewardItem4.Border:setRGB( 1, 1, 1 )
						if event.interrupted then
							self.clipFinished( RewardsCarouselItemInternal, event )
						else
							RewardsCarouselItemInternal:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						RewardsCarouselItemInternalFrame3( RewardsCarouselItemInternal, event )
						return 
					else
						RewardsCarouselItemInternal:beginAnimation( "keyframe", 90, false, true, CoD.TweenType.Linear )
						RewardsCarouselItemInternal.FEButtonPanel0:beginAnimation( "subkeyframe", 90, false, true, CoD.TweenType.Linear )
						RewardsCarouselItemInternal:setScale( 1.15 )
						RewardsCarouselItemInternal.FEButtonPanel0:setAlpha( 0.53 )
						RewardsCarouselItemInternal:registerEventHandler( "transition_complete_keyframe", RewardsCarouselItemInternalFrame3 )
					end
				end
				
				RewardsCarouselItemInternal:completeAnimation()

				RewardsCarouselItemInternal.Bg:completeAnimation()

				RewardsCarouselItemInternal.FEButtonPanel0:completeAnimation()

				RewardsCarouselItemInternal.IndividualRewardItem1.Border:completeAnimation()

				RewardsCarouselItemInternal.IndividualRewardItem2.Border:completeAnimation()

				RewardsCarouselItemInternal.IndividualRewardItem3.Border:completeAnimation()

				RewardsCarouselItemInternal.IndividualRewardItem4.Border:completeAnimation()
				self.RewardsCarouselItemInternal:setScale( 1 )
				self.RewardsCarouselItemInternal.Bg:setAlpha( 0.8 )
				self.RewardsCarouselItemInternal.FEButtonPanel0:setAlpha( 0.1 )
				self.RewardsCarouselItemInternal.IndividualRewardItem1.Border:setRGB( 1, 1, 1 )
				self.RewardsCarouselItemInternal.IndividualRewardItem2.Border:setRGB( 1, 1, 1 )
				self.RewardsCarouselItemInternal.IndividualRewardItem3.Border:setRGB( 1, 1, 1 )
				self.RewardsCarouselItemInternal.IndividualRewardItem4.Border:setRGB( 1, 1, 1 )
				RewardsCarouselItemInternalFrame2( RewardsCarouselItemInternal, {} )

				FETitleNumBrdr0:completeAnimation()
				self.FETitleNumBrdr0:setAlpha( 0 )
				self.clipFinished( FETitleNumBrdr0, {} )

				FocusBarB00:completeAnimation()
				self.FocusBarB00:setAlpha( 0 )
				self.clipFinished( FocusBarB00, {} )

				FocusBarB0:completeAnimation()
				self.FocusBarB0:setAlpha( 0 )
				self.clipFinished( FocusBarB0, {} )
			end,
			Over = function ()
				self:setupElementClipCounter( 6 )

				RewardsCarouselItemInternal:completeAnimation()

				RewardsCarouselItemInternal.FEButtonPanel0:completeAnimation()

				RewardsCarouselItemInternal.IndividualRewardItem1.Border:completeAnimation()

				RewardsCarouselItemInternal.IndividualRewardItem2.Border:completeAnimation()

				RewardsCarouselItemInternal.IndividualRewardItem3.Border:completeAnimation()

				RewardsCarouselItemInternal.IndividualRewardItem4.Border:completeAnimation()
				self.RewardsCarouselItemInternal:setScale( 1 )
				self.RewardsCarouselItemInternal.FEButtonPanel0:setAlpha( 0.5 )
				self.RewardsCarouselItemInternal.IndividualRewardItem1.Border:setRGB( 0.37, 0.37, 0.37 )
				self.RewardsCarouselItemInternal.IndividualRewardItem2.Border:setRGB( 0.37, 0.37, 0.37 )
				self.RewardsCarouselItemInternal.IndividualRewardItem3.Border:setRGB( 0.37, 0.37, 0.37 )
				self.RewardsCarouselItemInternal.IndividualRewardItem4.Border:setRGB( 0.37, 0.37, 0.37 )
				self.clipFinished( RewardsCarouselItemInternal, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )

				FETitleNumBrdr0:completeAnimation()
				self.FETitleNumBrdr0:setLeftRight( false, false, -138, 138 )
				self.FETitleNumBrdr0:setTopBottom( false, false, -220, 220 )
				self.FETitleNumBrdr0:setAlpha( 1 )
				self.clipFinished( FETitleNumBrdr0, {} )

				FocusBarB00:completeAnimation()
				self.FocusBarB00:setLeftRight( false, false, -142, 142 )
				self.FocusBarB00:setTopBottom( false, false, -216, -222 )
				self.FocusBarB00:setAlpha( 1 )
				self.clipFinished( FocusBarB00, {} )

				FocusBarB0:completeAnimation()
				self.FocusBarB0:setLeftRight( false, false, -142, 142 )
				self.FocusBarB0:setTopBottom( false, false, 221, 217 )
				self.FocusBarB0:setAlpha( 1 )
				self.clipFinished( FocusBarB0, {} )
			end
		}
	}

	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.RewardsCarouselItemInternal:close()
		element.FocusBarB:close()
		element.FocusBarT:close()
		element.FETitleNumBrdr0:close()
		element.FocusBarB00:close()
		element.FocusBarB0:close()
	end )
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
