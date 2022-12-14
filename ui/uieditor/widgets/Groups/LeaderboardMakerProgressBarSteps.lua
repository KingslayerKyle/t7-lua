-- 574c8d0956d2d94e4af5b043c6c493e4
-- This hash is used for caching, delete to decompile the file again

CoD.LeaderboardMakerProgressBarSteps = InheritFrom( LUI.UIElement )
CoD.LeaderboardMakerProgressBarSteps.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.LeaderboardMakerProgressBarSteps )
	self.id = "LeaderboardMakerProgressBarSteps"
	self.soundSet = "default"
	self:setLeftRight( true, false, 0, 219 )
	self:setTopBottom( true, false, 0, 25 )
	
	local FETabFocus = LUI.UIImage.new()
	FETabFocus:setLeftRight( false, false, -110, -52.5 )
	FETabFocus:setTopBottom( false, false, -17.5, 17.5 )
	FETabFocus:setImage( RegisterImage( "uie_t7_menu_cac_buttontabfocusfull" ) )
	FETabFocus:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_nineslice_add" ) )
	FETabFocus:setShaderVector( 0, 1.67, 0.69, 0.42, 0.33 )
	FETabFocus:setupNineSliceShader( 96, 24 )
	self:addElement( FETabFocus )
	self.FETabFocus = FETabFocus
	
	local FETabFocus0 = LUI.UIImage.new()
	FETabFocus0:setLeftRight( false, false, -55.5, 2 )
	FETabFocus0:setTopBottom( false, false, -17.5, 17.5 )
	FETabFocus0:setImage( RegisterImage( "uie_t7_menu_cac_buttontabfocusfull" ) )
	FETabFocus0:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_nineslice_add" ) )
	FETabFocus0:setShaderVector( 0, 1.67, 0.69, 0.42, 0.33 )
	FETabFocus0:setupNineSliceShader( 96, 24 )
	self:addElement( FETabFocus0 )
	self.FETabFocus0 = FETabFocus0
	
	local FETabFocus1 = LUI.UIImage.new()
	FETabFocus1:setLeftRight( false, false, -1.25, 56.25 )
	FETabFocus1:setTopBottom( false, false, -17.5, 17.5 )
	FETabFocus1:setImage( RegisterImage( "uie_t7_menu_cac_buttontabfocusfull" ) )
	FETabFocus1:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_nineslice_add" ) )
	FETabFocus1:setShaderVector( 0, 1.67, 0.69, 0.42, 0.33 )
	FETabFocus1:setupNineSliceShader( 96, 24 )
	self:addElement( FETabFocus1 )
	self.FETabFocus1 = FETabFocus1
	
	local Glow2 = LUI.UIImage.new()
	Glow2:setLeftRight( true, true, -48.5, -102 )
	Glow2:setTopBottom( true, false, -24.35, 52.35 )
	Glow2:setRGB( 0.91, 1, 0 )
	Glow2:setImage( RegisterImage( "uie_t7_cp_hud_enemytarget_glow" ) )
	Glow2:setMaterial( LUI.UIImage.GetCachedMaterial( "ui_add" ) )
	self:addElement( Glow2 )
	self.Glow2 = Glow2
	
	local FETabIdle = LUI.UIImage.new()
	FETabIdle:setLeftRight( false, false, -109, -53.5 )
	FETabIdle:setTopBottom( false, false, -14.5, 14.5 )
	FETabIdle:setImage( RegisterImage( "uie_t7_menu_cac_buttontabidlefull" ) )
	FETabIdle:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_nineslice_add" ) )
	FETabIdle:setShaderVector( 0, 0.14, 0.28, 0, 0 )
	FETabIdle:setupNineSliceShader( 8, 8 )
	self:addElement( FETabIdle )
	self.FETabIdle = FETabIdle
	
	local FETabIdle0 = LUI.UIImage.new()
	FETabIdle0:setLeftRight( false, false, -54.5, 1 )
	FETabIdle0:setTopBottom( false, false, -14.5, 14.5 )
	FETabIdle0:setImage( RegisterImage( "uie_t7_menu_cac_buttontabidlefull" ) )
	FETabIdle0:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_nineslice_add" ) )
	FETabIdle0:setShaderVector( 0, 0.14, 0.28, 0, 0 )
	FETabIdle0:setupNineSliceShader( 8, 8 )
	self:addElement( FETabIdle0 )
	self.FETabIdle0 = FETabIdle0
	
	local FETabIdle1 = LUI.UIImage.new()
	FETabIdle1:setLeftRight( false, false, -0.25, 55.25 )
	FETabIdle1:setTopBottom( false, false, -14.5, 14.5 )
	FETabIdle1:setImage( RegisterImage( "uie_t7_menu_cac_buttontabidlefull" ) )
	FETabIdle1:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_nineslice_add" ) )
	FETabIdle1:setShaderVector( 0, 0.14, 0.28, 0, 0 )
	FETabIdle1:setupNineSliceShader( 8, 8 )
	self:addElement( FETabIdle1 )
	self.FETabIdle1 = FETabIdle1
	
	local Three = LUI.UIText.new()
	Three:setLeftRight( false, false, 14.5, 40.5 )
	Three:setTopBottom( false, false, -9, 9 )
	Three:setRGB( 0, 0, 0 )
	Three:setText( Engine.Localize( "3" ) )
	Three:setTTF( "fonts/escom.ttf" )
	Three:setMaterial( LUI.UIImage.GetCachedMaterial( "sw4_2d_uie_font_cached_glow" ) )
	Three:setShaderVector( 0, 0.08, 0, 0, 0 )
	Three:setShaderVector( 1, 0, 0, 0, 0 )
	Three:setShaderVector( 2, 1, 0, 0, 0 )
	Three:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	Three:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	self:addElement( Three )
	self.Three = Three
	
	local Two = LUI.UIText.new()
	Two:setLeftRight( false, false, -40.25, -14.25 )
	Two:setTopBottom( false, false, -9, 9 )
	Two:setRGB( 0, 0, 0 )
	Two:setText( Engine.Localize( "2" ) )
	Two:setTTF( "fonts/escom.ttf" )
	Two:setMaterial( LUI.UIImage.GetCachedMaterial( "sw4_2d_uie_font_cached_glow" ) )
	Two:setShaderVector( 0, 0.08, 0, 0, 0 )
	Two:setShaderVector( 1, 0, 0, 0, 0 )
	Two:setShaderVector( 2, 1, 0, 0, 0 )
	Two:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	Two:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	self:addElement( Two )
	self.Two = Two
	
	local One = LUI.UIText.new()
	One:setLeftRight( false, false, -94.25, -68.25 )
	One:setTopBottom( false, false, -9, 9 )
	One:setRGB( 0, 0, 0 )
	One:setText( Engine.Localize( "1" ) )
	One:setTTF( "fonts/escom.ttf" )
	One:setMaterial( LUI.UIImage.GetCachedMaterial( "sw4_2d_uie_font_cached_glow" ) )
	One:setShaderVector( 0, 0.08, 0, 0, 0 )
	One:setShaderVector( 1, 0, 0, 0, 0 )
	One:setShaderVector( 2, 1, 0, 0, 0 )
	One:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	One:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	self:addElement( One )
	self.One = One
	
	local FETabFocus10 = LUI.UIImage.new()
	FETabFocus10:setLeftRight( false, false, 53.25, 110.75 )
	FETabFocus10:setTopBottom( false, false, -17.5, 17.5 )
	FETabFocus10:setAlpha( 0 )
	FETabFocus10:setImage( RegisterImage( "uie_t7_menu_cac_buttontabfocusfull" ) )
	FETabFocus10:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_nineslice_add" ) )
	FETabFocus10:setShaderVector( 0, 1.67, 0.69, 0.42, 0.33 )
	FETabFocus10:setupNineSliceShader( 96, 24 )
	self:addElement( FETabFocus10 )
	self.FETabFocus10 = FETabFocus10
	
	local FETabIdle10 = LUI.UIImage.new()
	FETabIdle10:setLeftRight( false, false, 54.25, 109.75 )
	FETabIdle10:setTopBottom( false, false, -14.5, 14.5 )
	FETabIdle10:setImage( RegisterImage( "uie_t7_menu_cac_buttontabidlefull" ) )
	FETabIdle10:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_nineslice_add" ) )
	FETabIdle10:setShaderVector( 0, 0.14, 0.28, 0, 0 )
	FETabIdle10:setupNineSliceShader( 8, 8 )
	self:addElement( FETabIdle10 )
	self.FETabIdle10 = FETabIdle10
	
	local Four = LUI.UIText.new()
	Four:setLeftRight( false, false, 69, 95 )
	Four:setTopBottom( false, false, -9, 9 )
	Four:setText( Engine.Localize( "4" ) )
	Four:setTTF( "fonts/escom.ttf" )
	Four:setMaterial( LUI.UIImage.GetCachedMaterial( "sw4_2d_uie_font_cached_glow" ) )
	Four:setShaderVector( 0, 0.08, 0, 0, 0 )
	Four:setShaderVector( 1, 0, 0, 0, 0 )
	Four:setShaderVector( 2, 1, 0, 0, 0 )
	Four:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	Four:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	self:addElement( Four )
	self.Four = Four
	
	self.clipsPerState = {
		DefaultState = {
			DefaultClip = function ()
				self:setupElementClipCounter( 13 )

				FETabFocus:completeAnimation()
				self.FETabFocus:setAlpha( 1 )
				self.clipFinished( FETabFocus, {} )

				FETabFocus0:completeAnimation()
				self.FETabFocus0:setAlpha( 0 )
				self.clipFinished( FETabFocus0, {} )

				FETabFocus1:completeAnimation()
				self.FETabFocus1:setAlpha( 0 )
				self.clipFinished( FETabFocus1, {} )

				Glow2:completeAnimation()
				self.Glow2:setLeftRight( true, true, -33.25, -123.75 )
				self.Glow2:setTopBottom( true, false, -25.85, 50.85 )
				self.Glow2:setScale( 0.9 )
				self.clipFinished( Glow2, {} )

				FETabIdle:completeAnimation()
				self.FETabIdle:setAlpha( 0 )
				self.clipFinished( FETabIdle, {} )

				FETabIdle0:completeAnimation()
				self.FETabIdle0:setAlpha( 1 )
				self.clipFinished( FETabIdle0, {} )

				FETabIdle1:completeAnimation()
				self.FETabIdle1:setAlpha( 1 )
				self.clipFinished( FETabIdle1, {} )

				Three:completeAnimation()
				self.Three:setRGB( 1, 1, 1 )
				self.Three:setAlpha( 0.7 )
				self.clipFinished( Three, {} )

				Two:completeAnimation()
				self.Two:setRGB( 1, 1, 1 )
				self.Two:setAlpha( 0.7 )
				self.clipFinished( Two, {} )

				One:completeAnimation()
				self.One:setRGB( 0, 0, 0 )
				self.clipFinished( One, {} )

				FETabFocus10:completeAnimation()
				self.FETabFocus10:setAlpha( 0 )
				self.clipFinished( FETabFocus10, {} )

				FETabIdle10:completeAnimation()
				self.FETabIdle10:setAlpha( 1 )
				self.clipFinished( FETabIdle10, {} )

				Four:completeAnimation()
				self.Four:setAlpha( 1 )
				self.clipFinished( Four, {} )
			end
		},
		StepTwo = {
			DefaultClip = function ()
				self:setupElementClipCounter( 13 )

				FETabFocus:completeAnimation()
				self.FETabFocus:setAlpha( 0 )
				self.clipFinished( FETabFocus, {} )

				FETabFocus0:completeAnimation()
				self.FETabFocus0:setAlpha( 1 )
				self.clipFinished( FETabFocus0, {} )

				FETabFocus1:completeAnimation()
				self.FETabFocus1:setAlpha( 0 )
				self.clipFinished( FETabFocus1, {} )

				Glow2:completeAnimation()
				self.Glow2:setLeftRight( true, true, 22, -69 )
				self.Glow2:setTopBottom( true, false, -23.35, 53.35 )
				self.Glow2:setScale( 0.8 )
				self.clipFinished( Glow2, {} )

				FETabIdle:completeAnimation()
				self.FETabIdle:setAlpha( 1 )
				self.clipFinished( FETabIdle, {} )

				FETabIdle0:completeAnimation()
				self.FETabIdle0:setAlpha( 0 )
				self.clipFinished( FETabIdle0, {} )

				FETabIdle1:completeAnimation()
				self.FETabIdle1:setAlpha( 1 )
				self.clipFinished( FETabIdle1, {} )

				Three:completeAnimation()
				self.Three:setRGB( 1, 1, 1 )
				self.Three:setAlpha( 0.7 )
				self.clipFinished( Three, {} )

				Two:completeAnimation()
				self.Two:setRGB( 0, 0, 0 )
				self.clipFinished( Two, {} )

				One:completeAnimation()
				self.One:setRGB( 1, 1, 1 )
				self.One:setAlpha( 0.7 )
				self.clipFinished( One, {} )

				FETabFocus10:completeAnimation()
				self.FETabFocus10:setAlpha( 0 )
				self.clipFinished( FETabFocus10, {} )

				FETabIdle10:completeAnimation()
				self.FETabIdle10:setAlpha( 1 )
				self.clipFinished( FETabIdle10, {} )

				Four:completeAnimation()
				self.Four:setRGB( 1, 1, 1 )
				self.Four:setAlpha( 1 )
				self.clipFinished( Four, {} )
			end
		},
		StepThree = {
			DefaultClip = function ()
				self:setupElementClipCounter( 13 )

				FETabFocus:completeAnimation()
				self.FETabFocus:setAlpha( 0 )
				self.clipFinished( FETabFocus, {} )

				FETabFocus0:completeAnimation()
				self.FETabFocus0:setAlpha( 0 )
				self.clipFinished( FETabFocus0, {} )

				FETabFocus1:completeAnimation()
				self.FETabFocus1:setAlpha( 1 )
				self.clipFinished( FETabFocus1, {} )

				Glow2:completeAnimation()
				self.Glow2:setLeftRight( true, true, 76.5, -14.5 )
				self.Glow2:setTopBottom( true, false, -26, 51 )
				self.Glow2:setScale( 0.8 )
				self.clipFinished( Glow2, {} )

				FETabIdle:completeAnimation()
				self.FETabIdle:setAlpha( 1 )
				self.clipFinished( FETabIdle, {} )

				FETabIdle0:completeAnimation()
				self.FETabIdle0:setAlpha( 1 )
				self.clipFinished( FETabIdle0, {} )

				FETabIdle1:completeAnimation()
				self.FETabIdle1:setAlpha( 0 )
				self.clipFinished( FETabIdle1, {} )

				Three:completeAnimation()
				self.Three:setRGB( 0, 0, 0 )
				self.clipFinished( Three, {} )

				Two:completeAnimation()
				self.Two:setRGB( 1, 1, 1 )
				self.Two:setAlpha( 0.7 )
				self.clipFinished( Two, {} )

				One:completeAnimation()
				self.One:setRGB( 1, 1, 1 )
				self.One:setAlpha( 0.7 )
				self.clipFinished( One, {} )

				FETabFocus10:completeAnimation()
				self.FETabFocus10:setAlpha( 0 )
				self.clipFinished( FETabFocus10, {} )

				FETabIdle10:completeAnimation()
				self.FETabIdle10:setAlpha( 1 )
				self.clipFinished( FETabIdle10, {} )

				Four:completeAnimation()
				self.Four:setRGB( 1, 1, 1 )
				self.clipFinished( Four, {} )
			end
		},
		StepFour = {
			DefaultClip = function ()
				self:setupElementClipCounter( 13 )

				FETabFocus:completeAnimation()
				self.FETabFocus:setAlpha( 0 )
				self.clipFinished( FETabFocus, {} )

				FETabFocus0:completeAnimation()
				self.FETabFocus0:setAlpha( 0 )
				self.clipFinished( FETabFocus0, {} )

				FETabFocus1:completeAnimation()
				self.FETabFocus1:setAlpha( 0 )
				self.clipFinished( FETabFocus1, {} )

				Glow2:completeAnimation()
				self.Glow2:setLeftRight( true, true, 131, 40 )
				self.Glow2:setTopBottom( true, false, -25.85, 50.85 )
				self.Glow2:setScale( 0.8 )
				self.clipFinished( Glow2, {} )

				FETabIdle:completeAnimation()
				self.FETabIdle:setAlpha( 1 )
				self.clipFinished( FETabIdle, {} )

				FETabIdle0:completeAnimation()
				self.FETabIdle0:setAlpha( 1 )
				self.clipFinished( FETabIdle0, {} )

				FETabIdle1:completeAnimation()
				self.FETabIdle1:setAlpha( 1 )
				self.clipFinished( FETabIdle1, {} )

				Three:completeAnimation()
				self.Three:setRGB( 1, 1, 1 )
				self.clipFinished( Three, {} )

				Two:completeAnimation()
				self.Two:setRGB( 1, 1, 1 )
				self.Two:setAlpha( 0.7 )
				self.clipFinished( Two, {} )

				One:completeAnimation()
				self.One:setRGB( 1, 1, 1 )
				self.One:setAlpha( 0.7 )
				self.clipFinished( One, {} )

				FETabFocus10:completeAnimation()
				self.FETabFocus10:setAlpha( 1 )
				self.clipFinished( FETabFocus10, {} )

				FETabIdle10:completeAnimation()
				self.FETabIdle10:setAlpha( 0 )
				self.clipFinished( FETabIdle10, {} )

				Four:completeAnimation()
				self.Four:setRGB( 0, 0, 0 )
				self.Four:setText( Engine.Localize( "4" ) )
				self.clipFinished( Four, {} )
			end
		}
	}

	self:mergeStateConditions( {
		{
			stateName = "StepTwo",
			condition = function ( menu, element, event )
				return IsGroupLeaderboardMakerState( controller, "ChooseHardcore" )
			end
		},
		{
			stateName = "StepThree",
			condition = function ( menu, element, event )
				return IsGroupLeaderboardMakerState( controller, "ChooseDefaultSort" )
			end
		},
		{
			stateName = "StepFour",
			condition = function ( menu, element, event )
				return IsGroupLeaderboardMakerState( controller, "ChooseTimeFrame" )
			end
		}
	} )
	self:subscribeToModel( Engine.GetModel( Engine.GetModelForController( controller ), "groups.leaderboardmaker.state" ), function ( model )
		menu:updateElementState( self, {
			name = "model_validation",
			menu = menu,
			modelValue = Engine.GetModelValue( model ),
			modelName = "groups.leaderboardmaker.state"
		} )
	end )
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
