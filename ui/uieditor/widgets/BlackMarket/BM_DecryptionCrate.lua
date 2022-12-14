-- 31d7742c45ce4c266f1fa7f90898ae68
-- This hash is used for caching, delete to decompile the file again

require( "ui.uieditor.widgets.BlackMarket.smokewidget" )
require( "ui.uieditor.widgets.BlackMarket.fx_Ember2" )
require( "ui.uieditor.widgets.BlackMarket.fx_Ember" )
require( "ui.uieditor.widgets.BlackMarket.fx_glow" )

CoD.BM_DecryptionCrate = InheritFrom( LUI.UIElement )
CoD.BM_DecryptionCrate.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.BM_DecryptionCrate )
	self.id = "BM_DecryptionCrate"
	self.soundSet = "default"
	self:setLeftRight( true, false, 0, 79 )
	self:setTopBottom( true, false, 0, 79 )
	self.anyChildUsesUpdateState = true
	
	local glow00 = LUI.UIImage.new()
	glow00:setLeftRight( false, false, -67.4, 69.4 )
	glow00:setTopBottom( true, false, -27.96, 108.04 )
	glow00:setRGB( 0.22, 0.93, 0.93 )
	glow00:setAlpha( 0 )
	glow00:setImage( RegisterImage( "uie_t7_blackmarket_crate_whiteglow" ) )
	self:addElement( glow00 )
	self.glow00 = glow00
	
	local BundleOnOpen = LUI.UIImage.new()
	BundleOnOpen:setLeftRight( false, false, -83, 84 )
	BundleOnOpen:setTopBottom( true, false, -46, 124 )
	BundleOnOpen:setAlpha( 0 )
	BundleOnOpen:setScale( 1.15 )
	BundleOnOpen:setImage( RegisterImage( "uie_t7_blackmarket_crate_bundle_open" ) )
	self:addElement( BundleOnOpen )
	self.BundleOnOpen = BundleOnOpen
	
	local SixPackCommonBundleOnOpen = LUI.UIImage.new()
	SixPackCommonBundleOnOpen:setLeftRight( false, false, -83, 84 )
	SixPackCommonBundleOnOpen:setTopBottom( true, false, -46, 124 )
	SixPackCommonBundleOnOpen:setAlpha( 0 )
	SixPackCommonBundleOnOpen:setScale( 1.15 )
	SixPackCommonBundleOnOpen:setImage( RegisterImage( "uie_t7_blackmarket_6pack_commons_open" ) )
	self:addElement( SixPackCommonBundleOnOpen )
	self.SixPackCommonBundleOnOpen = SixPackCommonBundleOnOpen
	
	local smokewidget = CoD.smokewidget.new( menu, controller )
	smokewidget:setLeftRight( true, false, -41.25, 128.35 )
	smokewidget:setTopBottom( true, false, -76.96, 101.54 )
	smokewidget:setAlpha( 0 )
	smokewidget:setScale( 1.2 )
	smokewidget:setRFTMaterial( LUI.UIImage.GetCachedMaterial( "ui_add" ) )
	self:addElement( smokewidget )
	self.smokewidget = smokewidget
	
	local fxEmber2 = CoD.fx_Ember2.new( menu, controller )
	fxEmber2:setLeftRight( true, false, -28.45, 115.55 )
	fxEmber2:setTopBottom( true, false, -61.96, 118.04 )
	fxEmber2:setAlpha( 0 )
	fxEmber2:setScale( 1.2 )
	fxEmber2:setRFTMaterial( LUI.UIImage.GetCachedMaterial( "ui_add" ) )
	self:addElement( fxEmber2 )
	self.fxEmber2 = fxEmber2
	
	local fxEmber = CoD.fx_Ember.new( menu, controller )
	fxEmber:setLeftRight( true, false, -32.25, 119.35 )
	fxEmber:setTopBottom( true, false, -49.46, 140.04 )
	fxEmber:setAlpha( 0 )
	fxEmber:setScale( 1.2 )
	fxEmber:setRFTMaterial( LUI.UIImage.GetCachedMaterial( "ui_add" ) )
	self:addElement( fxEmber )
	self.fxEmber = fxEmber
	
	local RareOn = LUI.UIImage.new()
	RareOn:setLeftRight( false, false, -67.4, 69.4 )
	RareOn:setTopBottom( true, false, -28.46, 107.54 )
	RareOn:setAlpha( 0 )
	RareOn:setImage( RegisterImage( "uie_t7_blackmarket_crate_rare_focus" ) )
	self:addElement( RareOn )
	self.RareOn = RareOn
	
	local CommonOn = LUI.UIImage.new()
	CommonOn:setLeftRight( false, false, -67.4, 69.4 )
	CommonOn:setTopBottom( true, false, -28.46, 107.54 )
	CommonOn:setAlpha( 0 )
	CommonOn:setImage( RegisterImage( "uie_t7_blackmarket_crate_common_focus" ) )
	self:addElement( CommonOn )
	self.CommonOn = CommonOn
	
	local fxglow = CoD.fx_glow.new( menu, controller )
	fxglow:setLeftRight( true, false, -27.9, 108.9 )
	fxglow:setTopBottom( true, false, -28.46, 107.54 )
	fxglow:setAlpha( 0 )
	self:addElement( fxglow )
	self.fxglow = fxglow
	
	local glow0 = LUI.UIImage.new()
	glow0:setLeftRight( false, false, -67.4, 69.4 )
	glow0:setTopBottom( true, false, -27.96, 108.04 )
	glow0:setAlpha( 0 )
	glow0:setImage( RegisterImage( "uie_t7_blackmarket_crate_whiteglow" ) )
	self:addElement( glow0 )
	self.glow0 = glow0
	
	local BribeOn = LUI.UIImage.new()
	BribeOn:setLeftRight( false, false, -80.5, 80.5 )
	BribeOn:setTopBottom( true, false, -40.46, 120.54 )
	BribeOn:setAlpha( 0 )
	BribeOn:setScale( 1.5 )
	BribeOn:setImage( RegisterImage( GetImageForCurrentBribe( controller, "uie_t7_blackmarket_crate_bribe_chip_taunt" ) ) )
	self:addElement( BribeOn )
	self.BribeOn = BribeOn
	
	local glowBribe = LUI.UIImage.new()
	glowBribe:setLeftRight( false, false, -80.5, 80.5 )
	glowBribe:setTopBottom( true, false, -40.46, 120.54 )
	glowBribe:setAlpha( 0 )
	glowBribe:setScale( 1.5 )
	glowBribe:setImage( RegisterImage( AppendString( "_hover", GetImageForCurrentBribe( controller, "uie_t7_blackmarket_crate_bribe_chip_taunt" ) ) ) )
	self:addElement( glowBribe )
	self.glowBribe = glowBribe
	
	local BundleOn = LUI.UIImage.new()
	BundleOn:setLeftRight( false, false, -83, 84 )
	BundleOn:setTopBottom( true, false, -46, 124 )
	BundleOn:setAlpha( 0 )
	BundleOn:setScale( 1.15 )
	BundleOn:setImage( RegisterImage( "uie_t7_blackmarket_crate_bundle" ) )
	self:addElement( BundleOn )
	self.BundleOn = BundleOn
	
	local glowBundle = LUI.UIImage.new()
	glowBundle:setLeftRight( false, false, -83, 84 )
	glowBundle:setTopBottom( true, false, -46, 124 )
	glowBundle:setAlpha( 0 )
	glowBundle:setScale( 1.15 )
	glowBundle:setImage( RegisterImage( "uie_t7_blackmarket_crate_bundle_glow" ) )
	self:addElement( glowBundle )
	self.glowBundle = glowBundle
	
	local BundleCount = LUI.UIText.new()
	BundleCount:setLeftRight( true, false, -60.93, 139.07 )
	BundleCount:setTopBottom( true, false, -3.25, 46.75 )
	BundleCount:setRGB( 0.97, 0.95, 0.68 )
	BundleCount:setAlpha( 0 )
	BundleCount:setScale( 1.5 )
	BundleCount:setTTF( "fonts/FoundryGridnik-Medium.ttf" )
	BundleCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	BundleCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	BundleCount:subscribeToGlobalModel( controller, "CryptoKeyProgress", "bundles", function ( model )
		local bundles = Engine.GetModelValue( model )
		if bundles then
			BundleCount:setText( Engine.Localize( SetValueIfNumberIsLessThanOrEqualTo( 0, "0", bundles ) ) )
		end
	end )
	self:addElement( BundleCount )
	self.BundleCount = BundleCount
	
	local BundleExperimentRareCount = LUI.UIText.new()
	BundleExperimentRareCount:setLeftRight( true, false, -60.93, 139.07 )
	BundleExperimentRareCount:setTopBottom( true, false, -3.25, 46.75 )
	BundleExperimentRareCount:setRGB( 0.97, 0.95, 0.68 )
	BundleExperimentRareCount:setAlpha( 0 )
	BundleExperimentRareCount:setScale( 1.5 )
	BundleExperimentRareCount:setTTF( "fonts/FoundryGridnik-Medium.ttf" )
	BundleExperimentRareCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	BundleExperimentRareCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	BundleExperimentRareCount:subscribeToGlobalModel( controller, "CryptoKeyProgress", "bundleExperimentRareBundles", function ( model )
		local bundleExperimentRareBundles = Engine.GetModelValue( model )
		if bundleExperimentRareBundles then
			BundleExperimentRareCount:setText( Engine.Localize( SetValueIfNumberIsLessThanOrEqualTo( 0, "0", bundleExperimentRareBundles ) ) )
		end
	end )
	self:addElement( BundleExperimentRareCount )
	self.BundleExperimentRareCount = BundleExperimentRareCount
	
	local CodeBundleRareCount = LUI.UIText.new()
	CodeBundleRareCount:setLeftRight( true, false, -60.93, 139.07 )
	CodeBundleRareCount:setTopBottom( true, false, -3.25, 46.75 )
	CodeBundleRareCount:setRGB( 0.97, 0.95, 0.68 )
	CodeBundleRareCount:setAlpha( 0 )
	CodeBundleRareCount:setScale( 1.5 )
	CodeBundleRareCount:setTTF( "fonts/FoundryGridnik-Medium.ttf" )
	CodeBundleRareCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	CodeBundleRareCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	CodeBundleRareCount:subscribeToGlobalModel( controller, "CryptoKeyProgress", "codeBundleRareBundles", function ( model )
		local codeBundleRareBundles = Engine.GetModelValue( model )
		if codeBundleRareBundles then
			CodeBundleRareCount:setText( Engine.Localize( SetValueIfNumberIsLessThanOrEqualTo( 0, "0", codeBundleRareBundles ) ) )
		end
	end )
	self:addElement( CodeBundleRareCount )
	self.CodeBundleRareCount = CodeBundleRareCount
	
	local NoDupesRareCount = LUI.UIText.new()
	NoDupesRareCount:setLeftRight( true, false, -60.93, 139.07 )
	NoDupesRareCount:setTopBottom( true, false, -3.25, 46.75 )
	NoDupesRareCount:setRGB( 0.97, 0.95, 0.68 )
	NoDupesRareCount:setAlpha( 0 )
	NoDupesRareCount:setScale( 1.5 )
	NoDupesRareCount:setTTF( "fonts/FoundryGridnik-Medium.ttf" )
	NoDupesRareCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	NoDupesRareCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	NoDupesRareCount:subscribeToGlobalModel( controller, "CryptoKeyProgress", "noDupesRareBundles", function ( model )
		local noDupesRareBundles = Engine.GetModelValue( model )
		if noDupesRareBundles then
			NoDupesRareCount:setText( Engine.Localize( SetValueIfNumberIsLessThanOrEqualTo( 0, "0", noDupesRareBundles ) ) )
		end
	end )
	self:addElement( NoDupesRareCount )
	self.NoDupesRareCount = NoDupesRareCount
	
	local HundredBundleCount = LUI.UIText.new()
	HundredBundleCount:setLeftRight( true, false, -60.93, 139.07 )
	HundredBundleCount:setTopBottom( true, false, -3.25, 46.75 )
	HundredBundleCount:setRGB( 0.97, 0.95, 0.68 )
	HundredBundleCount:setAlpha( 0 )
	HundredBundleCount:setScale( 1.5 )
	HundredBundleCount:setTTF( "fonts/FoundryGridnik-Medium.ttf" )
	HundredBundleCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	HundredBundleCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	HundredBundleCount:subscribeToGlobalModel( controller, "CryptoKeyProgress", "hundredBundles", function ( model )
		local hundredBundles = Engine.GetModelValue( model )
		if hundredBundles then
			HundredBundleCount:setText( Engine.Localize( SetValueIfNumberIsLessThanOrEqualTo( 0, "0", hundredBundles ) ) )
		end
	end )
	self:addElement( HundredBundleCount )
	self.HundredBundleCount = HundredBundleCount
	
	local DailyDoubleRareCount = LUI.UIText.new()
	DailyDoubleRareCount:setLeftRight( true, false, -60.93, 139.07 )
	DailyDoubleRareCount:setTopBottom( true, false, -3.25, 46.75 )
	DailyDoubleRareCount:setRGB( 0.97, 0.95, 0.68 )
	DailyDoubleRareCount:setAlpha( 0 )
	DailyDoubleRareCount:setScale( 1.5 )
	DailyDoubleRareCount:setTTF( "fonts/FoundryGridnik-Medium.ttf" )
	DailyDoubleRareCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	DailyDoubleRareCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	DailyDoubleRareCount:subscribeToGlobalModel( controller, "CryptoKeyProgress", "dailyDoubleRareBundles", function ( model )
		local dailyDoubleRareBundles = Engine.GetModelValue( model )
		if dailyDoubleRareBundles then
			DailyDoubleRareCount:setText( Engine.Localize( SetValueIfNumberIsLessThanOrEqualTo( 0, "0", dailyDoubleRareBundles ) ) )
		end
	end )
	self:addElement( DailyDoubleRareCount )
	self.DailyDoubleRareCount = DailyDoubleRareCount
	
	local SixPackCommonCount = LUI.UIText.new()
	SixPackCommonCount:setLeftRight( true, false, -60.93, 139.07 )
	SixPackCommonCount:setTopBottom( true, false, 1.75, 51.75 )
	SixPackCommonCount:setRGB( 1, 0.96, 0.72 )
	SixPackCommonCount:setAlpha( 0 )
	SixPackCommonCount:setScale( 1.5 )
	SixPackCommonCount:setTTF( "fonts/FoundryGridnik-Medium.ttf" )
	SixPackCommonCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	SixPackCommonCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	SixPackCommonCount:subscribeToGlobalModel( controller, "CryptoKeyProgress", "sixPackCommonBundles", function ( model )
		local sixPackCommonBundles = Engine.GetModelValue( model )
		if sixPackCommonBundles then
			SixPackCommonCount:setText( Engine.Localize( SetValueIfNumberIsLessThanOrEqualTo( 0, "0", sixPackCommonBundles ) ) )
		end
	end )
	self:addElement( SixPackCommonCount )
	self.SixPackCommonCount = SixPackCommonCount
	
	local glowBundleOutline = LUI.UIImage.new()
	glowBundleOutline:setLeftRight( false, false, -83, 84 )
	glowBundleOutline:setTopBottom( true, false, -46, 124 )
	glowBundleOutline:setRGB( 0.22, 0.93, 0.93 )
	glowBundleOutline:setAlpha( 0 )
	glowBundleOutline:setScale( 1.15 )
	glowBundleOutline:setImage( RegisterImage( "uie_t7_blackmarket_crate_bribe_focus_glow" ) )
	self:addElement( glowBundleOutline )
	self.glowBundleOutline = glowBundleOutline
	
	local IncentiveRare = LUI.UIImage.new()
	IncentiveRare:setLeftRight( true, false, -32.93, 111.07 )
	IncentiveRare:setTopBottom( true, false, -91.46, 88.54 )
	IncentiveRare:setAlpha( 0 )
	IncentiveRare:setScale( 0.85 )
	IncentiveRare:setImage( RegisterImage( "uie_t7_blackmarket_promo_bundle_alone" ) )
	self:addElement( IncentiveRare )
	self.IncentiveRare = IncentiveRare
	
	local IncentiveWeapon = LUI.UIImage.new()
	IncentiveWeapon:setLeftRight( true, false, -20.5, 99.5 )
	IncentiveWeapon:setTopBottom( true, false, -54.16, 113.84 )
	IncentiveWeapon:setAlpha( 0 )
	IncentiveWeapon:setImage( RegisterImage( "uie_t7_blackmarket_promo_weapon_alone" ) )
	self:addElement( IncentiveWeapon )
	self.IncentiveWeapon = IncentiveWeapon
	
	local GenericRewardImage = LUI.UIImage.new()
	GenericRewardImage:setLeftRight( true, false, -90.5, 169.5 )
	GenericRewardImage:setTopBottom( true, false, -30, 100 )
	GenericRewardImage:setAlpha( 0 )
	GenericRewardImage:setImage( RegisterImage( GetDecryptionRewardImageForSupplyDropType( controller, "uie_t7_blackmarket_bribe_weapon" ) ) )
	self:addElement( GenericRewardImage )
	self.GenericRewardImage = GenericRewardImage
	
	local GenericRewardImage0 = LUI.UIImage.new()
	GenericRewardImage0:setLeftRight( true, false, -32.93, 111.07 )
	GenericRewardImage0:setTopBottom( true, false, -40.25, 55.75 )
	GenericRewardImage0:setAlpha( 0 )
	GenericRewardImage0:setImage( RegisterImage( GetDecryptionRewardImageForSupplyDropType( controller, "uie_t7_blackmarket_bribe_weapon" ) ) )
	self:addElement( GenericRewardImage0 )
	self.GenericRewardImage0 = GenericRewardImage0
	
	local IncentiveNumberbacker = LUI.UIImage.new()
	IncentiveNumberbacker:setLeftRight( true, false, -45, 123 )
	IncentiveNumberbacker:setTopBottom( true, false, 35, 107 )
	IncentiveNumberbacker:setAlpha( 0 )
	IncentiveNumberbacker:setImage( RegisterImage( "uie_t7_blackmarket_promo_numberbacker_small" ) )
	self:addElement( IncentiveNumberbacker )
	self.IncentiveNumberbacker = IncentiveNumberbacker
	
	local WeaponIncentiveCount = LUI.UIText.new()
	WeaponIncentiveCount:setLeftRight( true, false, -61.5, 138.5 )
	WeaponIncentiveCount:setTopBottom( true, false, 21, 55 )
	WeaponIncentiveCount:setRGB( 1, 0.96, 0.72 )
	WeaponIncentiveCount:setAlpha( 0 )
	WeaponIncentiveCount:setTTF( "fonts/FoundryGridnik-Medium.ttf" )
	WeaponIncentiveCount:setMaterial( LUI.UIImage.GetCachedMaterial( "sw4_2d_uie_font_cached_glow" ) )
	WeaponIncentiveCount:setShaderVector( 0, 0.09, 0, 0, 0 )
	WeaponIncentiveCount:setShaderVector( 1, 0.06, 0, 0, 0 )
	WeaponIncentiveCount:setShaderVector( 2, 1, 0, 0, 0 )
	WeaponIncentiveCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	WeaponIncentiveCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	WeaponIncentiveCount:subscribeToGlobalModel( controller, "CryptoKeyProgress", "incentiveWeaponBundles", function ( model )
		local incentiveWeaponBundles = Engine.GetModelValue( model )
		if incentiveWeaponBundles then
			WeaponIncentiveCount:setText( LocalizeIntoString( "MPUI_BM_INCENTIVE_QUANTITY", SetValueIfNumberIsLessThanOrEqualTo( 0, "", incentiveWeaponBundles ) ) )
		end
	end )
	self:addElement( WeaponIncentiveCount )
	self.WeaponIncentiveCount = WeaponIncentiveCount
	
	local WeaponIncentiveCount0 = LUI.UIText.new()
	WeaponIncentiveCount0:setLeftRight( true, false, -61.5, 138.5 )
	WeaponIncentiveCount0:setTopBottom( true, false, 20, 54 )
	WeaponIncentiveCount0:setRGB( 0.15, 0.08, 0 )
	WeaponIncentiveCount0:setAlpha( 0 )
	WeaponIncentiveCount0:setTTF( "fonts/FoundryGridnik-Medium.ttf" )
	WeaponIncentiveCount0:setMaterial( LUI.UIImage.GetCachedMaterial( "sw4_2d_uie_font_cached_glow" ) )
	WeaponIncentiveCount0:setShaderVector( 0, 0.09, 0, 0, 0 )
	WeaponIncentiveCount0:setShaderVector( 1, 0.06, 0, 0, 0 )
	WeaponIncentiveCount0:setShaderVector( 2, 1, 0, 0, 0 )
	WeaponIncentiveCount0:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	WeaponIncentiveCount0:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	WeaponIncentiveCount0:subscribeToGlobalModel( controller, "CryptoKeyProgress", "incentiveWeaponBundles", function ( model )
		local incentiveWeaponBundles = Engine.GetModelValue( model )
		if incentiveWeaponBundles then
			WeaponIncentiveCount0:setText( LocalizeIntoString( "MPUI_BM_INCENTIVE_QUANTITY", SetValueIfNumberIsLessThanOrEqualTo( 0, "", incentiveWeaponBundles ) ) )
		end
	end )
	self:addElement( WeaponIncentiveCount0 )
	self.WeaponIncentiveCount0 = WeaponIncentiveCount0
	
	local RareIncentiveCount0 = LUI.UIText.new()
	RareIncentiveCount0:setLeftRight( true, false, -61.93, 138.07 )
	RareIncentiveCount0:setTopBottom( true, false, 55.75, 89.75 )
	RareIncentiveCount0:setRGB( 1, 0.96, 0.72 )
	RareIncentiveCount0:setAlpha( 0 )
	RareIncentiveCount0:setTTF( "fonts/FoundryGridnik-Medium.ttf" )
	RareIncentiveCount0:setMaterial( LUI.UIImage.GetCachedMaterial( "sw4_2d_uie_font_cached_glow" ) )
	RareIncentiveCount0:setShaderVector( 0, 0.09, 0, 0, 0 )
	RareIncentiveCount0:setShaderVector( 1, 0.06, 0, 0, 0 )
	RareIncentiveCount0:setShaderVector( 2, 1, 0, 0, 0 )
	RareIncentiveCount0:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	RareIncentiveCount0:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	RareIncentiveCount0:subscribeToGlobalModel( controller, "CryptoKeyProgress", "incentiveRareBundles", function ( model )
		local incentiveRareBundles = Engine.GetModelValue( model )
		if incentiveRareBundles then
			RareIncentiveCount0:setText( LocalizeIntoString( "MPUI_BM_INCENTIVE_QUANTITY", SetValueIfNumberIsLessThanOrEqualTo( 0, "", incentiveRareBundles ) ) )
		end
	end )
	self:addElement( RareIncentiveCount0 )
	self.RareIncentiveCount0 = RareIncentiveCount0
	
	local RareIncentiveCount = LUI.UIText.new()
	RareIncentiveCount:setLeftRight( true, false, -61.93, 138.07 )
	RareIncentiveCount:setTopBottom( true, false, 54.75, 88.75 )
	RareIncentiveCount:setRGB( 0.15, 0.08, 0 )
	RareIncentiveCount:setAlpha( 0 )
	RareIncentiveCount:setTTF( "fonts/FoundryGridnik-Medium.ttf" )
	RareIncentiveCount:setMaterial( LUI.UIImage.GetCachedMaterial( "sw4_2d_uie_font_cached_glow" ) )
	RareIncentiveCount:setShaderVector( 0, 0.09, 0, 0, 0 )
	RareIncentiveCount:setShaderVector( 1, 0.06, 0, 0, 0 )
	RareIncentiveCount:setShaderVector( 2, 1, 0, 0, 0 )
	RareIncentiveCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	RareIncentiveCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	RareIncentiveCount:subscribeToGlobalModel( controller, "CryptoKeyProgress", "incentiveRareBundles", function ( model )
		local incentiveRareBundles = Engine.GetModelValue( model )
		if incentiveRareBundles then
			RareIncentiveCount:setText( LocalizeIntoString( "MPUI_BM_INCENTIVE_QUANTITY", SetValueIfNumberIsLessThanOrEqualTo( 0, "", incentiveRareBundles ) ) )
		end
	end )
	self:addElement( RareIncentiveCount )
	self.RareIncentiveCount = RareIncentiveCount
	
	local GenericRewardCount0 = LUI.UIText.new()
	GenericRewardCount0:setLeftRight( true, false, -61.5, 138.5 )
	GenericRewardCount0:setTopBottom( true, false, 21, 55 )
	GenericRewardCount0:setRGB( 1, 0.96, 0.72 )
	GenericRewardCount0:setAlpha( 0 )
	GenericRewardCount0:setTTF( "fonts/FoundryGridnik-Medium.ttf" )
	GenericRewardCount0:setMaterial( LUI.UIImage.GetCachedMaterial( "sw4_2d_uie_font_cached_glow" ) )
	GenericRewardCount0:setShaderVector( 0, 0.09, 0, 0, 0 )
	GenericRewardCount0:setShaderVector( 1, 0.06, 0, 0, 0 )
	GenericRewardCount0:setShaderVector( 2, 1, 0, 0, 0 )
	GenericRewardCount0:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	GenericRewardCount0:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	GenericRewardCount0:subscribeToGlobalModel( controller, "CryptoKeyProgress", "genericRewardBundles", function ( model )
		local genericRewardBundles = Engine.GetModelValue( model )
		if genericRewardBundles then
			GenericRewardCount0:setText( LocalizeIntoString( "MPUI_BM_INCENTIVE_QUANTITY", SetValueIfNumberIsLessThanOrEqualTo( 0, "", GetDecryptionRewardCountForSupplyDropType( controller, genericRewardBundles ) ) ) )
		end
	end )
	self:addElement( GenericRewardCount0 )
	self.GenericRewardCount0 = GenericRewardCount0
	
	local GenericRewardCount = LUI.UIText.new()
	GenericRewardCount:setLeftRight( true, false, -61.5, 138.5 )
	GenericRewardCount:setTopBottom( true, false, 20, 54 )
	GenericRewardCount:setRGB( 0.15, 0.08, 0 )
	GenericRewardCount:setAlpha( 0 )
	GenericRewardCount:setTTF( "fonts/FoundryGridnik-Medium.ttf" )
	GenericRewardCount:setMaterial( LUI.UIImage.GetCachedMaterial( "sw4_2d_uie_font_cached_glow" ) )
	GenericRewardCount:setShaderVector( 0, 0.09, 0, 0, 0 )
	GenericRewardCount:setShaderVector( 1, 0.06, 0, 0, 0 )
	GenericRewardCount:setShaderVector( 2, 1, 0, 0, 0 )
	GenericRewardCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	GenericRewardCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	GenericRewardCount:subscribeToGlobalModel( controller, "CryptoKeyProgress", "genericRewardBundles", function ( model )
		local genericRewardBundles = Engine.GetModelValue( model )
		if genericRewardBundles then
			GenericRewardCount:setText( LocalizeIntoString( "MPUI_BM_INCENTIVE_QUANTITY", SetValueIfNumberIsLessThanOrEqualTo( 0, "", GetDecryptionRewardCountForSupplyDropType( controller, genericRewardBundles ) ) ) )
		end
	end )
	self:addElement( GenericRewardCount )
	self.GenericRewardCount = GenericRewardCount
	
	local WeaponBribe3Count0 = LUI.UIText.new()
	WeaponBribe3Count0:setLeftRight( true, false, -61.93, 138.07 )
	WeaponBribe3Count0:setTopBottom( true, false, 54.75, 88.75 )
	WeaponBribe3Count0:setRGB( 1, 0.96, 0.72 )
	WeaponBribe3Count0:setAlpha( 0 )
	WeaponBribe3Count0:setTTF( "fonts/FoundryGridnik-Medium.ttf" )
	WeaponBribe3Count0:setMaterial( LUI.UIImage.GetCachedMaterial( "sw4_2d_uie_font_cached_glow" ) )
	WeaponBribe3Count0:setShaderVector( 0, 0.09, 0, 0, 0 )
	WeaponBribe3Count0:setShaderVector( 1, 0.06, 0, 0, 0 )
	WeaponBribe3Count0:setShaderVector( 2, 1, 0, 0, 0 )
	WeaponBribe3Count0:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	WeaponBribe3Count0:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	WeaponBribe3Count0:subscribeToGlobalModel( controller, "CryptoKeyProgress", "weapon3XBundles", function ( model )
		local weapon3XBundles = Engine.GetModelValue( model )
		if weapon3XBundles then
			WeaponBribe3Count0:setText( LocalizeIntoString( "MPUI_BM_INCENTIVE_QUANTITY", SetValueIfNumberIsLessThanOrEqualTo( 0, "", weapon3XBundles ) ) )
		end
	end )
	self:addElement( WeaponBribe3Count0 )
	self.WeaponBribe3Count0 = WeaponBribe3Count0
	
	local WeaponBribe3Count = LUI.UIText.new()
	WeaponBribe3Count:setLeftRight( true, false, -61.93, 138.07 )
	WeaponBribe3Count:setTopBottom( true, false, 53.75, 87.75 )
	WeaponBribe3Count:setRGB( 0.15, 0.08, 0 )
	WeaponBribe3Count:setAlpha( 0 )
	WeaponBribe3Count:setTTF( "fonts/FoundryGridnik-Medium.ttf" )
	WeaponBribe3Count:setMaterial( LUI.UIImage.GetCachedMaterial( "sw4_2d_uie_font_cached_glow" ) )
	WeaponBribe3Count:setShaderVector( 0, 0.09, 0, 0, 0 )
	WeaponBribe3Count:setShaderVector( 1, 0.06, 0, 0, 0 )
	WeaponBribe3Count:setShaderVector( 2, 1, 0, 0, 0 )
	WeaponBribe3Count:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	WeaponBribe3Count:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	WeaponBribe3Count:subscribeToGlobalModel( controller, "CryptoKeyProgress", "weapon3XBundles", function ( model )
		local weapon3XBundles = Engine.GetModelValue( model )
		if weapon3XBundles then
			WeaponBribe3Count:setText( LocalizeIntoString( "MPUI_BM_INCENTIVE_QUANTITY", SetValueIfNumberIsLessThanOrEqualTo( 0, "", weapon3XBundles ) ) )
		end
	end )
	self:addElement( WeaponBribe3Count )
	self.WeaponBribe3Count = WeaponBribe3Count
	
	local LimitedEditionCamoCount0 = LUI.UIText.new()
	LimitedEditionCamoCount0:setLeftRight( true, false, -61.93, 138.07 )
	LimitedEditionCamoCount0:setTopBottom( true, false, 54.75, 88.75 )
	LimitedEditionCamoCount0:setRGB( 1, 0.96, 0.72 )
	LimitedEditionCamoCount0:setAlpha( 0 )
	LimitedEditionCamoCount0:setTTF( "fonts/FoundryGridnik-Medium.ttf" )
	LimitedEditionCamoCount0:setMaterial( LUI.UIImage.GetCachedMaterial( "sw4_2d_uie_font_cached_glow" ) )
	LimitedEditionCamoCount0:setShaderVector( 0, 0.09, 0, 0, 0 )
	LimitedEditionCamoCount0:setShaderVector( 1, 0.06, 0, 0, 0 )
	LimitedEditionCamoCount0:setShaderVector( 2, 1, 0, 0, 0 )
	LimitedEditionCamoCount0:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	LimitedEditionCamoCount0:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	LimitedEditionCamoCount0:subscribeToGlobalModel( controller, "CryptoKeyProgress", "limitedEditionCamoBundles", function ( model )
		local limitedEditionCamoBundles = Engine.GetModelValue( model )
		if limitedEditionCamoBundles then
			LimitedEditionCamoCount0:setText( LocalizeIntoString( "MPUI_BM_INCENTIVE_QUANTITY", SetValueIfNumberIsLessThanOrEqualTo( 0, "", limitedEditionCamoBundles ) ) )
		end
	end )
	self:addElement( LimitedEditionCamoCount0 )
	self.LimitedEditionCamoCount0 = LimitedEditionCamoCount0
	
	local LimitedEditionCamoCount = LUI.UIText.new()
	LimitedEditionCamoCount:setLeftRight( true, false, -61.93, 138.07 )
	LimitedEditionCamoCount:setTopBottom( true, false, 53.75, 87.75 )
	LimitedEditionCamoCount:setRGB( 0.15, 0.08, 0 )
	LimitedEditionCamoCount:setAlpha( 0 )
	LimitedEditionCamoCount:setTTF( "fonts/FoundryGridnik-Medium.ttf" )
	LimitedEditionCamoCount:setMaterial( LUI.UIImage.GetCachedMaterial( "sw4_2d_uie_font_cached_glow" ) )
	LimitedEditionCamoCount:setShaderVector( 0, 0.09, 0, 0, 0 )
	LimitedEditionCamoCount:setShaderVector( 1, 0.06, 0, 0, 0 )
	LimitedEditionCamoCount:setShaderVector( 2, 1, 0, 0, 0 )
	LimitedEditionCamoCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	LimitedEditionCamoCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	LimitedEditionCamoCount:subscribeToGlobalModel( controller, "CryptoKeyProgress", "limitedEditionCamoBundles", function ( model )
		local limitedEditionCamoBundles = Engine.GetModelValue( model )
		if limitedEditionCamoBundles then
			LimitedEditionCamoCount:setText( LocalizeIntoString( "MPUI_BM_INCENTIVE_QUANTITY", SetValueIfNumberIsLessThanOrEqualTo( 0, "", limitedEditionCamoBundles ) ) )
		end
	end )
	self:addElement( LimitedEditionCamoCount )
	self.LimitedEditionCamoCount = LimitedEditionCamoCount
	
	local RareBundle10for5Count = LUI.UIText.new()
	RareBundle10for5Count:setLeftRight( true, false, -60.93, 139.07 )
	RareBundle10for5Count:setTopBottom( true, false, -3.25, 46.75 )
	RareBundle10for5Count:setRGB( 0.97, 0.95, 0.68 )
	RareBundle10for5Count:setAlpha( 0 )
	RareBundle10for5Count:setScale( 1.5 )
	RareBundle10for5Count:setTTF( "fonts/FoundryGridnik-Medium.ttf" )
	RareBundle10for5Count:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	RareBundle10for5Count:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	RareBundle10for5Count:subscribeToGlobalModel( controller, "CryptoKeyProgress", "rareBundle10for5s", function ( model )
		local rareBundle10for5s = Engine.GetModelValue( model )
		if rareBundle10for5s then
			RareBundle10for5Count:setText( Engine.Localize( SetValueIfNumberIsLessThanOrEqualTo( 0, "0", rareBundle10for5s ) ) )
		end
	end )
	self:addElement( RareBundle10for5Count )
	self.RareBundle10for5Count = RareBundle10for5Count
	
	local Rare15BundleCount = LUI.UIText.new()
	Rare15BundleCount:setLeftRight( true, false, -60.93, 139.07 )
	Rare15BundleCount:setTopBottom( true, false, -3.25, 46.75 )
	Rare15BundleCount:setRGB( 0.97, 0.95, 0.68 )
	Rare15BundleCount:setAlpha( 0 )
	Rare15BundleCount:setScale( 1.5 )
	Rare15BundleCount:setTTF( "fonts/FoundryGridnik-Medium.ttf" )
	Rare15BundleCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	Rare15BundleCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	Rare15BundleCount:subscribeToGlobalModel( controller, "CryptoKeyProgress", "rare15Bundles", function ( model )
		local rare15Bundles = Engine.GetModelValue( model )
		if rare15Bundles then
			Rare15BundleCount:setText( Engine.Localize( SetValueIfNumberIsLessThanOrEqualTo( 0, "0", rare15Bundles ) ) )
		end
	end )
	self:addElement( Rare15BundleCount )
	self.Rare15BundleCount = Rare15BundleCount
	
	local OutfitBribeCount = LUI.UIText.new()
	OutfitBribeCount:setLeftRight( true, false, -60.93, 139.07 )
	OutfitBribeCount:setTopBottom( true, false, -3.25, 46.75 )
	OutfitBribeCount:setRGB( 0.97, 0.95, 0.68 )
	OutfitBribeCount:setAlpha( 0 )
	OutfitBribeCount:setScale( 1.5 )
	OutfitBribeCount:setTTF( "fonts/FoundryGridnik-Medium.ttf" )
	OutfitBribeCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	OutfitBribeCount:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	OutfitBribeCount:subscribeToGlobalModel( controller, "CryptoKeyProgress", "outfit3Bundles", function ( model )
		local outfit3Bundles = Engine.GetModelValue( model )
		if outfit3Bundles then
			OutfitBribeCount:setText( Engine.Localize( SetValueIfNumberIsLessThanOrEqualTo( 0, "0", outfit3Bundles ) ) )
		end
	end )
	self:addElement( OutfitBribeCount )
	self.OutfitBribeCount = OutfitBribeCount
	
	self.clipsPerState = {
		DefaultState = {},
		Common = {
			DefaultClip = function ()
				self:setupElementClipCounter( 29 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 0 )
				self.clipFinished( BundleOnOpen, {} )

				SixPackCommonBundleOnOpen:completeAnimation()
				self.SixPackCommonBundleOnOpen:setAlpha( 0 )
				self.clipFinished( SixPackCommonBundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 1 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				BundleExperimentRareCount:completeAnimation()
				self.BundleExperimentRareCount:setAlpha( 0 )
				self.clipFinished( BundleExperimentRareCount, {} )

				CodeBundleRareCount:completeAnimation()
				self.CodeBundleRareCount:setAlpha( 0 )
				self.clipFinished( CodeBundleRareCount, {} )

				NoDupesRareCount:completeAnimation()
				self.NoDupesRareCount:setAlpha( 0 )
				self.clipFinished( NoDupesRareCount, {} )

				HundredBundleCount:completeAnimation()
				self.HundredBundleCount:setAlpha( 0 )
				self.clipFinished( HundredBundleCount, {} )

				DailyDoubleRareCount:completeAnimation()
				self.DailyDoubleRareCount:setAlpha( 0 )
				self.clipFinished( DailyDoubleRareCount, {} )

				SixPackCommonCount:completeAnimation()
				self.SixPackCommonCount:setAlpha( 0 )
				self.clipFinished( SixPackCommonCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				GenericRewardImage:completeAnimation()
				self.GenericRewardImage:setAlpha( 0 )
				self.clipFinished( GenericRewardImage, {} )

				GenericRewardCount0:completeAnimation()
				self.GenericRewardCount0:setAlpha( 0 )
				self.clipFinished( GenericRewardCount0, {} )

				GenericRewardCount:completeAnimation()
				self.GenericRewardCount:setAlpha( 0 )
				self.clipFinished( GenericRewardCount, {} )

				WeaponBribe3Count0:completeAnimation()
				self.WeaponBribe3Count0:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count0, {} )

				WeaponBribe3Count:completeAnimation()
				self.WeaponBribe3Count:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count, {} )

				LimitedEditionCamoCount0:completeAnimation()
				self.LimitedEditionCamoCount0:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount0, {} )

				LimitedEditionCamoCount:completeAnimation()
				self.LimitedEditionCamoCount:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 14 )

				local glow00Frame2 = function ( glow00, event )
					local glow00Frame3 = function ( glow00, event )
						if not event.interrupted then
							glow00:beginAnimation( "keyframe", 779, false, false, CoD.TweenType.Linear )
						end
						glow00:setRGB( 1, 1, 1 )
						glow00:setAlpha( 0 )
						if event.interrupted then
							self.clipFinished( glow00, event )
						else
							glow00:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						glow00Frame3( glow00, event )
						return 
					else
						glow00:beginAnimation( "keyframe", 759, false, false, CoD.TweenType.Linear )
						glow00:setAlpha( 1 )
						glow00:registerEventHandler( "transition_complete_keyframe", glow00Frame3 )
					end
				end
				
				glow00:completeAnimation()
				self.glow00:setRGB( 1, 1, 1 )
				self.glow00:setAlpha( 0 )
				glow00Frame2( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 0 )
				self.clipFinished( BundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 1 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 1 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 1 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 1 )
				self.clipFinished( CommonOn, {} )
				local glow0Frame2 = function ( glow0, event )
					local glow0Frame3 = function ( glow0, event )
						if not event.interrupted then
							glow0:beginAnimation( "keyframe", 779, true, true, CoD.TweenType.Linear )
						end
						glow0:setAlpha( 0.1 )
						if event.interrupted then
							self.clipFinished( glow0, event )
						else
							glow0:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						glow0Frame3( glow0, event )
						return 
					else
						glow0:beginAnimation( "keyframe", 759, true, true, CoD.TweenType.Linear )
						glow0:setAlpha( 1 )
						glow0:registerEventHandler( "transition_complete_keyframe", glow0Frame3 )
					end
				end
				
				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				glow0Frame2( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				self.nextClip = "Focus"
			end
		},
		IncentiveRare = {
			DefaultClip = function ()
				self:setupElementClipCounter( 36 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 0 )
				self.clipFinished( BundleOnOpen, {} )

				SixPackCommonBundleOnOpen:completeAnimation()
				self.SixPackCommonBundleOnOpen:setAlpha( 0 )
				self.clipFinished( SixPackCommonBundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setLeftRight( false, false, -80.5, 80.5 )
				self.BribeOn:setTopBottom( true, false, -40.46, 120.54 )
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setLeftRight( false, false, -80.5, 80.5 )
				self.glowBribe:setTopBottom( true, false, -40.46, 120.54 )
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				BundleExperimentRareCount:completeAnimation()
				self.BundleExperimentRareCount:setAlpha( 0 )
				self.clipFinished( BundleExperimentRareCount, {} )

				CodeBundleRareCount:completeAnimation()
				self.CodeBundleRareCount:setAlpha( 0 )
				self.clipFinished( CodeBundleRareCount, {} )

				NoDupesRareCount:completeAnimation()
				self.NoDupesRareCount:setAlpha( 0 )
				self.clipFinished( NoDupesRareCount, {} )

				HundredBundleCount:completeAnimation()
				self.HundredBundleCount:setAlpha( 0 )
				self.clipFinished( HundredBundleCount, {} )

				DailyDoubleRareCount:completeAnimation()
				self.DailyDoubleRareCount:setAlpha( 0 )
				self.clipFinished( DailyDoubleRareCount, {} )

				SixPackCommonCount:completeAnimation()
				self.SixPackCommonCount:setAlpha( 0 )
				self.clipFinished( SixPackCommonCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				IncentiveRare:completeAnimation()
				self.IncentiveRare:setLeftRight( true, false, -32.93, 111.07 )
				self.IncentiveRare:setTopBottom( true, false, -92.46, 87.54 )
				self.IncentiveRare:setAlpha( 1 )
				self.clipFinished( IncentiveRare, {} )

				IncentiveWeapon:completeAnimation()
				self.IncentiveWeapon:setAlpha( 0 )
				self.clipFinished( IncentiveWeapon, {} )

				GenericRewardImage:completeAnimation()
				self.GenericRewardImage:setAlpha( 0 )
				self.clipFinished( GenericRewardImage, {} )

				IncentiveNumberbacker:completeAnimation()
				self.IncentiveNumberbacker:setLeftRight( true, false, -45, 123 )
				self.IncentiveNumberbacker:setTopBottom( true, false, 35, 107 )
				self.IncentiveNumberbacker:setAlpha( 1 )
				self.clipFinished( IncentiveNumberbacker, {} )

				WeaponIncentiveCount:completeAnimation()
				self.WeaponIncentiveCount:setAlpha( 0 )
				self.clipFinished( WeaponIncentiveCount, {} )

				WeaponIncentiveCount0:completeAnimation()
				self.WeaponIncentiveCount0:setAlpha( 0 )
				self.clipFinished( WeaponIncentiveCount0, {} )

				RareIncentiveCount0:completeAnimation()
				self.RareIncentiveCount0:setLeftRight( true, false, -61.93, 138.07 )
				self.RareIncentiveCount0:setTopBottom( true, false, 54.75, 88.75 )
				self.RareIncentiveCount0:setAlpha( 1 )
				self.clipFinished( RareIncentiveCount0, {} )

				RareIncentiveCount:completeAnimation()
				self.RareIncentiveCount:setLeftRight( true, false, -61.93, 138.07 )
				self.RareIncentiveCount:setTopBottom( true, false, 53.75, 87.75 )
				self.RareIncentiveCount:setAlpha( 1 )
				self.clipFinished( RareIncentiveCount, {} )

				GenericRewardCount0:completeAnimation()
				self.GenericRewardCount0:setAlpha( 0 )
				self.clipFinished( GenericRewardCount0, {} )

				GenericRewardCount:completeAnimation()
				self.GenericRewardCount:setAlpha( 0 )
				self.clipFinished( GenericRewardCount, {} )

				WeaponBribe3Count0:completeAnimation()
				self.WeaponBribe3Count0:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count0, {} )

				WeaponBribe3Count:completeAnimation()
				self.WeaponBribe3Count:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count, {} )

				LimitedEditionCamoCount0:completeAnimation()
				self.LimitedEditionCamoCount0:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount0, {} )

				LimitedEditionCamoCount:completeAnimation()
				self.LimitedEditionCamoCount:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 22 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 0 )
				self.clipFinished( BundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setLeftRight( false, false, -80.5, 80.5 )
				self.BribeOn:setTopBottom( true, false, -40.46, 120.54 )
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setLeftRight( false, false, -80.5, 80.5 )
				self.glowBribe:setTopBottom( true, false, -40.46, 120.54 )
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				IncentiveRare:completeAnimation()
				self.IncentiveRare:setLeftRight( true, false, -32.93, 111.07 )
				self.IncentiveRare:setTopBottom( true, false, -92.46, 87.54 )
				self.IncentiveRare:setAlpha( 1 )
				self.clipFinished( IncentiveRare, {} )

				IncentiveWeapon:completeAnimation()
				self.IncentiveWeapon:setAlpha( 0 )
				self.clipFinished( IncentiveWeapon, {} )

				IncentiveNumberbacker:completeAnimation()
				self.IncentiveNumberbacker:setLeftRight( true, false, -45, 123 )
				self.IncentiveNumberbacker:setTopBottom( true, false, 35, 107 )
				self.IncentiveNumberbacker:setAlpha( 1 )
				self.clipFinished( IncentiveNumberbacker, {} )

				WeaponIncentiveCount:completeAnimation()
				self.WeaponIncentiveCount:setAlpha( 0 )
				self.clipFinished( WeaponIncentiveCount, {} )

				WeaponIncentiveCount0:completeAnimation()
				self.WeaponIncentiveCount0:setAlpha( 0 )
				self.clipFinished( WeaponIncentiveCount0, {} )

				RareIncentiveCount0:completeAnimation()
				self.RareIncentiveCount0:setLeftRight( true, false, -61.93, 138.07 )
				self.RareIncentiveCount0:setTopBottom( true, false, 54.75, 88.75 )
				self.RareIncentiveCount0:setAlpha( 1 )
				self.clipFinished( RareIncentiveCount0, {} )

				RareIncentiveCount:completeAnimation()
				self.RareIncentiveCount:setLeftRight( true, false, -61.93, 138.07 )
				self.RareIncentiveCount:setTopBottom( true, false, 53.75, 87.75 )
				self.RareIncentiveCount:setAlpha( 1 )
				self.clipFinished( RareIncentiveCount, {} )
			end
		},
		IncentiveWeapon = {
			DefaultClip = function ()
				self:setupElementClipCounter( 35 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 0 )
				self.clipFinished( BundleOnOpen, {} )

				SixPackCommonBundleOnOpen:completeAnimation()
				self.SixPackCommonBundleOnOpen:setAlpha( 0 )
				self.clipFinished( SixPackCommonBundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setLeftRight( false, false, -80.5, 80.5 )
				self.BribeOn:setTopBottom( true, false, -40.46, 120.54 )
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setLeftRight( false, false, -80.5, 80.5 )
				self.glowBribe:setTopBottom( true, false, -40.46, 120.54 )
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				BundleExperimentRareCount:completeAnimation()
				self.BundleExperimentRareCount:setAlpha( 0 )
				self.clipFinished( BundleExperimentRareCount, {} )

				CodeBundleRareCount:completeAnimation()
				self.CodeBundleRareCount:setAlpha( 0 )
				self.clipFinished( CodeBundleRareCount, {} )

				NoDupesRareCount:completeAnimation()
				self.NoDupesRareCount:setAlpha( 0 )
				self.clipFinished( NoDupesRareCount, {} )

				HundredBundleCount:completeAnimation()
				self.HundredBundleCount:setAlpha( 0 )
				self.clipFinished( HundredBundleCount, {} )

				DailyDoubleRareCount:completeAnimation()
				self.DailyDoubleRareCount:setAlpha( 0 )
				self.clipFinished( DailyDoubleRareCount, {} )

				SixPackCommonCount:completeAnimation()
				self.SixPackCommonCount:setAlpha( 0 )
				self.clipFinished( SixPackCommonCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				IncentiveRare:completeAnimation()
				self.IncentiveRare:setAlpha( 0 )
				self.clipFinished( IncentiveRare, {} )

				IncentiveWeapon:completeAnimation()
				self.IncentiveWeapon:setAlpha( 1 )
				self.clipFinished( IncentiveWeapon, {} )

				GenericRewardImage:completeAnimation()
				self.GenericRewardImage:setAlpha( 0 )
				self.clipFinished( GenericRewardImage, {} )

				IncentiveNumberbacker:completeAnimation()
				self.IncentiveNumberbacker:setLeftRight( true, false, -45, 123 )
				self.IncentiveNumberbacker:setTopBottom( true, false, 0, 72 )
				self.IncentiveNumberbacker:setAlpha( 1 )
				self.clipFinished( IncentiveNumberbacker, {} )

				WeaponIncentiveCount:completeAnimation()
				self.WeaponIncentiveCount:setLeftRight( true, false, -61.5, 138.5 )
				self.WeaponIncentiveCount:setTopBottom( true, false, 19, 53 )
				self.WeaponIncentiveCount:setAlpha( 0.75 )
				self.clipFinished( WeaponIncentiveCount, {} )

				WeaponIncentiveCount0:completeAnimation()
				self.WeaponIncentiveCount0:setLeftRight( true, false, -61.5, 138.5 )
				self.WeaponIncentiveCount0:setTopBottom( true, false, 18, 52 )
				self.WeaponIncentiveCount0:setAlpha( 1 )
				self.clipFinished( WeaponIncentiveCount0, {} )

				RareIncentiveCount:completeAnimation()
				self.RareIncentiveCount:setAlpha( 0 )
				self.clipFinished( RareIncentiveCount, {} )

				GenericRewardCount0:completeAnimation()
				self.GenericRewardCount0:setAlpha( 0 )
				self.clipFinished( GenericRewardCount0, {} )

				GenericRewardCount:completeAnimation()
				self.GenericRewardCount:setAlpha( 0 )
				self.clipFinished( GenericRewardCount, {} )

				WeaponBribe3Count0:completeAnimation()
				self.WeaponBribe3Count0:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count0, {} )

				WeaponBribe3Count:completeAnimation()
				self.WeaponBribe3Count:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count, {} )

				LimitedEditionCamoCount0:completeAnimation()
				self.LimitedEditionCamoCount0:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount0, {} )

				LimitedEditionCamoCount:completeAnimation()
				self.LimitedEditionCamoCount:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 21 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 0 )
				self.clipFinished( BundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setLeftRight( false, false, -80.5, 80.5 )
				self.BribeOn:setTopBottom( true, false, -40.46, 120.54 )
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setLeftRight( false, false, -80.5, 80.5 )
				self.glowBribe:setTopBottom( true, false, -40.46, 120.54 )
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				IncentiveRare:completeAnimation()
				self.IncentiveRare:setAlpha( 0 )
				self.clipFinished( IncentiveRare, {} )

				IncentiveWeapon:completeAnimation()
				self.IncentiveWeapon:setAlpha( 1 )
				self.clipFinished( IncentiveWeapon, {} )

				IncentiveNumberbacker:completeAnimation()
				self.IncentiveNumberbacker:setLeftRight( true, false, -45, 123 )
				self.IncentiveNumberbacker:setTopBottom( true, false, 0, 72 )
				self.IncentiveNumberbacker:setAlpha( 1 )
				self.clipFinished( IncentiveNumberbacker, {} )

				WeaponIncentiveCount:completeAnimation()
				self.WeaponIncentiveCount:setAlpha( 0.75 )
				self.clipFinished( WeaponIncentiveCount, {} )

				WeaponIncentiveCount0:completeAnimation()
				self.WeaponIncentiveCount0:setAlpha( 1 )
				self.clipFinished( WeaponIncentiveCount0, {} )

				RareIncentiveCount:completeAnimation()
				self.RareIncentiveCount:setAlpha( 0 )
				self.clipFinished( RareIncentiveCount, {} )
			end
		},
		GenericReward = {
			DefaultClip = function ()
				self:setupElementClipCounter( 35 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 0 )
				self.clipFinished( BundleOnOpen, {} )

				SixPackCommonBundleOnOpen:completeAnimation()
				self.SixPackCommonBundleOnOpen:setAlpha( 0 )
				self.clipFinished( SixPackCommonBundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setLeftRight( false, false, -80.5, 80.5 )
				self.BribeOn:setTopBottom( true, false, -40.46, 120.54 )
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setLeftRight( false, false, -80.5, 80.5 )
				self.glowBribe:setTopBottom( true, false, -40.46, 120.54 )
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				BundleExperimentRareCount:completeAnimation()
				self.BundleExperimentRareCount:setAlpha( 0 )
				self.clipFinished( BundleExperimentRareCount, {} )

				CodeBundleRareCount:completeAnimation()
				self.CodeBundleRareCount:setAlpha( 0 )
				self.clipFinished( CodeBundleRareCount, {} )

				NoDupesRareCount:completeAnimation()
				self.NoDupesRareCount:setAlpha( 0 )
				self.clipFinished( NoDupesRareCount, {} )

				HundredBundleCount:completeAnimation()
				self.HundredBundleCount:setAlpha( 0 )
				self.clipFinished( HundredBundleCount, {} )

				DailyDoubleRareCount:completeAnimation()
				self.DailyDoubleRareCount:setAlpha( 0 )
				self.clipFinished( DailyDoubleRareCount, {} )

				SixPackCommonCount:completeAnimation()
				self.SixPackCommonCount:setAlpha( 0 )
				self.clipFinished( SixPackCommonCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				IncentiveRare:completeAnimation()
				self.IncentiveRare:setAlpha( 0 )
				self.clipFinished( IncentiveRare, {} )

				IncentiveWeapon:completeAnimation()
				self.IncentiveWeapon:setAlpha( 0 )
				self.clipFinished( IncentiveWeapon, {} )

				GenericRewardImage:completeAnimation()
				self.GenericRewardImage:setAlpha( 1 )
				self.clipFinished( GenericRewardImage, {} )

				IncentiveNumberbacker:completeAnimation()
				self.IncentiveNumberbacker:setLeftRight( true, false, -45, 123 )
				self.IncentiveNumberbacker:setTopBottom( true, false, 0, 72 )
				self.IncentiveNumberbacker:setAlpha( 1 )
				self.clipFinished( IncentiveNumberbacker, {} )

				WeaponIncentiveCount:completeAnimation()
				self.WeaponIncentiveCount:setLeftRight( true, false, -61.5, 138.5 )
				self.WeaponIncentiveCount:setTopBottom( true, false, 19, 53 )
				self.WeaponIncentiveCount:setAlpha( 0 )
				self.clipFinished( WeaponIncentiveCount, {} )

				WeaponIncentiveCount0:completeAnimation()
				self.WeaponIncentiveCount0:setLeftRight( true, false, -61.5, 138.5 )
				self.WeaponIncentiveCount0:setTopBottom( true, false, 18, 52 )
				self.WeaponIncentiveCount0:setAlpha( 0 )
				self.clipFinished( WeaponIncentiveCount0, {} )

				RareIncentiveCount:completeAnimation()
				self.RareIncentiveCount:setAlpha( 0 )
				self.clipFinished( RareIncentiveCount, {} )

				GenericRewardCount0:completeAnimation()
				self.GenericRewardCount0:setAlpha( 0.75 )
				self.clipFinished( GenericRewardCount0, {} )

				GenericRewardCount:completeAnimation()
				self.GenericRewardCount:setAlpha( 1 )
				self.clipFinished( GenericRewardCount, {} )

				WeaponBribe3Count0:completeAnimation()
				self.WeaponBribe3Count0:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count0, {} )

				WeaponBribe3Count:completeAnimation()
				self.WeaponBribe3Count:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count, {} )

				LimitedEditionCamoCount0:completeAnimation()
				self.LimitedEditionCamoCount0:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount0, {} )

				LimitedEditionCamoCount:completeAnimation()
				self.LimitedEditionCamoCount:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 24 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 0 )
				self.clipFinished( BundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setLeftRight( false, false, -80.5, 80.5 )
				self.BribeOn:setTopBottom( true, false, -40.46, 120.54 )
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setLeftRight( false, false, -80.5, 80.5 )
				self.glowBribe:setTopBottom( true, false, -40.46, 120.54 )
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				IncentiveRare:completeAnimation()
				self.IncentiveRare:setAlpha( 0 )
				self.clipFinished( IncentiveRare, {} )

				IncentiveWeapon:completeAnimation()
				self.IncentiveWeapon:setAlpha( 0 )
				self.clipFinished( IncentiveWeapon, {} )

				GenericRewardImage:completeAnimation()
				self.GenericRewardImage:setAlpha( 1 )
				self.clipFinished( GenericRewardImage, {} )

				IncentiveNumberbacker:completeAnimation()
				self.IncentiveNumberbacker:setLeftRight( true, false, -45, 123 )
				self.IncentiveNumberbacker:setTopBottom( true, false, 0, 72 )
				self.IncentiveNumberbacker:setAlpha( 1 )
				self.clipFinished( IncentiveNumberbacker, {} )

				WeaponIncentiveCount:completeAnimation()
				self.WeaponIncentiveCount:setAlpha( 0 )
				self.clipFinished( WeaponIncentiveCount, {} )

				WeaponIncentiveCount0:completeAnimation()
				self.WeaponIncentiveCount0:setAlpha( 0 )
				self.clipFinished( WeaponIncentiveCount0, {} )

				RareIncentiveCount:completeAnimation()
				self.RareIncentiveCount:setAlpha( 0 )
				self.clipFinished( RareIncentiveCount, {} )

				GenericRewardCount0:completeAnimation()
				self.GenericRewardCount0:setAlpha( 0.75 )
				self.clipFinished( GenericRewardCount0, {} )

				GenericRewardCount:completeAnimation()
				self.GenericRewardCount:setAlpha( 1 )
				self.clipFinished( GenericRewardCount, {} )
			end
		},
		SixPackCommonBundle = {
			DefaultClip = function ()
				self:setupElementClipCounter( 29 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 0 )
				self.clipFinished( BundleOnOpen, {} )

				SixPackCommonBundleOnOpen:completeAnimation()
				self.SixPackCommonBundleOnOpen:setAlpha( 1 )
				self.clipFinished( SixPackCommonBundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setLeftRight( false, false, -80.5, 80.5 )
				self.BribeOn:setTopBottom( true, false, -40.46, 120.54 )
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setLeftRight( false, false, -80.5, 80.5 )
				self.glowBribe:setTopBottom( true, false, -40.46, 120.54 )
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				BundleExperimentRareCount:completeAnimation()
				self.BundleExperimentRareCount:setAlpha( 0 )
				self.clipFinished( BundleExperimentRareCount, {} )

				CodeBundleRareCount:completeAnimation()
				self.CodeBundleRareCount:setAlpha( 0 )
				self.clipFinished( CodeBundleRareCount, {} )

				NoDupesRareCount:completeAnimation()
				self.NoDupesRareCount:setAlpha( 0 )
				self.clipFinished( NoDupesRareCount, {} )

				HundredBundleCount:completeAnimation()
				self.HundredBundleCount:setAlpha( 0 )
				self.clipFinished( HundredBundleCount, {} )

				DailyDoubleRareCount:completeAnimation()
				self.DailyDoubleRareCount:setAlpha( 0 )
				self.clipFinished( DailyDoubleRareCount, {} )

				SixPackCommonCount:completeAnimation()
				self.SixPackCommonCount:setAlpha( 1 )
				self.clipFinished( SixPackCommonCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				GenericRewardImage:completeAnimation()
				self.GenericRewardImage:setAlpha( 0 )
				self.clipFinished( GenericRewardImage, {} )

				GenericRewardCount0:completeAnimation()
				self.GenericRewardCount0:setAlpha( 0 )
				self.clipFinished( GenericRewardCount0, {} )

				GenericRewardCount:completeAnimation()
				self.GenericRewardCount:setAlpha( 0 )
				self.clipFinished( GenericRewardCount, {} )

				WeaponBribe3Count0:completeAnimation()
				self.WeaponBribe3Count0:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count0, {} )

				WeaponBribe3Count:completeAnimation()
				self.WeaponBribe3Count:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count, {} )

				LimitedEditionCamoCount0:completeAnimation()
				self.LimitedEditionCamoCount0:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount0, {} )

				LimitedEditionCamoCount:completeAnimation()
				self.LimitedEditionCamoCount:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 14 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 0 )
				self.clipFinished( BundleOnOpen, {} )

				SixPackCommonBundleOnOpen:completeAnimation()
				self.SixPackCommonBundleOnOpen:setAlpha( 1 )
				self.clipFinished( SixPackCommonBundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setLeftRight( true, false, -43.25, 126.35 )
				self.smokewidget:setTopBottom( true, false, -69.96, 108.54 )
				self.smokewidget:setRGB( 1, 1, 1 )
				self.smokewidget:setAlpha( 1 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setLeftRight( true, false, -30.45, 113.55 )
				self.fxEmber2:setTopBottom( true, false, -54.96, 125.04 )
				self.fxEmber2:setRGB( 1, 1, 1 )
				self.fxEmber2:setAlpha( 1 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setLeftRight( true, false, -34.25, 117.35 )
				self.fxEmber:setTopBottom( true, false, -42.46, 147.04 )
				self.fxEmber:setRGB( 1, 1, 1 )
				self.fxEmber:setAlpha( 1 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				glow0:completeAnimation()
				self.glow0:setRGB( 0.22, 0.93, 0.93 )
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )
				local SixPackCommonCountFrame2 = function ( SixPackCommonCount, event )
					local SixPackCommonCountFrame3 = function ( SixPackCommonCount, event )
						if not event.interrupted then
							SixPackCommonCount:beginAnimation( "keyframe", 809, false, false, CoD.TweenType.Linear )
						end
						SixPackCommonCount:setAlpha( 0.8 )
						if event.interrupted then
							self.clipFinished( SixPackCommonCount, event )
						else
							SixPackCommonCount:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						SixPackCommonCountFrame3( SixPackCommonCount, event )
						return 
					else
						SixPackCommonCount:beginAnimation( "keyframe", 740, false, false, CoD.TweenType.Linear )
						SixPackCommonCount:setAlpha( 1 )
						SixPackCommonCount:registerEventHandler( "transition_complete_keyframe", SixPackCommonCountFrame3 )
					end
				end
				
				SixPackCommonCount:completeAnimation()
				self.SixPackCommonCount:setAlpha( 0.8 )
				SixPackCommonCountFrame2( SixPackCommonCount, {} )
				local glowBundleOutlineFrame2 = function ( glowBundleOutline, event )
					local glowBundleOutlineFrame3 = function ( glowBundleOutline, event )
						if not event.interrupted then
							glowBundleOutline:beginAnimation( "keyframe", 809, false, false, CoD.TweenType.Linear )
						end
						glowBundleOutline:setRGB( 1, 1, 1 )
						glowBundleOutline:setAlpha( 0 )
						if event.interrupted then
							self.clipFinished( glowBundleOutline, event )
						else
							glowBundleOutline:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						glowBundleOutlineFrame3( glowBundleOutline, event )
						return 
					else
						glowBundleOutline:beginAnimation( "keyframe", 740, false, false, CoD.TweenType.Linear )
						glowBundleOutline:registerEventHandler( "transition_complete_keyframe", glowBundleOutlineFrame3 )
					end
				end
				
				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setRGB( 1, 1, 1 )
				self.glowBundleOutline:setAlpha( 0 )
				glowBundleOutlineFrame2( glowBundleOutline, {} )

				self.nextClip = "Focus"
			end
		},
		DailyDoubleRareBundle = {
			DefaultClip = function ()
				self:setupElementClipCounter( 29 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 1 )
				self.clipFinished( BundleOnOpen, {} )

				SixPackCommonBundleOnOpen:completeAnimation()
				self.SixPackCommonBundleOnOpen:setAlpha( 0 )
				self.clipFinished( SixPackCommonBundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setLeftRight( false, false, -80.5, 80.5 )
				self.BribeOn:setTopBottom( true, false, -40.46, 120.54 )
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setLeftRight( false, false, -80.5, 80.5 )
				self.glowBribe:setTopBottom( true, false, -40.46, 120.54 )
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				BundleExperimentRareCount:completeAnimation()
				self.BundleExperimentRareCount:setAlpha( 0 )
				self.clipFinished( BundleExperimentRareCount, {} )

				CodeBundleRareCount:completeAnimation()
				self.CodeBundleRareCount:setAlpha( 0 )
				self.clipFinished( CodeBundleRareCount, {} )

				NoDupesRareCount:completeAnimation()
				self.NoDupesRareCount:setAlpha( 0 )
				self.clipFinished( NoDupesRareCount, {} )

				HundredBundleCount:completeAnimation()
				self.HundredBundleCount:setAlpha( 0 )
				self.clipFinished( HundredBundleCount, {} )

				DailyDoubleRareCount:completeAnimation()
				self.DailyDoubleRareCount:setAlpha( 1 )
				self.clipFinished( DailyDoubleRareCount, {} )

				SixPackCommonCount:completeAnimation()
				self.SixPackCommonCount:setAlpha( 0 )
				self.clipFinished( SixPackCommonCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				GenericRewardImage:completeAnimation()
				self.GenericRewardImage:setAlpha( 0 )
				self.clipFinished( GenericRewardImage, {} )

				GenericRewardCount0:completeAnimation()
				self.GenericRewardCount0:setAlpha( 0 )
				self.clipFinished( GenericRewardCount0, {} )

				GenericRewardCount:completeAnimation()
				self.GenericRewardCount:setAlpha( 0 )
				self.clipFinished( GenericRewardCount, {} )

				WeaponBribe3Count0:completeAnimation()
				self.WeaponBribe3Count0:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count0, {} )

				WeaponBribe3Count:completeAnimation()
				self.WeaponBribe3Count:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count, {} )

				LimitedEditionCamoCount0:completeAnimation()
				self.LimitedEditionCamoCount0:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount0, {} )

				LimitedEditionCamoCount:completeAnimation()
				self.LimitedEditionCamoCount:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 14 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 1 )
				self.clipFinished( BundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setLeftRight( true, false, -43.25, 126.35 )
				self.smokewidget:setTopBottom( true, false, -69.96, 108.54 )
				self.smokewidget:setRGB( 0.22, 0.93, 0.93 )
				self.smokewidget:setAlpha( 1 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setLeftRight( true, false, -30.45, 113.55 )
				self.fxEmber2:setTopBottom( true, false, -54.96, 125.04 )
				self.fxEmber2:setRGB( 0.22, 0.93, 0.93 )
				self.fxEmber2:setAlpha( 1 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setLeftRight( true, false, -34.25, 117.35 )
				self.fxEmber:setTopBottom( true, false, -42.46, 147.04 )
				self.fxEmber:setRGB( 0.22, 0.93, 0.93 )
				self.fxEmber:setAlpha( 1 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				glow0:completeAnimation()
				self.glow0:setRGB( 0.22, 0.93, 0.93 )
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )
				local DailyDoubleRareCountFrame2 = function ( DailyDoubleRareCount, event )
					local DailyDoubleRareCountFrame3 = function ( DailyDoubleRareCount, event )
						if not event.interrupted then
							DailyDoubleRareCount:beginAnimation( "keyframe", 809, false, false, CoD.TweenType.Linear )
						end
						DailyDoubleRareCount:setAlpha( 0.8 )
						if event.interrupted then
							self.clipFinished( DailyDoubleRareCount, event )
						else
							DailyDoubleRareCount:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						DailyDoubleRareCountFrame3( DailyDoubleRareCount, event )
						return 
					else
						DailyDoubleRareCount:beginAnimation( "keyframe", 740, false, false, CoD.TweenType.Linear )
						DailyDoubleRareCount:setAlpha( 1 )
						DailyDoubleRareCount:registerEventHandler( "transition_complete_keyframe", DailyDoubleRareCountFrame3 )
					end
				end
				
				DailyDoubleRareCount:completeAnimation()
				self.DailyDoubleRareCount:setAlpha( 0.8 )
				DailyDoubleRareCountFrame2( DailyDoubleRareCount, {} )
				local glowBundleOutlineFrame2 = function ( glowBundleOutline, event )
					local glowBundleOutlineFrame3 = function ( glowBundleOutline, event )
						if not event.interrupted then
							glowBundleOutline:beginAnimation( "keyframe", 809, false, false, CoD.TweenType.Linear )
						end
						glowBundleOutline:setRGB( 0.22, 0.93, 0.93 )
						glowBundleOutline:setAlpha( 0 )
						if event.interrupted then
							self.clipFinished( glowBundleOutline, event )
						else
							glowBundleOutline:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						glowBundleOutlineFrame3( glowBundleOutline, event )
						return 
					else
						glowBundleOutline:beginAnimation( "keyframe", 740, false, false, CoD.TweenType.Linear )
						glowBundleOutline:setAlpha( 1 )
						glowBundleOutline:registerEventHandler( "transition_complete_keyframe", glowBundleOutlineFrame3 )
					end
				end
				
				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setRGB( 0.22, 0.93, 0.93 )
				self.glowBundleOutline:setAlpha( 0 )
				glowBundleOutlineFrame2( glowBundleOutline, {} )

				self.nextClip = "Focus"
			end
		},
		HundredBundle = {
			DefaultClip = function ()
				self:setupElementClipCounter( 29 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 1 )
				self.clipFinished( BundleOnOpen, {} )

				SixPackCommonBundleOnOpen:completeAnimation()
				self.SixPackCommonBundleOnOpen:setAlpha( 0 )
				self.clipFinished( SixPackCommonBundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setLeftRight( false, false, -80.5, 80.5 )
				self.BribeOn:setTopBottom( true, false, -40.46, 120.54 )
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setLeftRight( false, false, -80.5, 80.5 )
				self.glowBribe:setTopBottom( true, false, -40.46, 120.54 )
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				BundleExperimentRareCount:completeAnimation()
				self.BundleExperimentRareCount:setAlpha( 0 )
				self.clipFinished( BundleExperimentRareCount, {} )

				CodeBundleRareCount:completeAnimation()
				self.CodeBundleRareCount:setAlpha( 0 )
				self.clipFinished( CodeBundleRareCount, {} )

				NoDupesRareCount:completeAnimation()
				self.NoDupesRareCount:setAlpha( 0 )
				self.clipFinished( NoDupesRareCount, {} )

				HundredBundleCount:completeAnimation()
				self.HundredBundleCount:setAlpha( 1 )
				self.clipFinished( HundredBundleCount, {} )

				DailyDoubleRareCount:completeAnimation()
				self.DailyDoubleRareCount:setAlpha( 0 )
				self.clipFinished( DailyDoubleRareCount, {} )

				SixPackCommonCount:completeAnimation()
				self.SixPackCommonCount:setAlpha( 0 )
				self.clipFinished( SixPackCommonCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				GenericRewardImage:completeAnimation()
				self.GenericRewardImage:setAlpha( 0 )
				self.clipFinished( GenericRewardImage, {} )

				GenericRewardCount0:completeAnimation()
				self.GenericRewardCount0:setAlpha( 0 )
				self.clipFinished( GenericRewardCount0, {} )

				GenericRewardCount:completeAnimation()
				self.GenericRewardCount:setAlpha( 0 )
				self.clipFinished( GenericRewardCount, {} )

				WeaponBribe3Count0:completeAnimation()
				self.WeaponBribe3Count0:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count0, {} )

				WeaponBribe3Count:completeAnimation()
				self.WeaponBribe3Count:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count, {} )

				LimitedEditionCamoCount0:completeAnimation()
				self.LimitedEditionCamoCount0:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount0, {} )

				LimitedEditionCamoCount:completeAnimation()
				self.LimitedEditionCamoCount:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 14 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 1 )
				self.clipFinished( BundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setLeftRight( true, false, -43.25, 126.35 )
				self.smokewidget:setTopBottom( true, false, -69.96, 108.54 )
				self.smokewidget:setRGB( 0.22, 0.93, 0.93 )
				self.smokewidget:setAlpha( 1 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setLeftRight( true, false, -30.45, 113.55 )
				self.fxEmber2:setTopBottom( true, false, -54.96, 125.04 )
				self.fxEmber2:setRGB( 0.22, 0.93, 0.93 )
				self.fxEmber2:setAlpha( 1 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setLeftRight( true, false, -34.25, 117.35 )
				self.fxEmber:setTopBottom( true, false, -42.46, 147.04 )
				self.fxEmber:setRGB( 0.22, 0.93, 0.93 )
				self.fxEmber:setAlpha( 1 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				glow0:completeAnimation()
				self.glow0:setRGB( 0.22, 0.93, 0.93 )
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )
				local HundredBundleCountFrame2 = function ( HundredBundleCount, event )
					local HundredBundleCountFrame3 = function ( HundredBundleCount, event )
						if not event.interrupted then
							HundredBundleCount:beginAnimation( "keyframe", 809, false, false, CoD.TweenType.Linear )
						end
						HundredBundleCount:setAlpha( 0.8 )
						if event.interrupted then
							self.clipFinished( HundredBundleCount, event )
						else
							HundredBundleCount:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						HundredBundleCountFrame3( HundredBundleCount, event )
						return 
					else
						HundredBundleCount:beginAnimation( "keyframe", 740, false, false, CoD.TweenType.Linear )
						HundredBundleCount:setAlpha( 1 )
						HundredBundleCount:registerEventHandler( "transition_complete_keyframe", HundredBundleCountFrame3 )
					end
				end
				
				HundredBundleCount:completeAnimation()
				self.HundredBundleCount:setAlpha( 0.8 )
				HundredBundleCountFrame2( HundredBundleCount, {} )
				local glowBundleOutlineFrame2 = function ( glowBundleOutline, event )
					local glowBundleOutlineFrame3 = function ( glowBundleOutline, event )
						if not event.interrupted then
							glowBundleOutline:beginAnimation( "keyframe", 809, false, false, CoD.TweenType.Linear )
						end
						glowBundleOutline:setRGB( 0.22, 0.93, 0.93 )
						glowBundleOutline:setAlpha( 0 )
						if event.interrupted then
							self.clipFinished( glowBundleOutline, event )
						else
							glowBundleOutline:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						glowBundleOutlineFrame3( glowBundleOutline, event )
						return 
					else
						glowBundleOutline:beginAnimation( "keyframe", 740, false, false, CoD.TweenType.Linear )
						glowBundleOutline:setAlpha( 1 )
						glowBundleOutline:registerEventHandler( "transition_complete_keyframe", glowBundleOutlineFrame3 )
					end
				end
				
				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setRGB( 0.22, 0.93, 0.93 )
				self.glowBundleOutline:setAlpha( 0 )
				glowBundleOutlineFrame2( glowBundleOutline, {} )

				self.nextClip = "Focus"
			end
		},
		BundleExperimentRareBundle = {
			DefaultClip = function ()
				self:setupElementClipCounter( 29 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 1 )
				self.clipFinished( BundleOnOpen, {} )

				SixPackCommonBundleOnOpen:completeAnimation()
				self.SixPackCommonBundleOnOpen:setAlpha( 0 )
				self.clipFinished( SixPackCommonBundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setLeftRight( false, false, -80.5, 80.5 )
				self.BribeOn:setTopBottom( true, false, -40.46, 120.54 )
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setLeftRight( false, false, -80.5, 80.5 )
				self.glowBribe:setTopBottom( true, false, -40.46, 120.54 )
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				BundleExperimentRareCount:completeAnimation()
				self.BundleExperimentRareCount:setAlpha( 1 )
				self.clipFinished( BundleExperimentRareCount, {} )

				CodeBundleRareCount:completeAnimation()
				self.CodeBundleRareCount:setAlpha( 0 )
				self.clipFinished( CodeBundleRareCount, {} )

				NoDupesRareCount:completeAnimation()
				self.NoDupesRareCount:setAlpha( 0 )
				self.clipFinished( NoDupesRareCount, {} )

				HundredBundleCount:completeAnimation()
				self.HundredBundleCount:setAlpha( 0 )
				self.clipFinished( HundredBundleCount, {} )

				DailyDoubleRareCount:completeAnimation()
				self.DailyDoubleRareCount:setAlpha( 0 )
				self.clipFinished( DailyDoubleRareCount, {} )

				SixPackCommonCount:completeAnimation()
				self.SixPackCommonCount:setAlpha( 0 )
				self.clipFinished( SixPackCommonCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				GenericRewardImage:completeAnimation()
				self.GenericRewardImage:setAlpha( 0 )
				self.clipFinished( GenericRewardImage, {} )

				GenericRewardCount0:completeAnimation()
				self.GenericRewardCount0:setAlpha( 0 )
				self.clipFinished( GenericRewardCount0, {} )

				GenericRewardCount:completeAnimation()
				self.GenericRewardCount:setAlpha( 0 )
				self.clipFinished( GenericRewardCount, {} )

				WeaponBribe3Count0:completeAnimation()
				self.WeaponBribe3Count0:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count0, {} )

				WeaponBribe3Count:completeAnimation()
				self.WeaponBribe3Count:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count, {} )

				LimitedEditionCamoCount0:completeAnimation()
				self.LimitedEditionCamoCount0:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount0, {} )

				LimitedEditionCamoCount:completeAnimation()
				self.LimitedEditionCamoCount:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 15 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 1 )
				self.clipFinished( BundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setLeftRight( true, false, -43.25, 126.35 )
				self.smokewidget:setTopBottom( true, false, -69.96, 108.54 )
				self.smokewidget:setRGB( 0.22, 0.93, 0.93 )
				self.smokewidget:setAlpha( 1 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setLeftRight( true, false, -30.45, 113.55 )
				self.fxEmber2:setTopBottom( true, false, -54.96, 125.04 )
				self.fxEmber2:setRGB( 0.22, 0.93, 0.93 )
				self.fxEmber2:setAlpha( 1 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setLeftRight( true, false, -34.25, 117.35 )
				self.fxEmber:setTopBottom( true, false, -42.46, 147.04 )
				self.fxEmber:setRGB( 0.22, 0.93, 0.93 )
				self.fxEmber:setAlpha( 1 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				glow0:completeAnimation()
				self.glow0:setRGB( 0.22, 0.93, 0.93 )
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )
				local BundleExperimentRareCountFrame2 = function ( BundleExperimentRareCount, event )
					local BundleExperimentRareCountFrame3 = function ( BundleExperimentRareCount, event )
						if not event.interrupted then
							BundleExperimentRareCount:beginAnimation( "keyframe", 809, false, false, CoD.TweenType.Linear )
						end
						BundleExperimentRareCount:setAlpha( 0.8 )
						if event.interrupted then
							self.clipFinished( BundleExperimentRareCount, event )
						else
							BundleExperimentRareCount:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						BundleExperimentRareCountFrame3( BundleExperimentRareCount, event )
						return 
					else
						BundleExperimentRareCount:beginAnimation( "keyframe", 740, false, false, CoD.TweenType.Linear )
						BundleExperimentRareCount:setAlpha( 1 )
						BundleExperimentRareCount:registerEventHandler( "transition_complete_keyframe", BundleExperimentRareCountFrame3 )
					end
				end
				
				BundleExperimentRareCount:completeAnimation()
				self.BundleExperimentRareCount:setAlpha( 0.8 )
				BundleExperimentRareCountFrame2( BundleExperimentRareCount, {} )

				DailyDoubleRareCount:completeAnimation()
				self.DailyDoubleRareCount:setAlpha( 0 )
				self.clipFinished( DailyDoubleRareCount, {} )
				local glowBundleOutlineFrame2 = function ( glowBundleOutline, event )
					local glowBundleOutlineFrame3 = function ( glowBundleOutline, event )
						if not event.interrupted then
							glowBundleOutline:beginAnimation( "keyframe", 809, false, false, CoD.TweenType.Linear )
						end
						glowBundleOutline:setRGB( 0.22, 0.93, 0.93 )
						glowBundleOutline:setAlpha( 0 )
						if event.interrupted then
							self.clipFinished( glowBundleOutline, event )
						else
							glowBundleOutline:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						glowBundleOutlineFrame3( glowBundleOutline, event )
						return 
					else
						glowBundleOutline:beginAnimation( "keyframe", 740, false, false, CoD.TweenType.Linear )
						glowBundleOutline:setAlpha( 1 )
						glowBundleOutline:registerEventHandler( "transition_complete_keyframe", glowBundleOutlineFrame3 )
					end
				end
				
				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setRGB( 0.22, 0.93, 0.93 )
				self.glowBundleOutline:setAlpha( 0 )
				glowBundleOutlineFrame2( glowBundleOutline, {} )

				self.nextClip = "Focus"
			end
		},
		NoDupesRareBundle = {
			DefaultClip = function ()
				self:setupElementClipCounter( 29 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 1 )
				self.clipFinished( BundleOnOpen, {} )

				SixPackCommonBundleOnOpen:completeAnimation()
				self.SixPackCommonBundleOnOpen:setAlpha( 0 )
				self.clipFinished( SixPackCommonBundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setLeftRight( false, false, -80.5, 80.5 )
				self.BribeOn:setTopBottom( true, false, -40.46, 120.54 )
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setLeftRight( false, false, -80.5, 80.5 )
				self.glowBribe:setTopBottom( true, false, -40.46, 120.54 )
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				BundleExperimentRareCount:completeAnimation()
				self.BundleExperimentRareCount:setAlpha( 0 )
				self.clipFinished( BundleExperimentRareCount, {} )

				CodeBundleRareCount:completeAnimation()
				self.CodeBundleRareCount:setAlpha( 0 )
				self.clipFinished( CodeBundleRareCount, {} )

				NoDupesRareCount:completeAnimation()
				self.NoDupesRareCount:setAlpha( 1 )
				self.clipFinished( NoDupesRareCount, {} )

				HundredBundleCount:completeAnimation()
				self.HundredBundleCount:setAlpha( 0 )
				self.clipFinished( HundredBundleCount, {} )

				DailyDoubleRareCount:completeAnimation()
				self.DailyDoubleRareCount:setAlpha( 0 )
				self.clipFinished( DailyDoubleRareCount, {} )

				SixPackCommonCount:completeAnimation()
				self.SixPackCommonCount:setAlpha( 0 )
				self.clipFinished( SixPackCommonCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				GenericRewardImage:completeAnimation()
				self.GenericRewardImage:setAlpha( 0 )
				self.clipFinished( GenericRewardImage, {} )

				GenericRewardCount0:completeAnimation()
				self.GenericRewardCount0:setAlpha( 0 )
				self.clipFinished( GenericRewardCount0, {} )

				GenericRewardCount:completeAnimation()
				self.GenericRewardCount:setAlpha( 0 )
				self.clipFinished( GenericRewardCount, {} )

				WeaponBribe3Count0:completeAnimation()
				self.WeaponBribe3Count0:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count0, {} )

				WeaponBribe3Count:completeAnimation()
				self.WeaponBribe3Count:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count, {} )

				LimitedEditionCamoCount0:completeAnimation()
				self.LimitedEditionCamoCount0:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount0, {} )

				LimitedEditionCamoCount:completeAnimation()
				self.LimitedEditionCamoCount:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 15 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 1 )
				self.clipFinished( BundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setLeftRight( true, false, -43.25, 126.35 )
				self.smokewidget:setTopBottom( true, false, -69.96, 108.54 )
				self.smokewidget:setRGB( 0.22, 0.93, 0.93 )
				self.smokewidget:setAlpha( 1 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setLeftRight( true, false, -30.45, 113.55 )
				self.fxEmber2:setTopBottom( true, false, -54.96, 125.04 )
				self.fxEmber2:setRGB( 0.22, 0.93, 0.93 )
				self.fxEmber2:setAlpha( 1 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setLeftRight( true, false, -34.25, 117.35 )
				self.fxEmber:setTopBottom( true, false, -42.46, 147.04 )
				self.fxEmber:setRGB( 0.22, 0.93, 0.93 )
				self.fxEmber:setAlpha( 1 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				glow0:completeAnimation()
				self.glow0:setRGB( 0.22, 0.93, 0.93 )
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )
				local NoDupesRareCountFrame2 = function ( NoDupesRareCount, event )
					local NoDupesRareCountFrame3 = function ( NoDupesRareCount, event )
						if not event.interrupted then
							NoDupesRareCount:beginAnimation( "keyframe", 809, false, false, CoD.TweenType.Linear )
						end
						NoDupesRareCount:setAlpha( 0.8 )
						if event.interrupted then
							self.clipFinished( NoDupesRareCount, event )
						else
							NoDupesRareCount:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						NoDupesRareCountFrame3( NoDupesRareCount, event )
						return 
					else
						NoDupesRareCount:beginAnimation( "keyframe", 740, false, false, CoD.TweenType.Linear )
						NoDupesRareCount:setAlpha( 1 )
						NoDupesRareCount:registerEventHandler( "transition_complete_keyframe", NoDupesRareCountFrame3 )
					end
				end
				
				NoDupesRareCount:completeAnimation()
				self.NoDupesRareCount:setAlpha( 0.8 )
				NoDupesRareCountFrame2( NoDupesRareCount, {} )

				DailyDoubleRareCount:completeAnimation()
				self.DailyDoubleRareCount:setAlpha( 0 )
				self.clipFinished( DailyDoubleRareCount, {} )
				local glowBundleOutlineFrame2 = function ( glowBundleOutline, event )
					local glowBundleOutlineFrame3 = function ( glowBundleOutline, event )
						if not event.interrupted then
							glowBundleOutline:beginAnimation( "keyframe", 809, false, false, CoD.TweenType.Linear )
						end
						glowBundleOutline:setRGB( 0.22, 0.93, 0.93 )
						glowBundleOutline:setAlpha( 0 )
						if event.interrupted then
							self.clipFinished( glowBundleOutline, event )
						else
							glowBundleOutline:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						glowBundleOutlineFrame3( glowBundleOutline, event )
						return 
					else
						glowBundleOutline:beginAnimation( "keyframe", 740, false, false, CoD.TweenType.Linear )
						glowBundleOutline:setAlpha( 1 )
						glowBundleOutline:registerEventHandler( "transition_complete_keyframe", glowBundleOutlineFrame3 )
					end
				end
				
				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setRGB( 0.22, 0.93, 0.93 )
				self.glowBundleOutline:setAlpha( 0 )
				glowBundleOutlineFrame2( glowBundleOutline, {} )

				self.nextClip = "Focus"
			end
		},
		CodeBundleRareBundle = {
			DefaultClip = function ()
				self:setupElementClipCounter( 29 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 1 )
				self.clipFinished( BundleOnOpen, {} )

				SixPackCommonBundleOnOpen:completeAnimation()
				self.SixPackCommonBundleOnOpen:setAlpha( 0 )
				self.clipFinished( SixPackCommonBundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setLeftRight( false, false, -80.5, 80.5 )
				self.BribeOn:setTopBottom( true, false, -40.46, 120.54 )
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setLeftRight( false, false, -80.5, 80.5 )
				self.glowBribe:setTopBottom( true, false, -40.46, 120.54 )
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				BundleExperimentRareCount:completeAnimation()
				self.BundleExperimentRareCount:setAlpha( 0 )
				self.clipFinished( BundleExperimentRareCount, {} )

				CodeBundleRareCount:completeAnimation()
				self.CodeBundleRareCount:setAlpha( 1 )
				self.clipFinished( CodeBundleRareCount, {} )

				NoDupesRareCount:completeAnimation()
				self.NoDupesRareCount:setAlpha( 0 )
				self.clipFinished( NoDupesRareCount, {} )

				HundredBundleCount:completeAnimation()
				self.HundredBundleCount:setAlpha( 0 )
				self.clipFinished( HundredBundleCount, {} )

				DailyDoubleRareCount:completeAnimation()
				self.DailyDoubleRareCount:setAlpha( 0 )
				self.clipFinished( DailyDoubleRareCount, {} )

				SixPackCommonCount:completeAnimation()
				self.SixPackCommonCount:setAlpha( 0 )
				self.clipFinished( SixPackCommonCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				GenericRewardImage:completeAnimation()
				self.GenericRewardImage:setAlpha( 0 )
				self.clipFinished( GenericRewardImage, {} )

				GenericRewardCount0:completeAnimation()
				self.GenericRewardCount0:setAlpha( 0 )
				self.clipFinished( GenericRewardCount0, {} )

				GenericRewardCount:completeAnimation()
				self.GenericRewardCount:setAlpha( 0 )
				self.clipFinished( GenericRewardCount, {} )

				WeaponBribe3Count0:completeAnimation()
				self.WeaponBribe3Count0:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count0, {} )

				WeaponBribe3Count:completeAnimation()
				self.WeaponBribe3Count:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count, {} )

				LimitedEditionCamoCount0:completeAnimation()
				self.LimitedEditionCamoCount0:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount0, {} )

				LimitedEditionCamoCount:completeAnimation()
				self.LimitedEditionCamoCount:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 16 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 1 )
				self.clipFinished( BundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setLeftRight( true, false, -43.25, 126.35 )
				self.smokewidget:setTopBottom( true, false, -69.96, 108.54 )
				self.smokewidget:setRGB( 0.22, 0.93, 0.93 )
				self.smokewidget:setAlpha( 1 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setLeftRight( true, false, -30.45, 113.55 )
				self.fxEmber2:setTopBottom( true, false, -54.96, 125.04 )
				self.fxEmber2:setRGB( 0.22, 0.93, 0.93 )
				self.fxEmber2:setAlpha( 1 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setLeftRight( true, false, -34.25, 117.35 )
				self.fxEmber:setTopBottom( true, false, -42.46, 147.04 )
				self.fxEmber:setRGB( 0.22, 0.93, 0.93 )
				self.fxEmber:setAlpha( 1 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				glow0:completeAnimation()
				self.glow0:setRGB( 0.22, 0.93, 0.93 )
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleExperimentRareCount:completeAnimation()
				self.BundleExperimentRareCount:setAlpha( 0 )
				self.clipFinished( BundleExperimentRareCount, {} )
				local CodeBundleRareCountFrame2 = function ( CodeBundleRareCount, event )
					local CodeBundleRareCountFrame3 = function ( CodeBundleRareCount, event )
						if not event.interrupted then
							CodeBundleRareCount:beginAnimation( "keyframe", 809, false, false, CoD.TweenType.Linear )
						end
						CodeBundleRareCount:setAlpha( 0.8 )
						if event.interrupted then
							self.clipFinished( CodeBundleRareCount, event )
						else
							CodeBundleRareCount:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						CodeBundleRareCountFrame3( CodeBundleRareCount, event )
						return 
					else
						CodeBundleRareCount:beginAnimation( "keyframe", 740, false, false, CoD.TweenType.Linear )
						CodeBundleRareCount:setAlpha( 1 )
						CodeBundleRareCount:registerEventHandler( "transition_complete_keyframe", CodeBundleRareCountFrame3 )
					end
				end
				
				CodeBundleRareCount:completeAnimation()
				self.CodeBundleRareCount:setAlpha( 0.8 )
				CodeBundleRareCountFrame2( CodeBundleRareCount, {} )

				DailyDoubleRareCount:completeAnimation()
				self.DailyDoubleRareCount:setAlpha( 0 )
				self.clipFinished( DailyDoubleRareCount, {} )
				local glowBundleOutlineFrame2 = function ( glowBundleOutline, event )
					local glowBundleOutlineFrame3 = function ( glowBundleOutline, event )
						if not event.interrupted then
							glowBundleOutline:beginAnimation( "keyframe", 809, false, false, CoD.TweenType.Linear )
						end
						glowBundleOutline:setRGB( 0.22, 0.93, 0.93 )
						glowBundleOutline:setAlpha( 0 )
						if event.interrupted then
							self.clipFinished( glowBundleOutline, event )
						else
							glowBundleOutline:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						glowBundleOutlineFrame3( glowBundleOutline, event )
						return 
					else
						glowBundleOutline:beginAnimation( "keyframe", 740, false, false, CoD.TweenType.Linear )
						glowBundleOutline:setAlpha( 1 )
						glowBundleOutline:registerEventHandler( "transition_complete_keyframe", glowBundleOutlineFrame3 )
					end
				end
				
				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setRGB( 0.22, 0.93, 0.93 )
				self.glowBundleOutline:setAlpha( 0 )
				glowBundleOutlineFrame2( glowBundleOutline, {} )

				self.nextClip = "Focus"
			end
		},
		WeaponBribe3 = {
			DefaultClip = function ()
				self:setupElementClipCounter( 36 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 0 )
				self.clipFinished( BundleOnOpen, {} )

				SixPackCommonBundleOnOpen:completeAnimation()
				self.SixPackCommonBundleOnOpen:setAlpha( 0 )
				self.clipFinished( SixPackCommonBundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setLeftRight( false, false, -80.5, 80.5 )
				self.BribeOn:setTopBottom( true, false, -40.46, 120.54 )
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setLeftRight( false, false, -80.5, 80.5 )
				self.glowBribe:setTopBottom( true, false, -40.46, 120.54 )
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				BundleExperimentRareCount:completeAnimation()
				self.BundleExperimentRareCount:setAlpha( 0 )
				self.clipFinished( BundleExperimentRareCount, {} )

				CodeBundleRareCount:completeAnimation()
				self.CodeBundleRareCount:setAlpha( 0 )
				self.clipFinished( CodeBundleRareCount, {} )

				NoDupesRareCount:completeAnimation()
				self.NoDupesRareCount:setAlpha( 0 )
				self.clipFinished( NoDupesRareCount, {} )

				HundredBundleCount:completeAnimation()
				self.HundredBundleCount:setAlpha( 0 )
				self.clipFinished( HundredBundleCount, {} )

				DailyDoubleRareCount:completeAnimation()
				self.DailyDoubleRareCount:setAlpha( 0 )
				self.clipFinished( DailyDoubleRareCount, {} )

				SixPackCommonCount:completeAnimation()
				self.SixPackCommonCount:setAlpha( 0 )
				self.clipFinished( SixPackCommonCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				IncentiveRare:completeAnimation()
				self.IncentiveRare:setAlpha( 0 )
				self.clipFinished( IncentiveRare, {} )

				IncentiveWeapon:completeAnimation()
				self.IncentiveWeapon:setAlpha( 0 )
				self.clipFinished( IncentiveWeapon, {} )

				GenericRewardImage:completeAnimation()
				self.GenericRewardImage:setAlpha( 0 )
				self.clipFinished( GenericRewardImage, {} )

				GenericRewardImage0:completeAnimation()
				self.GenericRewardImage0:setAlpha( 1 )
				self.clipFinished( GenericRewardImage0, {} )

				IncentiveNumberbacker:completeAnimation()
				self.IncentiveNumberbacker:setLeftRight( true, false, -45, 123 )
				self.IncentiveNumberbacker:setTopBottom( true, false, 35, 107 )
				self.IncentiveNumberbacker:setAlpha( 1 )
				self.clipFinished( IncentiveNumberbacker, {} )

				WeaponIncentiveCount:completeAnimation()
				self.WeaponIncentiveCount:setLeftRight( true, false, -61.5, 138.5 )
				self.WeaponIncentiveCount:setTopBottom( true, false, 19, 53 )
				self.WeaponIncentiveCount:setAlpha( 0 )
				self.clipFinished( WeaponIncentiveCount, {} )

				WeaponIncentiveCount0:completeAnimation()
				self.WeaponIncentiveCount0:setLeftRight( true, false, -61.5, 138.5 )
				self.WeaponIncentiveCount0:setTopBottom( true, false, 18, 52 )
				self.WeaponIncentiveCount0:setAlpha( 0 )
				self.clipFinished( WeaponIncentiveCount0, {} )

				RareIncentiveCount:completeAnimation()
				self.RareIncentiveCount:setAlpha( 0 )
				self.clipFinished( RareIncentiveCount, {} )

				GenericRewardCount0:completeAnimation()
				self.GenericRewardCount0:setAlpha( 0 )
				self.clipFinished( GenericRewardCount0, {} )

				GenericRewardCount:completeAnimation()
				self.GenericRewardCount:setAlpha( 0 )
				self.clipFinished( GenericRewardCount, {} )

				WeaponBribe3Count0:completeAnimation()
				self.WeaponBribe3Count0:setLeftRight( true, false, -61.93, 138.07 )
				self.WeaponBribe3Count0:setTopBottom( true, false, 54.75, 88.75 )
				self.WeaponBribe3Count0:setAlpha( 0.75 )
				self.clipFinished( WeaponBribe3Count0, {} )

				WeaponBribe3Count:completeAnimation()
				self.WeaponBribe3Count:setLeftRight( true, false, -61.93, 138.07 )
				self.WeaponBribe3Count:setTopBottom( true, false, 53.75, 87.75 )
				self.WeaponBribe3Count:setAlpha( 1 )
				self.clipFinished( WeaponBribe3Count, {} )

				LimitedEditionCamoCount0:completeAnimation()
				self.LimitedEditionCamoCount0:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount0, {} )

				LimitedEditionCamoCount:completeAnimation()
				self.LimitedEditionCamoCount:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 27 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 0 )
				self.clipFinished( BundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setLeftRight( false, false, -80.5, 80.5 )
				self.BribeOn:setTopBottom( true, false, -40.46, 120.54 )
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setLeftRight( false, false, -80.5, 80.5 )
				self.glowBribe:setTopBottom( true, false, -40.46, 120.54 )
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				IncentiveRare:completeAnimation()
				self.IncentiveRare:setAlpha( 0 )
				self.clipFinished( IncentiveRare, {} )

				IncentiveWeapon:completeAnimation()
				self.IncentiveWeapon:setAlpha( 0 )
				self.clipFinished( IncentiveWeapon, {} )

				GenericRewardImage:completeAnimation()
				self.GenericRewardImage:setAlpha( 0 )
				self.clipFinished( GenericRewardImage, {} )

				GenericRewardImage0:completeAnimation()
				self.GenericRewardImage0:setAlpha( 1 )
				self.clipFinished( GenericRewardImage0, {} )

				IncentiveNumberbacker:completeAnimation()
				self.IncentiveNumberbacker:setLeftRight( true, false, -45, 123 )
				self.IncentiveNumberbacker:setTopBottom( true, false, 35, 107 )
				self.IncentiveNumberbacker:setAlpha( 1 )
				self.clipFinished( IncentiveNumberbacker, {} )

				WeaponIncentiveCount:completeAnimation()
				self.WeaponIncentiveCount:setAlpha( 0 )
				self.clipFinished( WeaponIncentiveCount, {} )

				WeaponIncentiveCount0:completeAnimation()
				self.WeaponIncentiveCount0:setAlpha( 0 )
				self.clipFinished( WeaponIncentiveCount0, {} )

				RareIncentiveCount:completeAnimation()
				self.RareIncentiveCount:setAlpha( 0 )
				self.clipFinished( RareIncentiveCount, {} )

				GenericRewardCount0:completeAnimation()
				self.GenericRewardCount0:setAlpha( 0 )
				self.clipFinished( GenericRewardCount0, {} )

				GenericRewardCount:completeAnimation()
				self.GenericRewardCount:setAlpha( 0 )
				self.clipFinished( GenericRewardCount, {} )

				WeaponBribe3Count0:completeAnimation()
				self.WeaponBribe3Count0:setLeftRight( true, false, -61.93, 138.07 )
				self.WeaponBribe3Count0:setTopBottom( true, false, 54.75, 88.75 )
				self.WeaponBribe3Count0:setAlpha( 0.75 )
				self.clipFinished( WeaponBribe3Count0, {} )

				WeaponBribe3Count:completeAnimation()
				self.WeaponBribe3Count:setLeftRight( true, false, -61.93, 138.07 )
				self.WeaponBribe3Count:setTopBottom( true, false, 53.75, 87.75 )
				self.WeaponBribe3Count:setAlpha( 1 )
				self.clipFinished( WeaponBribe3Count, {} )
			end
		},
		LimitedEditionCamo = {
			DefaultClip = function ()
				self:setupElementClipCounter( 36 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 0 )
				self.clipFinished( BundleOnOpen, {} )

				SixPackCommonBundleOnOpen:completeAnimation()
				self.SixPackCommonBundleOnOpen:setAlpha( 0 )
				self.clipFinished( SixPackCommonBundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setLeftRight( false, false, -80.5, 80.5 )
				self.BribeOn:setTopBottom( true, false, -40.46, 120.54 )
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setLeftRight( false, false, -80.5, 80.5 )
				self.glowBribe:setTopBottom( true, false, -40.46, 120.54 )
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				BundleExperimentRareCount:completeAnimation()
				self.BundleExperimentRareCount:setAlpha( 0 )
				self.clipFinished( BundleExperimentRareCount, {} )

				CodeBundleRareCount:completeAnimation()
				self.CodeBundleRareCount:setAlpha( 0 )
				self.clipFinished( CodeBundleRareCount, {} )

				NoDupesRareCount:completeAnimation()
				self.NoDupesRareCount:setAlpha( 0 )
				self.clipFinished( NoDupesRareCount, {} )

				HundredBundleCount:completeAnimation()
				self.HundredBundleCount:setAlpha( 0 )
				self.clipFinished( HundredBundleCount, {} )

				DailyDoubleRareCount:completeAnimation()
				self.DailyDoubleRareCount:setAlpha( 0 )
				self.clipFinished( DailyDoubleRareCount, {} )

				SixPackCommonCount:completeAnimation()
				self.SixPackCommonCount:setAlpha( 0 )
				self.clipFinished( SixPackCommonCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				IncentiveRare:completeAnimation()
				self.IncentiveRare:setAlpha( 0 )
				self.clipFinished( IncentiveRare, {} )

				IncentiveWeapon:completeAnimation()
				self.IncentiveWeapon:setAlpha( 0 )
				self.clipFinished( IncentiveWeapon, {} )

				GenericRewardImage:completeAnimation()
				self.GenericRewardImage:setAlpha( 0 )
				self.clipFinished( GenericRewardImage, {} )

				GenericRewardImage0:completeAnimation()
				self.GenericRewardImage0:setAlpha( 1 )
				self.clipFinished( GenericRewardImage0, {} )

				IncentiveNumberbacker:completeAnimation()
				self.IncentiveNumberbacker:setLeftRight( true, false, -45, 123 )
				self.IncentiveNumberbacker:setTopBottom( true, false, 35, 107 )
				self.IncentiveNumberbacker:setAlpha( 1 )
				self.clipFinished( IncentiveNumberbacker, {} )

				WeaponIncentiveCount:completeAnimation()
				self.WeaponIncentiveCount:setLeftRight( true, false, -61.5, 138.5 )
				self.WeaponIncentiveCount:setTopBottom( true, false, 19, 53 )
				self.WeaponIncentiveCount:setAlpha( 0 )
				self.clipFinished( WeaponIncentiveCount, {} )

				WeaponIncentiveCount0:completeAnimation()
				self.WeaponIncentiveCount0:setLeftRight( true, false, -61.5, 138.5 )
				self.WeaponIncentiveCount0:setTopBottom( true, false, 18, 52 )
				self.WeaponIncentiveCount0:setAlpha( 0 )
				self.clipFinished( WeaponIncentiveCount0, {} )

				RareIncentiveCount:completeAnimation()
				self.RareIncentiveCount:setAlpha( 0 )
				self.clipFinished( RareIncentiveCount, {} )

				GenericRewardCount0:completeAnimation()
				self.GenericRewardCount0:setAlpha( 0 )
				self.clipFinished( GenericRewardCount0, {} )

				GenericRewardCount:completeAnimation()
				self.GenericRewardCount:setAlpha( 0 )
				self.clipFinished( GenericRewardCount, {} )

				WeaponBribe3Count0:completeAnimation()
				self.WeaponBribe3Count0:setLeftRight( true, false, -61.93, 138.07 )
				self.WeaponBribe3Count0:setTopBottom( true, false, 54.75, 88.75 )
				self.WeaponBribe3Count0:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count0, {} )

				WeaponBribe3Count:completeAnimation()
				self.WeaponBribe3Count:setLeftRight( true, false, -61.93, 138.07 )
				self.WeaponBribe3Count:setTopBottom( true, false, 53.75, 87.75 )
				self.WeaponBribe3Count:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count, {} )

				LimitedEditionCamoCount0:completeAnimation()
				self.LimitedEditionCamoCount0:setLeftRight( true, false, -61.93, 138.07 )
				self.LimitedEditionCamoCount0:setTopBottom( true, false, 54.75, 88.75 )
				self.LimitedEditionCamoCount0:setAlpha( 0.75 )
				self.clipFinished( LimitedEditionCamoCount0, {} )

				LimitedEditionCamoCount:completeAnimation()
				self.LimitedEditionCamoCount:setLeftRight( true, false, -61.93, 138.07 )
				self.LimitedEditionCamoCount:setTopBottom( true, false, 53.75, 87.75 )
				self.LimitedEditionCamoCount:setAlpha( 1 )
				self.clipFinished( LimitedEditionCamoCount, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 29 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 0 )
				self.clipFinished( BundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setLeftRight( false, false, -80.5, 80.5 )
				self.BribeOn:setTopBottom( true, false, -40.46, 120.54 )
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setLeftRight( false, false, -80.5, 80.5 )
				self.glowBribe:setTopBottom( true, false, -40.46, 120.54 )
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				IncentiveRare:completeAnimation()
				self.IncentiveRare:setAlpha( 0 )
				self.clipFinished( IncentiveRare, {} )

				IncentiveWeapon:completeAnimation()
				self.IncentiveWeapon:setAlpha( 0 )
				self.clipFinished( IncentiveWeapon, {} )

				GenericRewardImage:completeAnimation()
				self.GenericRewardImage:setAlpha( 0 )
				self.clipFinished( GenericRewardImage, {} )

				GenericRewardImage0:completeAnimation()
				self.GenericRewardImage0:setAlpha( 1 )
				self.clipFinished( GenericRewardImage0, {} )

				IncentiveNumberbacker:completeAnimation()
				self.IncentiveNumberbacker:setLeftRight( true, false, -45, 123 )
				self.IncentiveNumberbacker:setTopBottom( true, false, 35, 107 )
				self.IncentiveNumberbacker:setAlpha( 1 )
				self.clipFinished( IncentiveNumberbacker, {} )

				WeaponIncentiveCount:completeAnimation()
				self.WeaponIncentiveCount:setAlpha( 0 )
				self.clipFinished( WeaponIncentiveCount, {} )

				WeaponIncentiveCount0:completeAnimation()
				self.WeaponIncentiveCount0:setAlpha( 0 )
				self.clipFinished( WeaponIncentiveCount0, {} )

				RareIncentiveCount:completeAnimation()
				self.RareIncentiveCount:setAlpha( 0 )
				self.clipFinished( RareIncentiveCount, {} )

				GenericRewardCount0:completeAnimation()
				self.GenericRewardCount0:setAlpha( 0 )
				self.clipFinished( GenericRewardCount0, {} )

				GenericRewardCount:completeAnimation()
				self.GenericRewardCount:setAlpha( 0 )
				self.clipFinished( GenericRewardCount, {} )

				WeaponBribe3Count0:completeAnimation()
				self.WeaponBribe3Count0:setLeftRight( true, false, -61.93, 138.07 )
				self.WeaponBribe3Count0:setTopBottom( true, false, 54.75, 88.75 )
				self.WeaponBribe3Count0:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count0, {} )

				WeaponBribe3Count:completeAnimation()
				self.WeaponBribe3Count:setLeftRight( true, false, -61.93, 138.07 )
				self.WeaponBribe3Count:setTopBottom( true, false, 53.75, 87.75 )
				self.WeaponBribe3Count:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count, {} )

				LimitedEditionCamoCount0:completeAnimation()
				self.LimitedEditionCamoCount0:setLeftRight( true, false, -61.93, 138.07 )
				self.LimitedEditionCamoCount0:setTopBottom( true, false, 54.75, 88.75 )
				self.LimitedEditionCamoCount0:setAlpha( 0.75 )
				self.clipFinished( LimitedEditionCamoCount0, {} )

				LimitedEditionCamoCount:completeAnimation()
				self.LimitedEditionCamoCount:setLeftRight( true, false, -61.93, 138.07 )
				self.LimitedEditionCamoCount:setTopBottom( true, false, 53.75, 87.75 )
				self.LimitedEditionCamoCount:setAlpha( 1 )
				self.clipFinished( LimitedEditionCamoCount, {} )
			end
		},
		RareBundle10for5 = {
			DefaultClip = function ()
				self:setupElementClipCounter( 30 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 1 )
				self.clipFinished( BundleOnOpen, {} )

				SixPackCommonBundleOnOpen:completeAnimation()
				self.SixPackCommonBundleOnOpen:setAlpha( 0 )
				self.clipFinished( SixPackCommonBundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setLeftRight( false, false, -80.5, 80.5 )
				self.BribeOn:setTopBottom( true, false, -40.46, 120.54 )
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setLeftRight( false, false, -80.5, 80.5 )
				self.glowBribe:setTopBottom( true, false, -40.46, 120.54 )
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				BundleExperimentRareCount:completeAnimation()
				self.BundleExperimentRareCount:setAlpha( 0 )
				self.clipFinished( BundleExperimentRareCount, {} )

				CodeBundleRareCount:completeAnimation()
				self.CodeBundleRareCount:setAlpha( 0 )
				self.clipFinished( CodeBundleRareCount, {} )

				NoDupesRareCount:completeAnimation()
				self.NoDupesRareCount:setAlpha( 0 )
				self.clipFinished( NoDupesRareCount, {} )

				HundredBundleCount:completeAnimation()
				self.HundredBundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.HundredBundleCount:setAlpha( 0 )
				self.clipFinished( HundredBundleCount, {} )

				DailyDoubleRareCount:completeAnimation()
				self.DailyDoubleRareCount:setAlpha( 0 )
				self.clipFinished( DailyDoubleRareCount, {} )

				SixPackCommonCount:completeAnimation()
				self.SixPackCommonCount:setAlpha( 0 )
				self.clipFinished( SixPackCommonCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				GenericRewardImage:completeAnimation()
				self.GenericRewardImage:setAlpha( 0 )
				self.clipFinished( GenericRewardImage, {} )

				GenericRewardCount0:completeAnimation()
				self.GenericRewardCount0:setAlpha( 0 )
				self.clipFinished( GenericRewardCount0, {} )

				GenericRewardCount:completeAnimation()
				self.GenericRewardCount:setAlpha( 0 )
				self.clipFinished( GenericRewardCount, {} )

				WeaponBribe3Count0:completeAnimation()
				self.WeaponBribe3Count0:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count0, {} )

				WeaponBribe3Count:completeAnimation()
				self.WeaponBribe3Count:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count, {} )

				LimitedEditionCamoCount0:completeAnimation()
				self.LimitedEditionCamoCount0:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount0, {} )

				LimitedEditionCamoCount:completeAnimation()
				self.LimitedEditionCamoCount:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount, {} )

				RareBundle10for5Count:completeAnimation()
				self.RareBundle10for5Count:setAlpha( 1 )
				self.clipFinished( RareBundle10for5Count, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 14 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 1 )
				self.clipFinished( BundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setLeftRight( true, false, -43.25, 126.35 )
				self.smokewidget:setTopBottom( true, false, -69.96, 108.54 )
				self.smokewidget:setRGB( 0.22, 0.93, 0.93 )
				self.smokewidget:setAlpha( 1 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setLeftRight( true, false, -30.45, 113.55 )
				self.fxEmber2:setTopBottom( true, false, -54.96, 125.04 )
				self.fxEmber2:setRGB( 0.22, 0.93, 0.93 )
				self.fxEmber2:setAlpha( 1 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setLeftRight( true, false, -34.25, 117.35 )
				self.fxEmber:setTopBottom( true, false, -42.46, 147.04 )
				self.fxEmber:setRGB( 0.22, 0.93, 0.93 )
				self.fxEmber:setAlpha( 1 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				glow0:completeAnimation()
				self.glow0:setRGB( 0.22, 0.93, 0.93 )
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )
				local HundredBundleCountFrame2 = function ( HundredBundleCount, event )
					local HundredBundleCountFrame3 = function ( HundredBundleCount, event )
						if not event.interrupted then
							HundredBundleCount:beginAnimation( "keyframe", 809, false, false, CoD.TweenType.Linear )
						end
						HundredBundleCount:setAlpha( 0.8 )
						if event.interrupted then
							self.clipFinished( HundredBundleCount, event )
						else
							HundredBundleCount:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						HundredBundleCountFrame3( HundredBundleCount, event )
						return 
					else
						HundredBundleCount:beginAnimation( "keyframe", 740, false, false, CoD.TweenType.Linear )
						HundredBundleCount:setAlpha( 1 )
						HundredBundleCount:registerEventHandler( "transition_complete_keyframe", HundredBundleCountFrame3 )
					end
				end
				
				HundredBundleCount:completeAnimation()
				self.HundredBundleCount:setAlpha( 0.8 )
				HundredBundleCountFrame2( HundredBundleCount, {} )
				local glowBundleOutlineFrame2 = function ( glowBundleOutline, event )
					local glowBundleOutlineFrame3 = function ( glowBundleOutline, event )
						if not event.interrupted then
							glowBundleOutline:beginAnimation( "keyframe", 809, false, false, CoD.TweenType.Linear )
						end
						glowBundleOutline:setRGB( 0.22, 0.93, 0.93 )
						glowBundleOutline:setAlpha( 0 )
						if event.interrupted then
							self.clipFinished( glowBundleOutline, event )
						else
							glowBundleOutline:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						glowBundleOutlineFrame3( glowBundleOutline, event )
						return 
					else
						glowBundleOutline:beginAnimation( "keyframe", 740, false, false, CoD.TweenType.Linear )
						glowBundleOutline:setAlpha( 1 )
						glowBundleOutline:registerEventHandler( "transition_complete_keyframe", glowBundleOutlineFrame3 )
					end
				end
				
				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setRGB( 0.22, 0.93, 0.93 )
				self.glowBundleOutline:setAlpha( 0 )
				glowBundleOutlineFrame2( glowBundleOutline, {} )

				self.nextClip = "Focus"
			end
		},
		Rare15Bundle = {
			DefaultClip = function ()
				self:setupElementClipCounter( 31 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 1 )
				self.clipFinished( BundleOnOpen, {} )

				SixPackCommonBundleOnOpen:completeAnimation()
				self.SixPackCommonBundleOnOpen:setAlpha( 0 )
				self.clipFinished( SixPackCommonBundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setLeftRight( false, false, -80.5, 80.5 )
				self.BribeOn:setTopBottom( true, false, -40.46, 120.54 )
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setLeftRight( false, false, -80.5, 80.5 )
				self.glowBribe:setTopBottom( true, false, -40.46, 120.54 )
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				BundleExperimentRareCount:completeAnimation()
				self.BundleExperimentRareCount:setAlpha( 0 )
				self.clipFinished( BundleExperimentRareCount, {} )

				CodeBundleRareCount:completeAnimation()
				self.CodeBundleRareCount:setAlpha( 0 )
				self.clipFinished( CodeBundleRareCount, {} )

				NoDupesRareCount:completeAnimation()
				self.NoDupesRareCount:setAlpha( 0 )
				self.clipFinished( NoDupesRareCount, {} )

				HundredBundleCount:completeAnimation()
				self.HundredBundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.HundredBundleCount:setAlpha( 0 )
				self.clipFinished( HundredBundleCount, {} )

				DailyDoubleRareCount:completeAnimation()
				self.DailyDoubleRareCount:setAlpha( 0 )
				self.clipFinished( DailyDoubleRareCount, {} )

				SixPackCommonCount:completeAnimation()
				self.SixPackCommonCount:setAlpha( 0 )
				self.clipFinished( SixPackCommonCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				GenericRewardImage:completeAnimation()
				self.GenericRewardImage:setAlpha( 0 )
				self.clipFinished( GenericRewardImage, {} )

				GenericRewardCount0:completeAnimation()
				self.GenericRewardCount0:setAlpha( 0 )
				self.clipFinished( GenericRewardCount0, {} )

				GenericRewardCount:completeAnimation()
				self.GenericRewardCount:setAlpha( 0 )
				self.clipFinished( GenericRewardCount, {} )

				WeaponBribe3Count0:completeAnimation()
				self.WeaponBribe3Count0:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count0, {} )

				WeaponBribe3Count:completeAnimation()
				self.WeaponBribe3Count:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count, {} )

				LimitedEditionCamoCount0:completeAnimation()
				self.LimitedEditionCamoCount0:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount0, {} )

				LimitedEditionCamoCount:completeAnimation()
				self.LimitedEditionCamoCount:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount, {} )

				RareBundle10for5Count:completeAnimation()
				self.RareBundle10for5Count:setAlpha( 0 )
				self.clipFinished( RareBundle10for5Count, {} )

				Rare15BundleCount:completeAnimation()
				self.Rare15BundleCount:setAlpha( 1 )
				self.clipFinished( Rare15BundleCount, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 16 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 1 )
				self.clipFinished( BundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setLeftRight( true, false, -43.25, 126.35 )
				self.smokewidget:setTopBottom( true, false, -69.96, 108.54 )
				self.smokewidget:setRGB( 0.22, 0.93, 0.93 )
				self.smokewidget:setAlpha( 1 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setLeftRight( true, false, -30.45, 113.55 )
				self.fxEmber2:setTopBottom( true, false, -54.96, 125.04 )
				self.fxEmber2:setRGB( 0.22, 0.93, 0.93 )
				self.fxEmber2:setAlpha( 1 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setLeftRight( true, false, -34.25, 117.35 )
				self.fxEmber:setTopBottom( true, false, -42.46, 147.04 )
				self.fxEmber:setRGB( 0.22, 0.93, 0.93 )
				self.fxEmber:setAlpha( 1 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				glow0:completeAnimation()
				self.glow0:setRGB( 0.22, 0.93, 0.93 )
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				HundredBundleCount:completeAnimation()
				self.HundredBundleCount:setAlpha( 0 )
				self.clipFinished( HundredBundleCount, {} )
				local glowBundleOutlineFrame2 = function ( glowBundleOutline, event )
					local glowBundleOutlineFrame3 = function ( glowBundleOutline, event )
						if not event.interrupted then
							glowBundleOutline:beginAnimation( "keyframe", 809, false, false, CoD.TweenType.Linear )
						end
						glowBundleOutline:setRGB( 0.22, 0.93, 0.93 )
						glowBundleOutline:setAlpha( 0 )
						if event.interrupted then
							self.clipFinished( glowBundleOutline, event )
						else
							glowBundleOutline:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						glowBundleOutlineFrame3( glowBundleOutline, event )
						return 
					else
						glowBundleOutline:beginAnimation( "keyframe", 740, false, false, CoD.TweenType.Linear )
						glowBundleOutline:setAlpha( 1 )
						glowBundleOutline:registerEventHandler( "transition_complete_keyframe", glowBundleOutlineFrame3 )
					end
				end
				
				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setRGB( 0.22, 0.93, 0.93 )
				self.glowBundleOutline:setAlpha( 0 )
				glowBundleOutlineFrame2( glowBundleOutline, {} )

				RareBundle10for5Count:completeAnimation()
				self.RareBundle10for5Count:setAlpha( 0 )
				self.clipFinished( RareBundle10for5Count, {} )
				local Rare15BundleCountFrame2 = function ( Rare15BundleCount, event )
					local Rare15BundleCountFrame3 = function ( Rare15BundleCount, event )
						if not event.interrupted then
							Rare15BundleCount:beginAnimation( "keyframe", 809, false, false, CoD.TweenType.Linear )
						end
						Rare15BundleCount:setAlpha( 0.8 )
						if event.interrupted then
							self.clipFinished( Rare15BundleCount, event )
						else
							Rare15BundleCount:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						Rare15BundleCountFrame3( Rare15BundleCount, event )
						return 
					else
						Rare15BundleCount:beginAnimation( "keyframe", 740, false, false, CoD.TweenType.Linear )
						Rare15BundleCount:setAlpha( 1 )
						Rare15BundleCount:registerEventHandler( "transition_complete_keyframe", Rare15BundleCountFrame3 )
					end
				end
				
				Rare15BundleCount:completeAnimation()
				self.Rare15BundleCount:setAlpha( 0.8 )
				Rare15BundleCountFrame2( Rare15BundleCount, {} )

				self.nextClip = "Focus"
			end
		},
		OutfitBribe = {
			DefaultClip = function ()
				self:setupElementClipCounter( 32 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 1 )
				self.clipFinished( BundleOnOpen, {} )

				SixPackCommonBundleOnOpen:completeAnimation()
				self.SixPackCommonBundleOnOpen:setAlpha( 0 )
				self.clipFinished( SixPackCommonBundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setLeftRight( false, false, -80.5, 80.5 )
				self.BribeOn:setTopBottom( true, false, -40.46, 120.54 )
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setLeftRight( false, false, -80.5, 80.5 )
				self.glowBribe:setTopBottom( true, false, -40.46, 120.54 )
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				BundleExperimentRareCount:completeAnimation()
				self.BundleExperimentRareCount:setAlpha( 0 )
				self.clipFinished( BundleExperimentRareCount, {} )

				CodeBundleRareCount:completeAnimation()
				self.CodeBundleRareCount:setAlpha( 0 )
				self.clipFinished( CodeBundleRareCount, {} )

				NoDupesRareCount:completeAnimation()
				self.NoDupesRareCount:setAlpha( 0 )
				self.clipFinished( NoDupesRareCount, {} )

				HundredBundleCount:completeAnimation()
				self.HundredBundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.HundredBundleCount:setAlpha( 0 )
				self.clipFinished( HundredBundleCount, {} )

				DailyDoubleRareCount:completeAnimation()
				self.DailyDoubleRareCount:setAlpha( 0 )
				self.clipFinished( DailyDoubleRareCount, {} )

				SixPackCommonCount:completeAnimation()
				self.SixPackCommonCount:setAlpha( 0 )
				self.clipFinished( SixPackCommonCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				GenericRewardImage:completeAnimation()
				self.GenericRewardImage:setAlpha( 0 )
				self.clipFinished( GenericRewardImage, {} )

				GenericRewardCount0:completeAnimation()
				self.GenericRewardCount0:setAlpha( 0 )
				self.clipFinished( GenericRewardCount0, {} )

				GenericRewardCount:completeAnimation()
				self.GenericRewardCount:setAlpha( 0 )
				self.clipFinished( GenericRewardCount, {} )

				WeaponBribe3Count0:completeAnimation()
				self.WeaponBribe3Count0:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count0, {} )

				WeaponBribe3Count:completeAnimation()
				self.WeaponBribe3Count:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count, {} )

				LimitedEditionCamoCount0:completeAnimation()
				self.LimitedEditionCamoCount0:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount0, {} )

				LimitedEditionCamoCount:completeAnimation()
				self.LimitedEditionCamoCount:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount, {} )

				RareBundle10for5Count:completeAnimation()
				self.RareBundle10for5Count:setAlpha( 0 )
				self.clipFinished( RareBundle10for5Count, {} )

				Rare15BundleCount:completeAnimation()
				self.Rare15BundleCount:setAlpha( 0 )
				self.clipFinished( Rare15BundleCount, {} )

				OutfitBribeCount:completeAnimation()
				self.OutfitBribeCount:setAlpha( 1 )
				self.clipFinished( OutfitBribeCount, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 17 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 1 )
				self.clipFinished( BundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setLeftRight( true, false, -43.25, 126.35 )
				self.smokewidget:setTopBottom( true, false, -69.96, 108.54 )
				self.smokewidget:setRGB( 0.22, 0.93, 0.93 )
				self.smokewidget:setAlpha( 1 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setLeftRight( true, false, -30.45, 113.55 )
				self.fxEmber2:setTopBottom( true, false, -54.96, 125.04 )
				self.fxEmber2:setRGB( 0.22, 0.93, 0.93 )
				self.fxEmber2:setAlpha( 1 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setLeftRight( true, false, -34.25, 117.35 )
				self.fxEmber:setTopBottom( true, false, -42.46, 147.04 )
				self.fxEmber:setRGB( 0.22, 0.93, 0.93 )
				self.fxEmber:setAlpha( 1 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				glow0:completeAnimation()
				self.glow0:setRGB( 0.22, 0.93, 0.93 )
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				HundredBundleCount:completeAnimation()
				self.HundredBundleCount:setAlpha( 0 )
				self.clipFinished( HundredBundleCount, {} )
				local glowBundleOutlineFrame2 = function ( glowBundleOutline, event )
					local glowBundleOutlineFrame3 = function ( glowBundleOutline, event )
						if not event.interrupted then
							glowBundleOutline:beginAnimation( "keyframe", 809, false, false, CoD.TweenType.Linear )
						end
						glowBundleOutline:setRGB( 0.22, 0.93, 0.93 )
						glowBundleOutline:setAlpha( 0 )
						if event.interrupted then
							self.clipFinished( glowBundleOutline, event )
						else
							glowBundleOutline:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						glowBundleOutlineFrame3( glowBundleOutline, event )
						return 
					else
						glowBundleOutline:beginAnimation( "keyframe", 740, false, false, CoD.TweenType.Linear )
						glowBundleOutline:setAlpha( 1 )
						glowBundleOutline:registerEventHandler( "transition_complete_keyframe", glowBundleOutlineFrame3 )
					end
				end
				
				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setRGB( 0.22, 0.93, 0.93 )
				self.glowBundleOutline:setAlpha( 0 )
				glowBundleOutlineFrame2( glowBundleOutline, {} )

				RareBundle10for5Count:completeAnimation()
				self.RareBundle10for5Count:setAlpha( 0 )
				self.clipFinished( RareBundle10for5Count, {} )

				Rare15BundleCount:completeAnimation()
				self.Rare15BundleCount:setAlpha( 0 )
				self.clipFinished( Rare15BundleCount, {} )
				local OutfitBribeCountFrame2 = function ( OutfitBribeCount, event )
					local OutfitBribeCountFrame3 = function ( OutfitBribeCount, event )
						if not event.interrupted then
							OutfitBribeCount:beginAnimation( "keyframe", 809, false, false, CoD.TweenType.Linear )
						end
						OutfitBribeCount:setAlpha( 0.8 )
						if event.interrupted then
							self.clipFinished( OutfitBribeCount, event )
						else
							OutfitBribeCount:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						OutfitBribeCountFrame3( OutfitBribeCount, event )
						return 
					else
						OutfitBribeCount:beginAnimation( "keyframe", 740, false, false, CoD.TweenType.Linear )
						OutfitBribeCount:setAlpha( 1 )
						OutfitBribeCount:registerEventHandler( "transition_complete_keyframe", OutfitBribeCountFrame3 )
					end
				end
				
				OutfitBribeCount:completeAnimation()
				self.OutfitBribeCount:setAlpha( 0.8 )
				OutfitBribeCountFrame2( OutfitBribeCount, {} )

				self.nextClip = "Focus"
			end
		},
		Bundle = {
			DefaultClip = function ()
				self:setupElementClipCounter( 29 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 1 )
				self.clipFinished( BundleOnOpen, {} )

				SixPackCommonBundleOnOpen:completeAnimation()
				self.SixPackCommonBundleOnOpen:setAlpha( 0 )
				self.clipFinished( SixPackCommonBundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setLeftRight( false, false, -80.5, 80.5 )
				self.BribeOn:setTopBottom( true, false, -40.46, 120.54 )
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setLeftRight( false, false, -80.5, 80.5 )
				self.glowBribe:setTopBottom( true, false, -40.46, 120.54 )
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setRGB( 0.97, 0.95, 0.68 )
				self.BundleCount:setAlpha( 1 )
				self.clipFinished( BundleCount, {} )

				BundleExperimentRareCount:completeAnimation()
				self.BundleExperimentRareCount:setAlpha( 0 )
				self.clipFinished( BundleExperimentRareCount, {} )

				CodeBundleRareCount:completeAnimation()
				self.CodeBundleRareCount:setAlpha( 0 )
				self.clipFinished( CodeBundleRareCount, {} )

				NoDupesRareCount:completeAnimation()
				self.NoDupesRareCount:setAlpha( 0 )
				self.clipFinished( NoDupesRareCount, {} )

				HundredBundleCount:completeAnimation()
				self.HundredBundleCount:setAlpha( 0 )
				self.clipFinished( HundredBundleCount, {} )

				DailyDoubleRareCount:completeAnimation()
				self.DailyDoubleRareCount:setAlpha( 0 )
				self.clipFinished( DailyDoubleRareCount, {} )

				SixPackCommonCount:completeAnimation()
				self.SixPackCommonCount:setAlpha( 0 )
				self.clipFinished( SixPackCommonCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				GenericRewardImage:completeAnimation()
				self.GenericRewardImage:setAlpha( 0 )
				self.clipFinished( GenericRewardImage, {} )

				GenericRewardCount0:completeAnimation()
				self.GenericRewardCount0:setAlpha( 0 )
				self.clipFinished( GenericRewardCount0, {} )

				GenericRewardCount:completeAnimation()
				self.GenericRewardCount:setAlpha( 0 )
				self.clipFinished( GenericRewardCount, {} )

				WeaponBribe3Count0:completeAnimation()
				self.WeaponBribe3Count0:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count0, {} )

				WeaponBribe3Count:completeAnimation()
				self.WeaponBribe3Count:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count, {} )

				LimitedEditionCamoCount0:completeAnimation()
				self.LimitedEditionCamoCount0:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount0, {} )

				LimitedEditionCamoCount:completeAnimation()
				self.LimitedEditionCamoCount:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 14 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 1 )
				self.clipFinished( BundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setLeftRight( true, false, -43.25, 126.35 )
				self.smokewidget:setTopBottom( true, false, -69.96, 108.54 )
				self.smokewidget:setRGB( 0.22, 0.93, 0.93 )
				self.smokewidget:setAlpha( 1 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setLeftRight( true, false, -30.45, 113.55 )
				self.fxEmber2:setTopBottom( true, false, -54.96, 125.04 )
				self.fxEmber2:setRGB( 0.22, 0.93, 0.93 )
				self.fxEmber2:setAlpha( 1 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setLeftRight( true, false, -34.25, 117.35 )
				self.fxEmber:setTopBottom( true, false, -42.46, 147.04 )
				self.fxEmber:setRGB( 0.22, 0.93, 0.93 )
				self.fxEmber:setAlpha( 1 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				glow0:completeAnimation()
				self.glow0:setRGB( 0.22, 0.93, 0.93 )
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )
				local BundleCountFrame2 = function ( BundleCount, event )
					local BundleCountFrame3 = function ( BundleCount, event )
						if not event.interrupted then
							BundleCount:beginAnimation( "keyframe", 809, false, false, CoD.TweenType.Linear )
						end
						BundleCount:setAlpha( 0.8 )
						if event.interrupted then
							self.clipFinished( BundleCount, event )
						else
							BundleCount:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						BundleCountFrame3( BundleCount, event )
						return 
					else
						BundleCount:beginAnimation( "keyframe", 740, false, false, CoD.TweenType.Linear )
						BundleCount:setAlpha( 1 )
						BundleCount:registerEventHandler( "transition_complete_keyframe", BundleCountFrame3 )
					end
				end
				
				BundleCount:completeAnimation()
				self.BundleCount:setAlpha( 0.8 )
				BundleCountFrame2( BundleCount, {} )
				local glowBundleOutlineFrame2 = function ( glowBundleOutline, event )
					local glowBundleOutlineFrame3 = function ( glowBundleOutline, event )
						if not event.interrupted then
							glowBundleOutline:beginAnimation( "keyframe", 809, false, false, CoD.TweenType.Linear )
						end
						glowBundleOutline:setRGB( 0.22, 0.93, 0.93 )
						glowBundleOutline:setAlpha( 0 )
						if event.interrupted then
							self.clipFinished( glowBundleOutline, event )
						else
							glowBundleOutline:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						glowBundleOutlineFrame3( glowBundleOutline, event )
						return 
					else
						glowBundleOutline:beginAnimation( "keyframe", 740, false, false, CoD.TweenType.Linear )
						glowBundleOutline:setAlpha( 1 )
						glowBundleOutline:registerEventHandler( "transition_complete_keyframe", glowBundleOutlineFrame3 )
					end
				end
				
				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setRGB( 0.22, 0.93, 0.93 )
				self.glowBundleOutline:setAlpha( 0 )
				glowBundleOutlineFrame2( glowBundleOutline, {} )

				self.nextClip = "Focus"
			end
		},
		Rare = {
			DefaultClip = function ()
				self:setupElementClipCounter( 29 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 0 )
				self.clipFinished( BundleOnOpen, {} )

				SixPackCommonBundleOnOpen:completeAnimation()
				self.SixPackCommonBundleOnOpen:setAlpha( 0 )
				self.clipFinished( SixPackCommonBundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 1 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				BundleExperimentRareCount:completeAnimation()
				self.BundleExperimentRareCount:setAlpha( 0 )
				self.clipFinished( BundleExperimentRareCount, {} )

				CodeBundleRareCount:completeAnimation()
				self.CodeBundleRareCount:setAlpha( 0 )
				self.clipFinished( CodeBundleRareCount, {} )

				NoDupesRareCount:completeAnimation()
				self.NoDupesRareCount:setAlpha( 0 )
				self.clipFinished( NoDupesRareCount, {} )

				HundredBundleCount:completeAnimation()
				self.HundredBundleCount:setAlpha( 0 )
				self.clipFinished( HundredBundleCount, {} )

				DailyDoubleRareCount:completeAnimation()
				self.DailyDoubleRareCount:setAlpha( 0 )
				self.clipFinished( DailyDoubleRareCount, {} )

				SixPackCommonCount:completeAnimation()
				self.SixPackCommonCount:setAlpha( 0 )
				self.clipFinished( SixPackCommonCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				GenericRewardImage:completeAnimation()
				self.GenericRewardImage:setAlpha( 0 )
				self.clipFinished( GenericRewardImage, {} )

				GenericRewardCount0:completeAnimation()
				self.GenericRewardCount0:setAlpha( 0 )
				self.clipFinished( GenericRewardCount0, {} )

				GenericRewardCount:completeAnimation()
				self.GenericRewardCount:setAlpha( 0 )
				self.clipFinished( GenericRewardCount, {} )

				WeaponBribe3Count0:completeAnimation()
				self.WeaponBribe3Count0:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count0, {} )

				WeaponBribe3Count:completeAnimation()
				self.WeaponBribe3Count:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count, {} )

				LimitedEditionCamoCount0:completeAnimation()
				self.LimitedEditionCamoCount0:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount0, {} )

				LimitedEditionCamoCount:completeAnimation()
				self.LimitedEditionCamoCount:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 14 )

				local glow00Frame2 = function ( glow00, event )
					local glow00Frame3 = function ( glow00, event )
						if not event.interrupted then
							glow00:beginAnimation( "keyframe", 809, false, false, CoD.TweenType.Linear )
						end
						glow00:setAlpha( 0 )
						if event.interrupted then
							self.clipFinished( glow00, event )
						else
							glow00:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						glow00Frame3( glow00, event )
						return 
					else
						glow00:beginAnimation( "keyframe", 740, false, false, CoD.TweenType.Linear )
						glow00:setAlpha( 1 )
						glow00:registerEventHandler( "transition_complete_keyframe", glow00Frame3 )
					end
				end
				
				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				glow00Frame2( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 0 )
				self.clipFinished( BundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setRGB( 0.22, 0.93, 0.93 )
				self.smokewidget:setAlpha( 1 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setRGB( 0.22, 0.93, 0.93 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setRGB( 0.22, 0.93, 0.93 )
				self.fxEmber:setAlpha( 1 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 1 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )
				local glow0Frame2 = function ( glow0, event )
					local glow0Frame3 = function ( glow0, event )
						if not event.interrupted then
							glow0:beginAnimation( "keyframe", 809, true, true, CoD.TweenType.Linear )
						end
						glow0:setRGB( 0.22, 0.93, 0.93 )
						glow0:setAlpha( 0 )
						if event.interrupted then
							self.clipFinished( glow0, event )
						else
							glow0:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						glow0Frame3( glow0, event )
						return 
					else
						glow0:beginAnimation( "keyframe", 740, true, true, CoD.TweenType.Linear )
						glow0:setAlpha( 1 )
						glow0:registerEventHandler( "transition_complete_keyframe", glow0Frame3 )
					end
				end
				
				glow0:completeAnimation()
				self.glow0:setRGB( 0.22, 0.93, 0.93 )
				self.glow0:setAlpha( 0 )
				glow0Frame2( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setAlpha( 0 )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setAlpha( 0 )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				self.nextClip = "Focus"
			end
		},
		Bribe = {
			DefaultClip = function ()
				self:setupElementClipCounter( 29 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 0 )
				self.clipFinished( BundleOnOpen, {} )

				SixPackCommonBundleOnOpen:completeAnimation()
				self.SixPackCommonBundleOnOpen:setAlpha( 0 )
				self.clipFinished( SixPackCommonBundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setAlpha( 0 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				fxglow:completeAnimation()
				self.fxglow:setAlpha( 0 )
				self.clipFinished( fxglow, {} )

				glow0:completeAnimation()
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setLeftRight( false, false, -80.5, 80.5 )
				self.BribeOn:setTopBottom( true, false, -40.46, 120.54 )
				self.BribeOn:setAlpha( 1 )
				self.BribeOn:setImage( RegisterImage( GetImageForCurrentBribe( controller, "uie_t7_blackmarket_crate_bribe_chip_taunt" ) ) )
				self.clipFinished( BribeOn, {} )

				glowBribe:completeAnimation()
				self.glowBribe:setLeftRight( false, false, -80.5, 80.5 )
				self.glowBribe:setTopBottom( true, false, -40.46, 120.54 )
				self.glowBribe:setAlpha( 0 )
				self.glowBribe:setImage( RegisterImage( AppendString( "_hover", GetImageForCurrentBribe( controller, "uie_t7_blackmarket_crate_bribe_chip_taunt" ) ) ) )
				self.clipFinished( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				BundleExperimentRareCount:completeAnimation()
				self.BundleExperimentRareCount:setAlpha( 0 )
				self.clipFinished( BundleExperimentRareCount, {} )

				CodeBundleRareCount:completeAnimation()
				self.CodeBundleRareCount:setAlpha( 0 )
				self.clipFinished( CodeBundleRareCount, {} )

				NoDupesRareCount:completeAnimation()
				self.NoDupesRareCount:setAlpha( 0 )
				self.clipFinished( NoDupesRareCount, {} )

				HundredBundleCount:completeAnimation()
				self.HundredBundleCount:setAlpha( 0 )
				self.clipFinished( HundredBundleCount, {} )

				DailyDoubleRareCount:completeAnimation()
				self.DailyDoubleRareCount:setAlpha( 0 )
				self.clipFinished( DailyDoubleRareCount, {} )

				SixPackCommonCount:completeAnimation()
				self.SixPackCommonCount:setAlpha( 0 )
				self.clipFinished( SixPackCommonCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				GenericRewardImage:completeAnimation()
				self.GenericRewardImage:setAlpha( 0 )
				self.clipFinished( GenericRewardImage, {} )

				GenericRewardCount0:completeAnimation()
				self.GenericRewardCount0:setAlpha( 0 )
				self.clipFinished( GenericRewardCount0, {} )

				GenericRewardCount:completeAnimation()
				self.GenericRewardCount:setAlpha( 0 )
				self.clipFinished( GenericRewardCount, {} )

				WeaponBribe3Count0:completeAnimation()
				self.WeaponBribe3Count0:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count0, {} )

				WeaponBribe3Count:completeAnimation()
				self.WeaponBribe3Count:setAlpha( 0 )
				self.clipFinished( WeaponBribe3Count, {} )

				LimitedEditionCamoCount0:completeAnimation()
				self.LimitedEditionCamoCount0:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount0, {} )

				LimitedEditionCamoCount:completeAnimation()
				self.LimitedEditionCamoCount:setAlpha( 0 )
				self.clipFinished( LimitedEditionCamoCount, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 14 )

				glow00:completeAnimation()
				self.glow00:setAlpha( 0 )
				self.clipFinished( glow00, {} )

				BundleOnOpen:completeAnimation()
				self.BundleOnOpen:setAlpha( 0 )
				self.clipFinished( BundleOnOpen, {} )

				smokewidget:completeAnimation()
				self.smokewidget:setRGB( 0.22, 0.93, 0.93 )
				self.smokewidget:setAlpha( 1 )
				self.clipFinished( smokewidget, {} )

				fxEmber2:completeAnimation()
				self.fxEmber2:setRGB( 0.22, 0.93, 0.93 )
				self.fxEmber2:setAlpha( 0 )
				self.clipFinished( fxEmber2, {} )

				fxEmber:completeAnimation()
				self.fxEmber:setRGB( 0.22, 0.93, 0.93 )
				self.fxEmber:setAlpha( 0 )
				self.clipFinished( fxEmber, {} )

				RareOn:completeAnimation()
				self.RareOn:setAlpha( 0 )
				self.clipFinished( RareOn, {} )

				CommonOn:completeAnimation()
				self.CommonOn:setAlpha( 0 )
				self.clipFinished( CommonOn, {} )

				glow0:completeAnimation()
				self.glow0:setRGB( 0.22, 0.93, 0.93 )
				self.glow0:setAlpha( 0 )
				self.clipFinished( glow0, {} )

				BribeOn:completeAnimation()
				self.BribeOn:setAlpha( 1 )
				self.clipFinished( BribeOn, {} )
				local glowBribeFrame2 = function ( glowBribe, event )
					local glowBribeFrame3 = function ( glowBribe, event )
						if not event.interrupted then
							glowBribe:beginAnimation( "keyframe", 809, false, false, CoD.TweenType.Linear )
						end
						glowBribe:setAlpha( 0 )
						if event.interrupted then
							self.clipFinished( glowBribe, event )
						else
							glowBribe:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						glowBribeFrame3( glowBribe, event )
						return 
					else
						glowBribe:beginAnimation( "keyframe", 740, false, false, CoD.TweenType.Linear )
						glowBribe:setAlpha( 1 )
						glowBribe:registerEventHandler( "transition_complete_keyframe", glowBribeFrame3 )
					end
				end
				
				glowBribe:completeAnimation()
				self.glowBribe:setAlpha( 0 )
				glowBribeFrame2( glowBribe, {} )

				BundleOn:completeAnimation()
				self.BundleOn:setAlpha( 0 )
				self.clipFinished( BundleOn, {} )

				glowBundle:completeAnimation()
				self.glowBundle:setAlpha( 0 )
				self.clipFinished( glowBundle, {} )

				BundleCount:completeAnimation()
				self.BundleCount:setAlpha( 0 )
				self.clipFinished( BundleCount, {} )

				glowBundleOutline:completeAnimation()
				self.glowBundleOutline:setAlpha( 0 )
				self.clipFinished( glowBundleOutline, {} )

				self.nextClip = "Focus"
			end
		}
	}

	self:mergeStateConditions( {
		{
			stateName = "Common",
			condition = function ( menu, element, event )
				return IsPerControllerTablePropertyEnumValue( controller, "supplyDropType", Enum.LootCrateType.LOOT_CRATE_TYPE_COMMON ) and not IsPerControllerTablePropertyEnumValue( controller, "currencySpent", Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM )
			end
		},
		{
			stateName = "IncentiveRare",
			condition = function ( menu, element, event )
				return IsPerControllerTablePropertyValue( controller, "supplyDropType", CoD.BlackMarketUtility.DropTypes.INCENTIVE_RARE_BUNDLE )
			end
		},
		{
			stateName = "IncentiveWeapon",
			condition = function ( menu, element, event )
				return IsPerControllerTablePropertyValue( controller, "supplyDropType", CoD.BlackMarketUtility.DropTypes.INCENTIVE_WEAPON_BUNDLE )
			end
		},
		{
			stateName = "GenericReward",
			condition = function ( menu, element, event )
				return IsDecryptionCrateGenericReward( self, element, controller )
			end
		},
		{
			stateName = "SixPackCommonBundle",
			condition = function ( menu, element, event )
				return IsPerControllerTablePropertyEnumValue( controller, "currencySpent", Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM ) and IsPerControllerTablePropertyValue( controller, "supplyDropType", CoD.BlackMarketUtility.DropTypes.COMMON )
			end
		},
		{
			stateName = "DailyDoubleRareBundle",
			condition = function ( menu, element, event )
				return IsPerControllerTablePropertyEnumValue( controller, "currencySpent", Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM ) and IsPerControllerTablePropertyValue( controller, "supplyDropType", CoD.BlackMarketUtility.DropTypes.DAILY_DOUBLE_RARE_BUNDLE )
			end
		},
		{
			stateName = "HundredBundle",
			condition = function ( menu, element, event )
				return IsPerControllerTablePropertyEnumValue( controller, "currencySpent", Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM ) and IsPerControllerTablePropertyValue( controller, "supplyDropType", CoD.BlackMarketUtility.DropTypes.HUNDRED_BUNDLE )
			end
		},
		{
			stateName = "BundleExperimentRareBundle",
			condition = function ( menu, element, event )
				return IsPerControllerTablePropertyEnumValue( controller, "currencySpent", Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM ) and IsPerControllerTablePropertyValue( controller, "supplyDropType", CoD.BlackMarketUtility.DropTypes.BUNDLE_EXPERIMENT )
			end
		},
		{
			stateName = "NoDupesRareBundle",
			condition = function ( menu, element, event )
				return IsPerControllerTablePropertyEnumValue( controller, "currencySpent", Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM ) and IsPerControllerTablePropertyValue( controller, "supplyDropType", CoD.BlackMarketUtility.DropTypes.NO_DUPES_BUNDLE )
			end
		},
		{
			stateName = "CodeBundleRareBundle",
			condition = function ( menu, element, event )
				return IsPerControllerTablePropertyEnumValue( controller, "currencySpent", Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM ) and IsPerControllerTablePropertyValue( controller, "supplyDropType", CoD.BlackMarketUtility.DropTypes.CODE_BUNDLE )
			end
		},
		{
			stateName = "WeaponBribe3",
			condition = function ( menu, element, event )
				return IsPerControllerTablePropertyEnumValue( controller, "currencySpent", Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM ) and IsPerControllerTablePropertyValue( controller, "supplyDropType", CoD.BlackMarketUtility.DropTypes.WEAPON_3X )
			end
		},
		{
			stateName = "LimitedEditionCamo",
			condition = function ( menu, element, event )
				return IsPerControllerTablePropertyEnumValue( controller, "currencySpent", Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM ) and IsPerControllerTablePropertyValue( controller, "supplyDropType", CoD.BlackMarketUtility.DropTypes.LIMITED_EDITION_CAMO )
			end
		},
		{
			stateName = "RareBundle10for5",
			condition = function ( menu, element, event )
				return IsPerControllerTablePropertyEnumValue( controller, "currencySpent", Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM ) and IsPerControllerTablePropertyValue( controller, "supplyDropType", CoD.BlackMarketUtility.DropTypes.RARE_BUNDLE_10FOR5 )
			end
		},
		{
			stateName = "Rare15Bundle",
			condition = function ( menu, element, event )
				return IsPerControllerTablePropertyEnumValue( controller, "currencySpent", Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM ) and IsPerControllerTablePropertyValue( controller, "supplyDropType", CoD.BlackMarketUtility.DropTypes.RARE_15BUNDLE )
			end
		},
		{
			stateName = "OutfitBribe",
			condition = function ( menu, element, event )
				return IsPerControllerTablePropertyEnumValue( controller, "currencySpent", Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM ) and IsPerControllerTablePropertyValue( controller, "supplyDropType", CoD.BlackMarketUtility.DropTypes.OUTFIT_3BUNDLE )
			end
		},
		{
			stateName = "Bundle",
			condition = function ( menu, element, event )
				return IsPerControllerTablePropertyEnumValue( controller, "currencySpent", Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM )
			end
		},
		{
			stateName = "Rare",
			condition = function ( menu, element, event )
				return IsDecryptionCrateRare( self, element, controller )
			end
		},
		{
			stateName = "Bribe",
			condition = function ( menu, element, event )
				return IsPerControllerTablePropertyEnumValue( controller, "supplyDropType", Enum.LootCrateType.LOOT_CRATE_TYPE_BRIBE )
			end
		}
	} )

	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.smokewidget:close()
		element.fxEmber2:close()
		element.fxEmber:close()
		element.fxglow:close()
		element.BundleCount:close()
		element.BundleExperimentRareCount:close()
		element.CodeBundleRareCount:close()
		element.NoDupesRareCount:close()
		element.HundredBundleCount:close()
		element.DailyDoubleRareCount:close()
		element.SixPackCommonCount:close()
		element.WeaponIncentiveCount:close()
		element.WeaponIncentiveCount0:close()
		element.RareIncentiveCount0:close()
		element.RareIncentiveCount:close()
		element.GenericRewardCount0:close()
		element.GenericRewardCount:close()
		element.WeaponBribe3Count0:close()
		element.WeaponBribe3Count:close()
		element.LimitedEditionCamoCount0:close()
		element.LimitedEditionCamoCount:close()
		element.RareBundle10for5Count:close()
		element.Rare15BundleCount:close()
		element.OutfitBribeCount:close()
	end )
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
