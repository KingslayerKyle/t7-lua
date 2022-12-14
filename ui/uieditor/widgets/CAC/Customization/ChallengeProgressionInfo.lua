-- 8950c0b01dedec076c2b212896d38c1e
-- This hash is used for caching, delete to decompile the file again

require( "ui.uieditor.widgets.CAC.Customization.CompletedRewardImage" )
require( "ui.uieditor.widgets.CAC.Customization.ProgressionRewardImage" )
require( "ui.uieditor.widgets.CAC.Customization.ChallengeBonusXPInfo" )
require( "ui.uieditor.widgets.Border" )
require( "ui.uieditor.widgets.verticalScrollingTextBox" )

CoD.ChallengeProgressionInfo = InheritFrom( LUI.UIElement )
CoD.ChallengeProgressionInfo.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.ChallengeProgressionInfo )
	self.id = "ChallengeProgressionInfo"
	self.soundSet = "default"
	self:setLeftRight( true, false, 0, 420 )
	self:setTopBottom( true, false, 0, 84 )
	self.anyChildUsesUpdateState = true
	
	local GreyBacking = LUI.UIImage.new()
	GreyBacking:setLeftRight( true, true, 0, 0 )
	GreyBacking:setTopBottom( true, true, 0, 0 )
	GreyBacking:setRGB( 0.3, 0.3, 0.3 )
	GreyBacking:setAlpha( 0.15 )
	self:addElement( GreyBacking )
	self.GreyBacking = GreyBacking
	
	local BlackBacking = LUI.UIImage.new()
	BlackBacking:setLeftRight( true, false, 0, 98.5 )
	BlackBacking:setTopBottom( true, true, 0, 0 )
	BlackBacking:setRGB( 0, 0, 0 )
	BlackBacking:setAlpha( 0.2 )
	self:addElement( BlackBacking )
	self.BlackBacking = BlackBacking
	
	local completedRewardImage = CoD.CompletedRewardImage.new( menu, controller )
	completedRewardImage:setLeftRight( true, false, 16.25, 82.25 )
	completedRewardImage:setTopBottom( true, false, 10.25, 76.25 )
	completedRewardImage:setAlpha( 0 )
	self:addElement( completedRewardImage )
	self.completedRewardImage = completedRewardImage
	
	local ProgressionRewardImage = CoD.ProgressionRewardImage.new( menu, controller )
	ProgressionRewardImage:setLeftRight( true, false, 24.25, 74.25 )
	ProgressionRewardImage:setTopBottom( true, false, 6, 56 )
	ProgressionRewardImage:linkToElementModel( self, "image", true, function ( model )
		local image = Engine.GetModelValue( model )
		if image then
			ProgressionRewardImage.rewardTileImage:setImage( RegisterImage( image ) )
		end
	end )
	self:addElement( ProgressionRewardImage )
	self.ProgressionRewardImage = ProgressionRewardImage
	
	local ChallengeBonusXPInfo = CoD.ChallengeBonusXPInfo.new( menu, controller )
	ChallengeBonusXPInfo:setLeftRight( true, false, 5.75, 95.5 )
	ChallengeBonusXPInfo:setTopBottom( true, false, 59.5, 81.5 )
	ChallengeBonusXPInfo:linkToElementModel( self, nil, false, function ( model )
		ChallengeBonusXPInfo:setModel( model, controller )
	end )
	ChallengeBonusXPInfo:mergeStateConditions( {
		{
			stateName = "NotVisible",
			condition = function ( menu, element, event )
				return IsSpecialContractCamo( element, controller )
			end
		}
	} )
	ChallengeBonusXPInfo:linkToElementModel( ChallengeBonusXPInfo, "weaponOptionTypeName", true, function ( model )
		menu:updateElementState( ChallengeBonusXPInfo, {
			name = "model_validation",
			menu = menu,
			modelValue = Engine.GetModelValue( model ),
			modelName = "weaponOptionTypeName"
		} )
	end )
	ChallengeBonusXPInfo:linkToElementModel( ChallengeBonusXPInfo, "itemIndex", true, function ( model )
		menu:updateElementState( ChallengeBonusXPInfo, {
			name = "model_validation",
			menu = menu,
			modelValue = Engine.GetModelValue( model ),
			modelName = "itemIndex"
		} )
	end )
	self:addElement( ChallengeBonusXPInfo )
	self.ChallengeBonusXPInfo = ChallengeBonusXPInfo
	
	local requirementTitle = LUI.UIText.new()
	requirementTitle:setLeftRight( true, true, 103.5, -4 )
	requirementTitle:setTopBottom( true, false, -1, 23 )
	requirementTitle:setRGB( 0.97, 0.93, 0.07 )
	requirementTitle:setText( Engine.Localize( "MENU_CAMO_REQUIREMENTS" ) )
	requirementTitle:setTTF( "fonts/escom.ttf" )
	requirementTitle:setMaterial( LUI.UIImage.GetCachedMaterial( "sw4_2d_uie_font_cached_glow" ) )
	requirementTitle:setShaderVector( 0, 0.02, 0, 0, 0 )
	requirementTitle:setShaderVector( 1, 0.06, 0, 0, 0 )
	requirementTitle:setShaderVector( 2, 1, 0, 0, 0 )
	requirementTitle:setLetterSpacing( 1 )
	requirementTitle:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_LEFT )
	requirementTitle:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	self:addElement( requirementTitle )
	self.requirementTitle = requirementTitle
	
	local completedTitle = LUI.UIText.new()
	completedTitle:setLeftRight( false, true, -316.5, -4 )
	completedTitle:setTopBottom( true, false, 55.5, 79.5 )
	completedTitle:setRGB( 0.97, 0.93, 0.07 )
	completedTitle:setAlpha( 0 )
	completedTitle:setText( Engine.Localize( "MENU_CAMO_COMPLETE" ) )
	completedTitle:setTTF( "fonts/escom.ttf" )
	completedTitle:setMaterial( LUI.UIImage.GetCachedMaterial( "sw4_2d_uie_font_cached_glow" ) )
	completedTitle:setShaderVector( 0, 0.02, 0, 0, 0 )
	completedTitle:setShaderVector( 1, 0.06, 0, 0, 0 )
	completedTitle:setShaderVector( 2, 1, 0, 0, 0 )
	completedTitle:setLetterSpacing( 1 )
	completedTitle:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_LEFT )
	completedTitle:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	self:addElement( completedTitle )
	self.completedTitle = completedTitle
	
	local progressBar = LUI.UIImage.new()
	progressBar:setLeftRight( true, true, 103.5, -91.5 )
	progressBar:setTopBottom( false, true, -17.75, -7.75 )
	progressBar:setRGB( 0.97, 0.93, 0.07 )
	progressBar:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_wipe" ) )
	progressBar:setShaderVector( 1, 0, 0, 0, 0 )
	progressBar:setShaderVector( 2, 1, 0, 0, 0 )
	progressBar:setShaderVector( 3, 0, 0, 0, 0 )
	progressBar:linkToElementModel( self, "unlockProgressAndTarget", true, function ( model )
		local unlockProgressAndTarget = Engine.GetModelValue( model )
		if unlockProgressAndTarget then
			progressBar:setShaderVector( 0, GetWeaponOptionProgressBar( controller, CoD.GetVectorComponentFromString( unlockProgressAndTarget, 1 ), CoD.GetVectorComponentFromString( unlockProgressAndTarget, 2 ), CoD.GetVectorComponentFromString( unlockProgressAndTarget, 3 ), CoD.GetVectorComponentFromString( unlockProgressAndTarget, 4 ) ) )
		end
	end )
	self:addElement( progressBar )
	self.progressBar = progressBar
	
	local progressText = LUI.UIText.new()
	progressText:setLeftRight( false, true, -64, -4 )
	progressText:setTopBottom( false, true, -22.75, -2.75 )
	progressText:setTTF( "fonts/default.ttf" )
	progressText:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_LEFT )
	progressText:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	progressText:linkToElementModel( self, "unlockProgressAndTarget", true, function ( model )
		local unlockProgressAndTarget = Engine.GetModelValue( model )
		if unlockProgressAndTarget then
			progressText:setText( Engine.Localize( GetWeaponOptionProgressText( controller, unlockProgressAndTarget ) ) )
		end
	end )
	self:addElement( progressText )
	self.progressText = progressText
	
	local ProgressBarBorder = CoD.Border.new( menu, controller )
	ProgressBarBorder:setLeftRight( true, true, 102, -90.11 )
	ProgressBarBorder:setTopBottom( false, true, -18.5, -7 )
	self:addElement( ProgressBarBorder )
	self.ProgressBarBorder = ProgressBarBorder
	
	local verticalScrollingTextBox = CoD.verticalScrollingTextBox.new( menu, controller )
	verticalScrollingTextBox:setLeftRight( true, false, 103.5, 416 )
	verticalScrollingTextBox:setTopBottom( true, false, 23, 65 )
	verticalScrollingTextBox.textBox:setTTF( "fonts/default.ttf" )
	verticalScrollingTextBox.textBox:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_LEFT )
	verticalScrollingTextBox:linkToElementModel( self, "unlockDescription", true, function ( model )
		local unlockDescription = Engine.GetModelValue( model )
		if unlockDescription then
			verticalScrollingTextBox.textBox:setText( Engine.Localize( unlockDescription ) )
		end
	end )
	self:addElement( verticalScrollingTextBox )
	self.verticalScrollingTextBox = verticalScrollingTextBox
	
	local RewardBox = LUI.UIImage.new()
	RewardBox:setLeftRight( true, true, -1, 1 )
	RewardBox:setTopBottom( true, true, -1, 1 )
	RewardBox:setAlpha( 0.5 )
	RewardBox:setImage( RegisterImage( "uie_t7_menu_frontend_titlenumbrdrfull" ) )
	RewardBox:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_nineslice_add" ) )
	RewardBox:setShaderVector( 0, 0.01, 0.05, 0, 0 )
	RewardBox:setupNineSliceShader( 4, 4 )
	self:addElement( RewardBox )
	self.RewardBox = RewardBox
	
	local bmContractBrandIcon = LUI.UIImage.new()
	bmContractBrandIcon:setLeftRight( true, false, 11.75, 84.75 )
	bmContractBrandIcon:setTopBottom( true, false, -5, 68 )
	bmContractBrandIcon:setImage( RegisterImage( "uie_t7_bm_special_contracts_logo" ) )
	self:addElement( bmContractBrandIcon )
	self.bmContractBrandIcon = bmContractBrandIcon
	
	self.clipsPerState = {
		DefaultState = {
			DefaultClip = function ()
				self:setupElementClipCounter( 13 )

				GreyBacking:completeAnimation()
				self.GreyBacking:setAlpha( 0.25 )
				self.clipFinished( GreyBacking, {} )

				BlackBacking:completeAnimation()
				self.BlackBacking:setAlpha( 0.25 )
				self.clipFinished( BlackBacking, {} )

				completedRewardImage:completeAnimation()
				self.completedRewardImage:setAlpha( 0 )
				self.clipFinished( completedRewardImage, {} )

				ProgressionRewardImage:completeAnimation()
				self.ProgressionRewardImage:setAlpha( 1 )
				self.clipFinished( ProgressionRewardImage, {} )

				ChallengeBonusXPInfo:completeAnimation()
				self.ChallengeBonusXPInfo:setAlpha( 1 )
				self.clipFinished( ChallengeBonusXPInfo, {} )

				requirementTitle:completeAnimation()
				self.requirementTitle:setLeftRight( true, true, 103.5, -4 )
				self.requirementTitle:setTopBottom( true, false, 0, 24 )
				self.requirementTitle:setAlpha( 1 )
				self.clipFinished( requirementTitle, {} )

				completedTitle:completeAnimation()
				self.completedTitle:setAlpha( 0 )
				self.clipFinished( completedTitle, {} )

				progressBar:completeAnimation()
				self.progressBar:setAlpha( 1 )
				self.clipFinished( progressBar, {} )

				progressText:completeAnimation()
				self.progressText:setAlpha( 1 )
				self.clipFinished( progressText, {} )

				ProgressBarBorder:completeAnimation()
				self.ProgressBarBorder:setAlpha( 1 )
				self.clipFinished( ProgressBarBorder, {} )

				verticalScrollingTextBox:completeAnimation()
				self.verticalScrollingTextBox:setLeftRight( true, false, 103.5, 416 )
				self.verticalScrollingTextBox:setTopBottom( true, false, 24, 66 )
				self.verticalScrollingTextBox:setAlpha( 1 )
				self.clipFinished( verticalScrollingTextBox, {} )

				RewardBox:completeAnimation()
				self.RewardBox:setAlpha( 0.2 )
				self.clipFinished( RewardBox, {} )

				bmContractBrandIcon:completeAnimation()
				self.bmContractBrandIcon:setAlpha( 0 )
				self.clipFinished( bmContractBrandIcon, {} )
			end
		},
		NotVisible = {
			DefaultClip = function ()
				self:setupElementClipCounter( 13 )

				GreyBacking:completeAnimation()
				self.GreyBacking:setAlpha( 0 )
				self.clipFinished( GreyBacking, {} )

				BlackBacking:completeAnimation()
				self.BlackBacking:setAlpha( 0 )
				self.clipFinished( BlackBacking, {} )

				completedRewardImage:completeAnimation()
				self.completedRewardImage:setAlpha( 0 )
				self.clipFinished( completedRewardImage, {} )

				ProgressionRewardImage:completeAnimation()
				self.ProgressionRewardImage:setAlpha( 0 )
				self.clipFinished( ProgressionRewardImage, {} )

				ChallengeBonusXPInfo:completeAnimation()
				self.ChallengeBonusXPInfo:setAlpha( 0 )
				self.clipFinished( ChallengeBonusXPInfo, {} )

				requirementTitle:completeAnimation()
				self.requirementTitle:setLeftRight( true, true, 103.5, -4 )
				self.requirementTitle:setTopBottom( true, false, 0, 24 )
				self.requirementTitle:setAlpha( 0 )
				self.clipFinished( requirementTitle, {} )

				completedTitle:completeAnimation()
				self.completedTitle:setAlpha( 0 )
				self.clipFinished( completedTitle, {} )

				progressBar:completeAnimation()
				self.progressBar:setAlpha( 0 )
				self.clipFinished( progressBar, {} )

				progressText:completeAnimation()
				self.progressText:setAlpha( 0 )
				self.clipFinished( progressText, {} )

				ProgressBarBorder:completeAnimation()
				self.ProgressBarBorder:setAlpha( 0 )
				self.clipFinished( ProgressBarBorder, {} )

				verticalScrollingTextBox:completeAnimation()
				self.verticalScrollingTextBox:setLeftRight( true, false, 103.5, 401.5 )
				self.verticalScrollingTextBox:setTopBottom( true, false, 25, 67 )
				self.verticalScrollingTextBox:setAlpha( 0 )
				self.clipFinished( verticalScrollingTextBox, {} )

				RewardBox:completeAnimation()
				self.RewardBox:setAlpha( 0 )
				self.clipFinished( RewardBox, {} )

				bmContractBrandIcon:completeAnimation()
				self.bmContractBrandIcon:setAlpha( 0 )
				self.clipFinished( bmContractBrandIcon, {} )
			end
		},
		bmComtracts = {
			DefaultClip = function ()
				self:setupElementClipCounter( 13 )

				GreyBacking:completeAnimation()
				self.GreyBacking:setAlpha( 0.25 )
				self.clipFinished( GreyBacking, {} )

				BlackBacking:completeAnimation()
				self.BlackBacking:setAlpha( 0.25 )
				self.clipFinished( BlackBacking, {} )

				completedRewardImage:completeAnimation()
				self.completedRewardImage:setAlpha( 1 )
				self.clipFinished( completedRewardImage, {} )

				ProgressionRewardImage:completeAnimation()
				self.ProgressionRewardImage:setAlpha( 0 )
				self.clipFinished( ProgressionRewardImage, {} )

				ChallengeBonusXPInfo:completeAnimation()
				self.ChallengeBonusXPInfo:setAlpha( 0 )
				self.clipFinished( ChallengeBonusXPInfo, {} )

				requirementTitle:completeAnimation()
				self.requirementTitle:setLeftRight( true, true, 103.5, -4 )
				self.requirementTitle:setTopBottom( true, false, 0, 24 )
				self.requirementTitle:setAlpha( 0 )
				self.clipFinished( requirementTitle, {} )

				completedTitle:completeAnimation()
				self.completedTitle:setLeftRight( false, true, -317.5, 5 )
				self.completedTitle:setTopBottom( true, false, 17, 41 )
				self.completedTitle:setAlpha( 1 )
				self.clipFinished( completedTitle, {} )

				progressBar:completeAnimation()
				self.progressBar:setAlpha( 0 )
				self.clipFinished( progressBar, {} )

				progressText:completeAnimation()
				self.progressText:setAlpha( 0 )
				self.clipFinished( progressText, {} )

				ProgressBarBorder:completeAnimation()
				self.ProgressBarBorder:setAlpha( 0 )
				self.clipFinished( ProgressBarBorder, {} )

				verticalScrollingTextBox:completeAnimation()
				self.verticalScrollingTextBox:setLeftRight( true, false, 103.5, 426 )
				self.verticalScrollingTextBox:setTopBottom( true, false, 41, 83 )
				self.verticalScrollingTextBox:setAlpha( 1 )
				self.clipFinished( verticalScrollingTextBox, {} )

				RewardBox:completeAnimation()
				self.RewardBox:setAlpha( 0.2 )
				self.clipFinished( RewardBox, {} )

				bmContractBrandIcon:completeAnimation()
				self.bmContractBrandIcon:setLeftRight( true, false, 12.75, 85.75 )
				self.bmContractBrandIcon:setTopBottom( true, false, 6.75, 79.75 )
				self.bmContractBrandIcon:setAlpha( 1 )
				self.clipFinished( bmContractBrandIcon, {} )
			end
		},
		Completed = {
			DefaultClip = function ()
				self:setupElementClipCounter( 13 )

				GreyBacking:completeAnimation()
				self.GreyBacking:setAlpha( 0.25 )
				self.clipFinished( GreyBacking, {} )

				BlackBacking:completeAnimation()
				self.BlackBacking:setAlpha( 0.25 )
				self.clipFinished( BlackBacking, {} )

				completedRewardImage:completeAnimation()
				self.completedRewardImage:setAlpha( 1 )
				self.clipFinished( completedRewardImage, {} )

				ProgressionRewardImage:completeAnimation()
				self.ProgressionRewardImage:setAlpha( 0 )
				self.clipFinished( ProgressionRewardImage, {} )

				ChallengeBonusXPInfo:completeAnimation()
				self.ChallengeBonusXPInfo:setAlpha( 0 )
				self.clipFinished( ChallengeBonusXPInfo, {} )

				requirementTitle:completeAnimation()
				self.requirementTitle:setLeftRight( true, true, 103.5, -4 )
				self.requirementTitle:setTopBottom( true, false, 0, 24 )
				self.requirementTitle:setAlpha( 0 )
				self.clipFinished( requirementTitle, {} )

				completedTitle:completeAnimation()
				self.completedTitle:setLeftRight( false, true, -317.5, 5 )
				self.completedTitle:setTopBottom( true, false, 17, 41 )
				self.completedTitle:setAlpha( 1 )
				self.clipFinished( completedTitle, {} )

				progressBar:completeAnimation()
				self.progressBar:setAlpha( 0 )
				self.clipFinished( progressBar, {} )

				progressText:completeAnimation()
				self.progressText:setAlpha( 0 )
				self.clipFinished( progressText, {} )

				ProgressBarBorder:completeAnimation()
				self.ProgressBarBorder:setAlpha( 0 )
				self.clipFinished( ProgressBarBorder, {} )

				verticalScrollingTextBox:completeAnimation()
				self.verticalScrollingTextBox:setLeftRight( true, false, 103.5, 426 )
				self.verticalScrollingTextBox:setTopBottom( true, false, 41, 83 )
				self.verticalScrollingTextBox:setAlpha( 1 )
				self.clipFinished( verticalScrollingTextBox, {} )

				RewardBox:completeAnimation()
				self.RewardBox:setAlpha( 0.2 )
				self.clipFinished( RewardBox, {} )

				bmContractBrandIcon:completeAnimation()
				self.bmContractBrandIcon:setAlpha( 0 )
				self.clipFinished( bmContractBrandIcon, {} )
			end
		},
		NotAvailable = {
			DefaultClip = function ()
				self:setupElementClipCounter( 13 )

				GreyBacking:completeAnimation()
				self.GreyBacking:setAlpha( 0.25 )
				self.clipFinished( GreyBacking, {} )

				BlackBacking:completeAnimation()
				self.BlackBacking:setAlpha( 0.25 )
				self.clipFinished( BlackBacking, {} )

				completedRewardImage:completeAnimation()
				self.completedRewardImage:setAlpha( 0 )
				self.clipFinished( completedRewardImage, {} )

				ProgressionRewardImage:completeAnimation()
				self.ProgressionRewardImage:setAlpha( 1 )
				self.clipFinished( ProgressionRewardImage, {} )

				ChallengeBonusXPInfo:completeAnimation()
				self.ChallengeBonusXPInfo:setAlpha( 1 )
				self.clipFinished( ChallengeBonusXPInfo, {} )

				requirementTitle:completeAnimation()
				self.requirementTitle:setLeftRight( true, true, 103.5, -4 )
				self.requirementTitle:setTopBottom( true, false, 0, 24 )
				self.requirementTitle:setAlpha( 1 )
				self.clipFinished( requirementTitle, {} )

				completedTitle:completeAnimation()
				self.completedTitle:setAlpha( 0 )
				self.clipFinished( completedTitle, {} )

				progressBar:completeAnimation()
				self.progressBar:setAlpha( 0 )
				self.clipFinished( progressBar, {} )

				progressText:completeAnimation()
				self.progressText:setAlpha( 0 )
				self.clipFinished( progressText, {} )

				ProgressBarBorder:completeAnimation()
				self.ProgressBarBorder:setAlpha( 0 )
				self.clipFinished( ProgressBarBorder, {} )

				verticalScrollingTextBox:completeAnimation()
				self.verticalScrollingTextBox:setLeftRight( true, false, 103.5, 416 )
				self.verticalScrollingTextBox:setTopBottom( true, false, 23, 65 )
				self.verticalScrollingTextBox:setAlpha( 1 )
				self.clipFinished( verticalScrollingTextBox, {} )

				RewardBox:completeAnimation()
				self.RewardBox:setLeftRight( true, true, -1, 1 )
				self.RewardBox:setTopBottom( true, true, -1, 1 )
				self.RewardBox:setAlpha( 0.2 )
				self.clipFinished( RewardBox, {} )

				bmContractBrandIcon:completeAnimation()
				self.bmContractBrandIcon:setAlpha( 0 )
				self.clipFinished( bmContractBrandIcon, {} )
			end
		}
	}

	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.completedRewardImage:close()
		element.ProgressionRewardImage:close()
		element.ChallengeBonusXPInfo:close()
		element.ProgressBarBorder:close()
		element.verticalScrollingTextBox:close()
		element.progressBar:close()
		element.progressText:close()
	end )
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
