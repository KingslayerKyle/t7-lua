-- 9697d706645648ff942a78057537a31e
-- This hash is used for caching, delete to decompile the file again

require( "ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive" )
require( "ui.uieditor.widgets.BlackMarket.BM_GoldBarMed" )
require( "ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget" )
require( "ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags" )
require( "ui.uieditor.widgets.CAC.cac_lock" )
require( "ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer" )
require( "ui.uieditor.widgets.CAC.cac_LabelNew" )
require( "ui.uieditor.widgets.BlackMarket.DuplicateCounter" )
require( "ui.uieditor.widgets.Promo_Ribbon" )
require( "ui.uieditor.widgets.BlackMarket.BM_Contracts_LockBars" )

local PostLoadFunc = function ( f1_arg0, f1_arg1 )
	f1_arg0:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = element:getModel()
		local f2_local1 = Engine.GetModel( f2_local0, "maxTier" )
		local f2_local2 = Engine.GetModel( f2_local0, "currentTier" )
		local f2_local3 = Engine.GetModel( f2_local0, "xp" )
		if f2_local1 and f2_local2 and f2_local3 then
			SetGlobalModelValue( "maxTier", Engine.GetModelValue( f2_local1 ) )
			SetGlobalModelValue( "currentTier", Engine.GetModelValue( f2_local2 ) )
			SetGlobalModelValue( "tierXP", Engine.GetModelValue( f2_local3 ) )
			element:dispatchEventToParent( {
				name = "update_tier_list",
				controller = f1_arg1
			} )
		end
		if not element.packageCardUpdateTimer and element.includedItems and #element.includedItems > 0 then
			local f2_local4 = Engine.GetModel( f2_local0, "iconId" )
			Engine.SetModelValue( f2_local4, element.includedItems[1] )
			element.lastUsedIndex = 1
			element.packageCardUpdateTimer = LUI.UITimer.newElementTimer( 4000, false, function ( f3_arg0 )
				element.lastUsedIndex = element.lastUsedIndex + 1
				if #element.includedItems < element.lastUsedIndex then
					element.lastUsedIndex = 1
				end
				Engine.SetModelValue( f2_local4, element.includedItems[element.lastUsedIndex] )
			end )
			element:addElement( element.packageCardUpdateTimer )
		end
	end )
	f1_arg0:registerEventHandler( "lose_focus", function ( element, event )
		if element.packageCardUpdateTimer then
			element.packageCardUpdateTimer:close()
			element.packageCardUpdateTimer = nil
		end
	end )
end

CoD.CallingCards_CardWidget = InheritFrom( LUI.UIElement )
CoD.CallingCards_CardWidget.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.CallingCards_CardWidget )
	self.id = "CallingCards_CardWidget"
	self.soundSet = "ChooseDecal"
	self:setLeftRight( true, false, 0, 240 )
	self:setTopBottom( true, false, 0, 60 )
	self:makeFocusable()
	self:setHandleMouse( true )
	self.anyChildUsesUpdateState = true
	
	local BoxButtonLrgInactive = CoD.cac_ButtonBoxLrgInactive.new( menu, controller )
	BoxButtonLrgInactive:setLeftRight( true, true, -2, 2 )
	BoxButtonLrgInactive:setTopBottom( true, true, -2, 2 )
	BoxButtonLrgInactive:setAlpha( 0.8 )
	self:addElement( BoxButtonLrgInactive )
	self.BoxButtonLrgInactive = BoxButtonLrgInactive
	
	local Background = LUI.UIImage.new()
	Background:setLeftRight( true, true, 0, 0 )
	Background:setTopBottom( true, true, 0, 0 )
	Background:setRGB( 0.11, 0.11, 0.11 )
	Background:setAlpha( 0 )
	self:addElement( Background )
	self.Background = Background
	
	local bgImage = LUI.UIImage.new()
	bgImage:setLeftRight( true, true, 0, 0 )
	bgImage:setTopBottom( true, true, 0, 0 )
	bgImage:setRGB( 0.11, 0.11, 0.11 )
	bgImage:setAlpha( 0 )
	self:addElement( bgImage )
	self.bgImage = bgImage
	
	local black = LUI.UIImage.new()
	black:setLeftRight( true, false, 97, 143 )
	black:setTopBottom( true, false, 23.5, 36.5 )
	black:setAlpha( 0 )
	self:addElement( black )
	self.black = black
	
	local BMGoldBarMed = CoD.BM_GoldBarMed.new( menu, controller )
	BMGoldBarMed:setLeftRight( true, false, 21, 219 )
	BMGoldBarMed:setTopBottom( true, false, 23.5, 36.5 )
	BMGoldBarMed:setAlpha( 0 )
	self:addElement( BMGoldBarMed )
	self.BMGoldBarMed = BMGoldBarMed
	
	local blackMarketBrandIcon = LUI.UIImage.new()
	blackMarketBrandIcon:setLeftRight( true, false, 97, 143 )
	blackMarketBrandIcon:setTopBottom( true, false, 7, 53 )
	blackMarketBrandIcon:setAlpha( 0 )
	blackMarketBrandIcon:setImage( RegisterImage( "uie_t7_icon_blackmarket_encryptedicon_large" ) )
	self:addElement( blackMarketBrandIcon )
	self.blackMarketBrandIcon = blackMarketBrandIcon
	
	local CallingCardsFrameWidget = CoD.CallingCards_FrameWidget.new( menu, controller )
	CallingCardsFrameWidget:setLeftRight( false, false, 0, 0 )
	CallingCardsFrameWidget:setTopBottom( false, false, 0, 0 )
	CallingCardsFrameWidget.CardIconFrame:setScale( 0.5 )
	CallingCardsFrameWidget:linkToElementModel( self, nil, false, function ( model )
		CallingCardsFrameWidget:setModel( model, controller )
	end )
	self:addElement( CallingCardsFrameWidget )
	self.CallingCardsFrameWidget = CallingCardsFrameWidget
	
	local PackageImage = LUI.UIImage.new()
	PackageImage:setLeftRight( true, true, 0, 0 )
	PackageImage:setTopBottom( true, true, 0, 0 )
	PackageImage:setAlpha( 0 )
	PackageImage:linkToElementModel( self, "packageImage", true, function ( model )
		local packageImage = Engine.GetModelValue( model )
		if packageImage then
			PackageImage:setImage( RegisterImage( packageImage ) )
		end
	end )
	self:addElement( PackageImage )
	self.PackageImage = PackageImage
	
	local BoxButtonLrgInactiveDiag = CoD.cac_ButtonBoxLrgInactiveDiags.new( menu, controller )
	BoxButtonLrgInactiveDiag:setLeftRight( true, true, -2, 2 )
	BoxButtonLrgInactiveDiag:setTopBottom( true, true, -2, 2 )
	BoxButtonLrgInactiveDiag:setAlpha( 0.15 )
	self:addElement( BoxButtonLrgInactiveDiag )
	self.BoxButtonLrgInactiveDiag = BoxButtonLrgInactiveDiag
	
	local LockedIcon = CoD.cac_lock.new( menu, controller )
	LockedIcon:setLeftRight( false, false, -16, 16 )
	LockedIcon:setTopBottom( false, false, -16, 16 )
	self:addElement( LockedIcon )
	self.LockedIcon = LockedIcon
	
	local FocusBarB = CoD.FE_FocusBarContainer.new( menu, controller )
	FocusBarB:setLeftRight( true, true, -0.5, 0.5 )
	FocusBarB:setTopBottom( false, true, -3, 1 )
	FocusBarB:setAlpha( 0 )
	FocusBarB:setZoom( 1 )
	self:addElement( FocusBarB )
	self.FocusBarB = FocusBarB
	
	local FocusBarT = CoD.FE_FocusBarContainer.new( menu, controller )
	FocusBarT:setLeftRight( true, true, -0.5, 0.5 )
	FocusBarT:setTopBottom( true, false, -1, 3 )
	FocusBarT:setAlpha( 0 )
	FocusBarT:setZoom( 1 )
	self:addElement( FocusBarT )
	self.FocusBarT = FocusBarT
	
	local IconNew = CoD.cac_LabelNew.new( menu, controller )
	IconNew:setLeftRight( false, false, -54, 54 )
	IconNew:setTopBottom( false, false, -11.5, 12.5 )
	IconNew:setAlpha( 0 )
	self:addElement( IconNew )
	self.IconNew = IconNew
	
	local DuplicateCounter = CoD.DuplicateCounter.new( menu, controller )
	DuplicateCounter:setLeftRight( true, false, 2, 22 )
	DuplicateCounter:setTopBottom( true, false, 0, 20 )
	DuplicateCounter:linkToElementModel( self, "rarityType", false, function ( model )
		DuplicateCounter:setModel( model, controller )
	end )
	self:addElement( DuplicateCounter )
	self.DuplicateCounter = DuplicateCounter
	
	local BMPromoRibbon = CoD.Promo_Ribbon.new( menu, controller )
	BMPromoRibbon:setLeftRight( true, false, -8, 115.5 )
	BMPromoRibbon:setTopBottom( true, false, -2, 33 )
	BMPromoRibbon:setAlpha( 0 )
	BMPromoRibbon:linkToElementModel( self, "packageLabel", true, function ( model )
		local packageLabel = Engine.GetModelValue( model )
		if packageLabel then
			BMPromoRibbon.Text:setText( Engine.Localize( packageLabel ) )
		end
	end )
	self:addElement( BMPromoRibbon )
	self.BMPromoRibbon = BMPromoRibbon
	
	local DownloadIcon = LUI.UIImage.new()
	DownloadIcon:setLeftRight( true, false, 192.33, 237.67 )
	DownloadIcon:setTopBottom( true, false, 7.33, 52.67 )
	DownloadIcon:setAlpha( 0 )
	DownloadIcon:setImage( RegisterImage( "uie_t7_icon_contextual_purchase" ) )
	self:addElement( DownloadIcon )
	self.DownloadIcon = DownloadIcon
	
	local BMContractsLockBars = CoD.BM_Contracts_LockBars.new( menu, controller )
	BMContractsLockBars:setLeftRight( true, false, 128.8, 231.8 )
	BMContractsLockBars:setTopBottom( true, false, 11, 46 )
	BMContractsLockBars:setAlpha( 0 )
	self:addElement( BMContractsLockBars )
	self.BMContractsLockBars = BMContractsLockBars
	
	local BMContractsLockBars0 = CoD.BM_Contracts_LockBars.new( menu, controller )
	BMContractsLockBars0:setLeftRight( true, false, 8.8, 112.8 )
	BMContractsLockBars0:setTopBottom( true, false, 11, 46 )
	BMContractsLockBars0:setAlpha( 0 )
	BMContractsLockBars0:setYRot( 180 )
	self:addElement( BMContractsLockBars0 )
	self.BMContractsLockBars0 = BMContractsLockBars0
	
	local bmContractBrandIcon = LUI.UIImage.new()
	bmContractBrandIcon:setLeftRight( true, false, 88, 152 )
	bmContractBrandIcon:setTopBottom( true, false, -2, 62 )
	bmContractBrandIcon:setAlpha( 0 )
	bmContractBrandIcon:setImage( RegisterImage( "uie_t7_bm_special_contracts_logo" ) )
	self:addElement( bmContractBrandIcon )
	self.bmContractBrandIcon = bmContractBrandIcon
	
	BMContractsLockBars.navigation = {
		left = BMContractsLockBars0
	}
	BMContractsLockBars0.navigation = {
		right = BMContractsLockBars
	}
	self.clipsPerState = {
		DefaultState = {
			DefaultClip = function ()
				self:setupElementClipCounter( 16 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 1 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				Background:completeAnimation()
				self.Background:setAlpha( 1 )
				self.clipFinished( Background, {} )

				blackMarketBrandIcon:completeAnimation()
				self.blackMarketBrandIcon:setAlpha( 0 )
				self.clipFinished( blackMarketBrandIcon, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setAlpha( 1 )
				self.clipFinished( CallingCardsFrameWidget, {} )

				PackageImage:completeAnimation()
				self.PackageImage:setAlpha( 0 )
				self.clipFinished( PackageImage, {} )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				LockedIcon:completeAnimation()
				self.LockedIcon:setAlpha( 0 )
				self.clipFinished( LockedIcon, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )

				IconNew:completeAnimation()
				self.IconNew:setAlpha( 0 )
				self.clipFinished( IconNew, {} )

				DuplicateCounter:completeAnimation()
				self.DuplicateCounter:setAlpha( 1 )
				self.clipFinished( DuplicateCounter, {} )

				BMPromoRibbon:completeAnimation()
				self.BMPromoRibbon:setAlpha( 0 )
				self.clipFinished( BMPromoRibbon, {} )

				DownloadIcon:completeAnimation()
				self.DownloadIcon:setAlpha( 0 )
				self.clipFinished( DownloadIcon, {} )

				BMContractsLockBars:completeAnimation()
				self.BMContractsLockBars:setAlpha( 0 )
				self.clipFinished( BMContractsLockBars, {} )

				BMContractsLockBars0:completeAnimation()
				self.BMContractsLockBars0:setAlpha( 0 )
				self.clipFinished( BMContractsLockBars0, {} )

				bmContractBrandIcon:completeAnimation()
				self.bmContractBrandIcon:setAlpha( 0 )
				self.clipFinished( bmContractBrandIcon, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 8 )

				Background:completeAnimation()
				self.Background:setAlpha( 1 )
				self.clipFinished( Background, {} )

				blackMarketBrandIcon:completeAnimation()
				self.blackMarketBrandIcon:setAlpha( 0 )
				self.clipFinished( blackMarketBrandIcon, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setAlpha( 1 )
				self.clipFinished( CallingCardsFrameWidget, {} )

				PackageImage:completeAnimation()
				self.PackageImage:setAlpha( 0 )
				self.clipFinished( PackageImage, {} )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				LockedIcon:completeAnimation()
				self.LockedIcon:setAlpha( 0 )
				self.clipFinished( LockedIcon, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )
			end
		},
		BMClassified = {
			DefaultClip = function ()
				self:setupElementClipCounter( 18 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.8 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				Background:completeAnimation()
				self.Background:setAlpha( 0 )
				self.clipFinished( Background, {} )

				bgImage:completeAnimation()
				self.bgImage:setAlpha( 0 )
				self.clipFinished( bgImage, {} )

				black:completeAnimation()
				self.black:setLeftRight( true, false, 100, 140 )
				self.black:setTopBottom( true, false, 26.5, 33.5 )
				self.black:setRGB( 0.11, 0.11, 0.11 )
				self.black:setAlpha( 1 )
				self.clipFinished( black, {} )

				BMGoldBarMed:completeAnimation()
				self.BMGoldBarMed:setAlpha( 0.9 )
				self.clipFinished( BMGoldBarMed, {} )

				blackMarketBrandIcon:completeAnimation()
				self.blackMarketBrandIcon:setAlpha( 0.9 )
				self.clipFinished( blackMarketBrandIcon, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setAlpha( 0 )
				self.clipFinished( CallingCardsFrameWidget, {} )

				PackageImage:completeAnimation()
				self.PackageImage:setAlpha( 0 )
				self.clipFinished( PackageImage, {} )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				LockedIcon:completeAnimation()
				self.LockedIcon:setAlpha( 0 )
				self.clipFinished( LockedIcon, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )

				DuplicateCounter:completeAnimation()
				self.DuplicateCounter:setAlpha( 0 )
				self.clipFinished( DuplicateCounter, {} )

				BMPromoRibbon:completeAnimation()
				self.BMPromoRibbon:setAlpha( 0 )
				self.clipFinished( BMPromoRibbon, {} )

				DownloadIcon:completeAnimation()
				self.DownloadIcon:setAlpha( 0 )
				self.clipFinished( DownloadIcon, {} )

				BMContractsLockBars:completeAnimation()
				self.BMContractsLockBars:setAlpha( 0 )
				self.clipFinished( BMContractsLockBars, {} )

				BMContractsLockBars0:completeAnimation()
				self.BMContractsLockBars0:setAlpha( 0 )
				self.clipFinished( BMContractsLockBars0, {} )

				bmContractBrandIcon:completeAnimation()
				self.bmContractBrandIcon:setAlpha( 0 )
				self.clipFinished( bmContractBrandIcon, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 11 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 1 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				Background:completeAnimation()
				self.Background:setRGB( 0.11, 0.11, 0.11 )
				self.clipFinished( Background, {} )

				black:completeAnimation()
				self.black:setLeftRight( true, false, 91, 148 )
				self.black:setTopBottom( true, false, 23.5, 36.5 )
				self.black:setAlpha( 0 )
				self.clipFinished( black, {} )

				BMGoldBarMed:completeAnimation()
				self.BMGoldBarMed:setAlpha( 1 )
				self.clipFinished( BMGoldBarMed, {} )

				blackMarketBrandIcon:completeAnimation()
				self.blackMarketBrandIcon:setAlpha( 1 )
				self.clipFinished( blackMarketBrandIcon, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setAlpha( 0 )
				self.clipFinished( CallingCardsFrameWidget, {} )

				PackageImage:completeAnimation()
				self.PackageImage:setAlpha( 0 )
				self.clipFinished( PackageImage, {} )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				LockedIcon:completeAnimation()
				self.LockedIcon:setAlpha( 0 )
				self.clipFinished( LockedIcon, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )
			end
		},
		ContractClassified = {
			DefaultClip = function ()
				self:setupElementClipCounter( 18 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.8 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				Background:completeAnimation()
				self.Background:setAlpha( 0 )
				self.clipFinished( Background, {} )

				bgImage:completeAnimation()
				self.bgImage:setAlpha( 0 )
				self.clipFinished( bgImage, {} )

				black:completeAnimation()
				self.black:setLeftRight( true, false, 100, 140 )
				self.black:setTopBottom( true, false, 26.5, 33.5 )
				self.black:setRGB( 0.11, 0.11, 0.11 )
				self.black:setAlpha( 0 )
				self.clipFinished( black, {} )

				BMGoldBarMed:completeAnimation()
				self.BMGoldBarMed:setAlpha( 0 )
				self.clipFinished( BMGoldBarMed, {} )

				blackMarketBrandIcon:completeAnimation()
				self.blackMarketBrandIcon:setAlpha( 0 )
				self.clipFinished( blackMarketBrandIcon, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setAlpha( 0 )
				self.clipFinished( CallingCardsFrameWidget, {} )

				PackageImage:completeAnimation()
				self.PackageImage:setAlpha( 0 )
				self.clipFinished( PackageImage, {} )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				LockedIcon:completeAnimation()
				self.LockedIcon:setAlpha( 0 )
				self.clipFinished( LockedIcon, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )

				DuplicateCounter:completeAnimation()
				self.DuplicateCounter:setAlpha( 0 )
				self.clipFinished( DuplicateCounter, {} )

				BMPromoRibbon:completeAnimation()
				self.BMPromoRibbon:setAlpha( 0 )
				self.clipFinished( BMPromoRibbon, {} )

				DownloadIcon:completeAnimation()
				self.DownloadIcon:setAlpha( 0 )
				self.clipFinished( DownloadIcon, {} )

				BMContractsLockBars:completeAnimation()
				self.BMContractsLockBars:setAlpha( 1 )
				self.clipFinished( BMContractsLockBars, {} )

				BMContractsLockBars0:completeAnimation()
				self.BMContractsLockBars0:setAlpha( 1 )
				self.clipFinished( BMContractsLockBars0, {} )

				bmContractBrandIcon:completeAnimation()
				self.bmContractBrandIcon:setAlpha( 1 )
				self.clipFinished( bmContractBrandIcon, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 14 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 1 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				Background:completeAnimation()
				self.Background:setRGB( 0.11, 0.11, 0.11 )
				self.clipFinished( Background, {} )

				black:completeAnimation()
				self.black:setLeftRight( true, false, 91, 148 )
				self.black:setTopBottom( true, false, 23.5, 36.5 )
				self.black:setAlpha( 0 )
				self.clipFinished( black, {} )

				BMGoldBarMed:completeAnimation()
				self.BMGoldBarMed:setAlpha( 0 )
				self.clipFinished( BMGoldBarMed, {} )

				blackMarketBrandIcon:completeAnimation()
				self.blackMarketBrandIcon:setAlpha( 0 )
				self.clipFinished( blackMarketBrandIcon, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setAlpha( 0 )
				self.clipFinished( CallingCardsFrameWidget, {} )

				PackageImage:completeAnimation()
				self.PackageImage:setAlpha( 0 )
				self.clipFinished( PackageImage, {} )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				LockedIcon:completeAnimation()
				self.LockedIcon:setAlpha( 0 )
				self.clipFinished( LockedIcon, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )

				BMContractsLockBars:completeAnimation()
				self.BMContractsLockBars:setAlpha( 1 )
				self.clipFinished( BMContractsLockBars, {} )

				BMContractsLockBars0:completeAnimation()
				self.BMContractsLockBars0:setAlpha( 1 )
				self.clipFinished( BMContractsLockBars0, {} )

				bmContractBrandIcon:completeAnimation()
				self.bmContractBrandIcon:setAlpha( 1 )
				self.clipFinished( bmContractBrandIcon, {} )
			end
		},
		Locked = {
			DefaultClip = function ()
				self:setupElementClipCounter( 15 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.8 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				Background:completeAnimation()
				self.Background:setAlpha( 0 )
				self.clipFinished( Background, {} )

				bgImage:completeAnimation()
				self.bgImage:setAlpha( 0 )
				self.clipFinished( bgImage, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setAlpha( 0 )
				self.clipFinished( CallingCardsFrameWidget, {} )

				PackageImage:completeAnimation()
				self.PackageImage:setAlpha( 0 )
				self.clipFinished( PackageImage, {} )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0.15 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				LockedIcon:completeAnimation()
				self.LockedIcon:setAlpha( 1 )
				self.clipFinished( LockedIcon, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )

				DuplicateCounter:completeAnimation()
				self.DuplicateCounter:setAlpha( 0 )
				self.clipFinished( DuplicateCounter, {} )

				BMPromoRibbon:completeAnimation()
				self.BMPromoRibbon:setAlpha( 0 )
				self.clipFinished( BMPromoRibbon, {} )

				DownloadIcon:completeAnimation()
				self.DownloadIcon:setAlpha( 0 )
				self.clipFinished( DownloadIcon, {} )

				BMContractsLockBars:completeAnimation()
				self.BMContractsLockBars:setAlpha( 0 )
				self.clipFinished( BMContractsLockBars, {} )

				BMContractsLockBars0:completeAnimation()
				self.BMContractsLockBars0:setAlpha( 0 )
				self.clipFinished( BMContractsLockBars0, {} )

				bmContractBrandIcon:completeAnimation()
				self.bmContractBrandIcon:setAlpha( 0 )
				self.clipFinished( bmContractBrandIcon, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 8 )

				Background:completeAnimation()
				self.Background:setAlpha( 0 )
				self.clipFinished( Background, {} )

				bgImage:completeAnimation()
				self.bgImage:setAlpha( 0 )
				self.clipFinished( bgImage, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setAlpha( 0 )
				self.clipFinished( CallingCardsFrameWidget, {} )

				PackageImage:completeAnimation()
				self.PackageImage:setAlpha( 0 )
				self.clipFinished( PackageImage, {} )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0.15 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				LockedIcon:completeAnimation()
				self.LockedIcon:setAlpha( 1 )
				self.clipFinished( LockedIcon, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )
			end
		},
		Package = {
			DefaultClip = function ()
				self:setupElementClipCounter( 16 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 1 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				Background:completeAnimation()
				self.Background:setAlpha( 1 )
				self.clipFinished( Background, {} )

				blackMarketBrandIcon:completeAnimation()
				self.blackMarketBrandIcon:setAlpha( 0 )
				self.clipFinished( blackMarketBrandIcon, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setAlpha( 0 )
				self.clipFinished( CallingCardsFrameWidget, {} )

				PackageImage:completeAnimation()
				self.PackageImage:setAlpha( 1 )
				self.clipFinished( PackageImage, {} )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				LockedIcon:completeAnimation()
				self.LockedIcon:setAlpha( 0 )
				self.clipFinished( LockedIcon, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )

				IconNew:completeAnimation()
				self.IconNew:setAlpha( 0 )
				self.clipFinished( IconNew, {} )

				DuplicateCounter:completeAnimation()
				self.DuplicateCounter:setAlpha( 1 )
				self.clipFinished( DuplicateCounter, {} )

				BMPromoRibbon:completeAnimation()
				self.BMPromoRibbon:setAlpha( 1 )
				self.clipFinished( BMPromoRibbon, {} )

				DownloadIcon:completeAnimation()
				self.DownloadIcon:setAlpha( 1 )
				self.DownloadIcon:setScale( 1 )
				self.clipFinished( DownloadIcon, {} )

				BMContractsLockBars:completeAnimation()
				self.BMContractsLockBars:setAlpha( 0 )
				self.clipFinished( BMContractsLockBars, {} )

				BMContractsLockBars0:completeAnimation()
				self.BMContractsLockBars0:setAlpha( 0 )
				self.clipFinished( BMContractsLockBars0, {} )

				bmContractBrandIcon:completeAnimation()
				self.bmContractBrandIcon:setAlpha( 0 )
				self.clipFinished( bmContractBrandIcon, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 10 )

				Background:completeAnimation()
				self.Background:setAlpha( 1 )
				self.clipFinished( Background, {} )

				blackMarketBrandIcon:completeAnimation()
				self.blackMarketBrandIcon:setAlpha( 0 )
				self.clipFinished( blackMarketBrandIcon, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setAlpha( 0 )
				self.clipFinished( CallingCardsFrameWidget, {} )

				PackageImage:completeAnimation()
				self.PackageImage:setAlpha( 1 )
				self.clipFinished( PackageImage, {} )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				LockedIcon:completeAnimation()
				self.LockedIcon:setAlpha( 0 )
				self.clipFinished( LockedIcon, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )

				BMPromoRibbon:completeAnimation()
				self.BMPromoRibbon:setAlpha( 1 )
				self.clipFinished( BMPromoRibbon, {} )

				DownloadIcon:completeAnimation()
				self.DownloadIcon:setAlpha( 1 )
				self.clipFinished( DownloadIcon, {} )
			end
		},
		New = {
			DefaultClip = function ()
				self:setupElementClipCounter( 17 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 0.8 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				Background:completeAnimation()
				self.Background:setAlpha( 0 )
				self.clipFinished( Background, {} )

				bgImage:completeAnimation()
				self.bgImage:setAlpha( 0 )
				self.clipFinished( bgImage, {} )

				blackMarketBrandIcon:completeAnimation()
				self.blackMarketBrandIcon:setAlpha( 0 )
				self.clipFinished( blackMarketBrandIcon, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setAlpha( 1 )
				self.clipFinished( CallingCardsFrameWidget, {} )

				PackageImage:completeAnimation()
				self.PackageImage:setAlpha( 0 )
				self.clipFinished( PackageImage, {} )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				LockedIcon:completeAnimation()
				self.LockedIcon:setAlpha( 0 )
				self.clipFinished( LockedIcon, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )

				IconNew:completeAnimation()
				self.IconNew:setAlpha( 1 )
				self.clipFinished( IconNew, {} )

				DuplicateCounter:completeAnimation()
				self.DuplicateCounter:setAlpha( 1 )
				self.clipFinished( DuplicateCounter, {} )

				BMPromoRibbon:completeAnimation()
				self.BMPromoRibbon:setAlpha( 0 )
				self.clipFinished( BMPromoRibbon, {} )

				DownloadIcon:completeAnimation()
				self.DownloadIcon:setAlpha( 0 )
				self.clipFinished( DownloadIcon, {} )

				BMContractsLockBars:completeAnimation()
				self.BMContractsLockBars:setAlpha( 0 )
				self.clipFinished( BMContractsLockBars, {} )

				BMContractsLockBars0:completeAnimation()
				self.BMContractsLockBars0:setAlpha( 0 )
				self.clipFinished( BMContractsLockBars0, {} )

				bmContractBrandIcon:completeAnimation()
				self.bmContractBrandIcon:setAlpha( 0 )
				self.clipFinished( bmContractBrandIcon, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 11 )

				BoxButtonLrgInactive:completeAnimation()
				self.BoxButtonLrgInactive:setAlpha( 1 )
				self.clipFinished( BoxButtonLrgInactive, {} )

				Background:completeAnimation()
				self.Background:setAlpha( 0 )
				self.clipFinished( Background, {} )

				bgImage:completeAnimation()
				self.bgImage:setAlpha( 0 )
				self.clipFinished( bgImage, {} )

				blackMarketBrandIcon:completeAnimation()
				self.blackMarketBrandIcon:setAlpha( 0 )
				self.clipFinished( blackMarketBrandIcon, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setAlpha( 1 )
				self.clipFinished( CallingCardsFrameWidget, {} )

				PackageImage:completeAnimation()
				self.PackageImage:setAlpha( 0 )
				self.clipFinished( PackageImage, {} )

				BoxButtonLrgInactiveDiag:completeAnimation()
				self.BoxButtonLrgInactiveDiag:setAlpha( 0 )
				self.clipFinished( BoxButtonLrgInactiveDiag, {} )

				LockedIcon:completeAnimation()
				self.LockedIcon:setAlpha( 0 )
				self.clipFinished( LockedIcon, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )

				IconNew:completeAnimation()
				self.IconNew:setAlpha( 1 )
				self.clipFinished( IconNew, {} )
			end
		}
	}

	self:mergeStateConditions( {
		{
			stateName = "BMClassified",
			condition = function ( menu, element, event )
				return IsSelfModelValueTrue( element, controller, "isBMClassified" )
			end
		},
		{
			stateName = "ContractClassified",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Locked",
			condition = function ( menu, element, event )
				return IsSelfModelValueTrue( element, controller, "isLocked" )
			end
		},
		{
			stateName = "Package",
			condition = function ( menu, element, event )
				return IsSelfModelValueTrue( element, controller, "isPackage" )
			end
		},
		{
			stateName = "New",
			condition = function ( menu, element, event )
				return CallingCards_IsNew( element, controller )
			end
		}
	} )
	self:linkToElementModel( self, "isBMClassified", true, function ( model )
		menu:updateElementState( self, {
			name = "model_validation",
			menu = menu,
			modelValue = Engine.GetModelValue( model ),
			modelName = "isBMClassified"
		} )
	end )
	self:linkToElementModel( self, "isLocked", true, function ( model )
		menu:updateElementState( self, {
			name = "model_validation",
			menu = menu,
			modelValue = Engine.GetModelValue( model ),
			modelName = "isLocked"
		} )
	end )
	self:linkToElementModel( self, "isPackage", true, function ( model )
		menu:updateElementState( self, {
			name = "model_validation",
			menu = menu,
			modelValue = Engine.GetModelValue( model ),
			modelName = "isPackage"
		} )
	end )
	CoD.Menu.AddNavigationHandler( menu, self, controller )
	BMContractsLockBars.id = "BMContractsLockBars"
	BMContractsLockBars0.id = "BMContractsLockBars0"
	self:registerEventHandler( "gain_focus", function ( element, event )
		if element.m_focusable and element.BMContractsLockBars:processEvent( event ) then
			return true
		else
			return LUI.UIElement.gainFocus( element, event )
		end
	end )

	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.BoxButtonLrgInactive:close()
		element.BMGoldBarMed:close()
		element.CallingCardsFrameWidget:close()
		element.BoxButtonLrgInactiveDiag:close()
		element.LockedIcon:close()
		element.FocusBarB:close()
		element.FocusBarT:close()
		element.IconNew:close()
		element.DuplicateCounter:close()
		element.BMPromoRibbon:close()
		element.BMContractsLockBars:close()
		element.BMContractsLockBars0:close()
		element.PackageImage:close()
	end )
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
