-- befa90f9ed5024aefefd5554de5b0387
-- This hash is used for caching, delete to decompile the file again

require( "ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel" )
require( "ui.uieditor.widgets.GenericPopups.LOOT_ToastFrameBackground" )
require( "ui.uieditor.widgets.GenericPopups.Toast_BonusOutline" )
require( "ui.uieditor.widgets.GenericPopups.GP_FrameBackgroundt" )
require( "ui.uieditor.widgets.horizontalScrollingTextBox_30pt" )
require( "ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget" )
require( "ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr" )

CoD.Toast_Container = InheritFrom( LUI.UIElement )
CoD.Toast_Container.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.Toast_Container )
	self.id = "Toast_Container"
	self.soundSet = "ChooseDecal"
	self:setLeftRight( true, false, 0, 307 )
	self:setTopBottom( true, false, 0, 65 )
	self.anyChildUsesUpdateState = true
	
	local BlackFrame = CoD.FE_ButtonPanel.new( menu, controller )
	BlackFrame:setLeftRight( false, false, -150.5, 156.5 )
	BlackFrame:setTopBottom( false, false, -89.5, 32.5 )
	BlackFrame:setRGB( 0, 0, 0 )
	BlackFrame:setAlpha( 0 )
	self:addElement( BlackFrame )
	self.BlackFrame = BlackFrame
	
	local LOOTToastFrameBackground = CoD.LOOT_ToastFrameBackground.new( menu, controller )
	LOOTToastFrameBackground:setLeftRight( true, false, -20.5, 326.5 )
	LOOTToastFrameBackground:setTopBottom( true, false, -20, 92.5 )
	LOOTToastFrameBackground:setAlpha( 0 )
	self:addElement( LOOTToastFrameBackground )
	self.LOOTToastFrameBackground = LOOTToastFrameBackground
	
	local ToastBonusOutline = CoD.Toast_BonusOutline.new( menu, controller )
	ToastBonusOutline:setLeftRight( true, false, -2, 302 )
	ToastBonusOutline:setTopBottom( true, false, -75.5, 73.5 )
	ToastBonusOutline:setAlpha( 0 )
	self:addElement( ToastBonusOutline )
	self.ToastBonusOutline = ToastBonusOutline
	
	local EmblemDecal = LUI.UIImage.new()
	EmblemDecal:setLeftRight( true, false, 110, 190 )
	EmblemDecal:setTopBottom( true, false, -75, 5 )
	EmblemDecal:setAlpha( 0 )
	self:addElement( EmblemDecal )
	self.EmblemDecal = EmblemDecal
	
	local FrameBackground = CoD.GP_FrameBackgroundt.new( menu, controller )
	FrameBackground:setLeftRight( true, true, -29.5, 28.5 )
	FrameBackground:setTopBottom( true, true, -1, 3 )
	self:addElement( FrameBackground )
	self.FrameBackground = FrameBackground
	
	local ContentIcon = LUI.UIImage.new()
	ContentIcon:setLeftRight( true, false, 1, 65 )
	ContentIcon:setTopBottom( true, false, 1, 65 )
	ContentIcon:setImage( RegisterImage( "uie_t7_pbt_loot_theme_battery_body1_geist" ) )
	self:addElement( ContentIcon )
	self.ContentIcon = ContentIcon
	
	local FunctionIcon = LUI.UIImage.new()
	FunctionIcon:setLeftRight( false, true, -23, -1 )
	FunctionIcon:setTopBottom( true, false, 2, 24 )
	FunctionIcon:setAlpha( 0 )
	self:addElement( FunctionIcon )
	self.FunctionIcon = FunctionIcon
	
	local Kicker = LUI.UIText.new()
	Kicker:setLeftRight( true, false, 74, 276 )
	Kicker:setTopBottom( true, false, 9, 29 )
	Kicker:setRGB( 0.6, 0.91, 0.84 )
	Kicker:setText( Engine.Localize( "MENU_NEW" ) )
	Kicker:setTTF( "fonts/RefrigeratorDeluxe-Regular.ttf" )
	Kicker:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_LEFT )
	Kicker:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	self:addElement( Kicker )
	self.Kicker = Kicker
	
	local ToastHeaderWidget = CoD.horizontalScrollingTextBox_30pt.new( menu, controller )
	ToastHeaderWidget:setLeftRight( true, false, 74, 295 )
	ToastHeaderWidget:setTopBottom( true, false, 22, 56 )
	ToastHeaderWidget.textBox:setText( Engine.Localize( "WEAPON_AR_STANDARD" ) )
	ToastHeaderWidget.textBox:setTTF( "fonts/default.ttf" )
	ToastHeaderWidget.textBox:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_LEFT )
	self:addElement( ToastHeaderWidget )
	self.ToastHeaderWidget = ToastHeaderWidget
	
	local Description = LUI.UIText.new()
	Description:setLeftRight( true, false, 0, 300 )
	Description:setTopBottom( true, false, 33, 56 )
	Description:setAlpha( 0 )
	Description:setText( Engine.Localize( "MENU_NEW" ) )
	Description:setTTF( "fonts/RefrigeratorDeluxe-Regular.ttf" )
	Description:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	Description:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	self:addElement( Description )
	self.Description = Description
	
	local CallingCardsFrameWidget = CoD.CallingCards_FrameWidget.new( menu, controller )
	CallingCardsFrameWidget:setLeftRight( false, false, 0, 0 )
	CallingCardsFrameWidget:setTopBottom( false, false, -64.5, -64.5 )
	CallingCardsFrameWidget:setAlpha( 0 )
	CallingCardsFrameWidget.CardIconFrame:setScale( 0.62 )
	CallingCardsFrameWidget:linkToElementModel( self, nil, false, function ( model )
		CallingCardsFrameWidget:setModel( model, controller )
	end )
	self:addElement( CallingCardsFrameWidget )
	self.CallingCardsFrameWidget = CallingCardsFrameWidget
	
	local FETitleNumBrdr0 = CoD.FE_TitleNumBrdr.new( menu, controller )
	FETitleNumBrdr0:setLeftRight( false, false, -153.5, 153.5 )
	FETitleNumBrdr0:setTopBottom( false, false, 32.5, -32.5 )
	FETitleNumBrdr0:setAlpha( 0 )
	self:addElement( FETitleNumBrdr0 )
	self.FETitleNumBrdr0 = FETitleNumBrdr0
	
	self.clipsPerState = {
		DefaultState = {
			DefaultClip = function ()
				self:setupElementClipCounter( 10 )

				LOOTToastFrameBackground:completeAnimation()
				self.LOOTToastFrameBackground:setLeftRight( true, false, -20.5, 326.5 )
				self.LOOTToastFrameBackground:setTopBottom( true, false, -20, 92.5 )
				self.LOOTToastFrameBackground:setAlpha( 0 )
				self.clipFinished( LOOTToastFrameBackground, {} )

				ToastBonusOutline:completeAnimation()
				self.ToastBonusOutline:setAlpha( 0 )
				self.clipFinished( ToastBonusOutline, {} )

				EmblemDecal:completeAnimation()
				self.EmblemDecal:setAlpha( 0 )
				self.clipFinished( EmblemDecal, {} )

				FrameBackground:completeAnimation()
				self.FrameBackground:setAlpha( 1 )
				self.clipFinished( FrameBackground, {} )

				ContentIcon:completeAnimation()
				self.ContentIcon:setAlpha( 1 )
				self.clipFinished( ContentIcon, {} )

				FunctionIcon:completeAnimation()
				self.FunctionIcon:setLeftRight( false, true, -23, -1 )
				self.FunctionIcon:setTopBottom( true, false, 1, 23 )
				self.FunctionIcon:setAlpha( 1 )
				self.clipFinished( FunctionIcon, {} )

				Kicker:completeAnimation()
				self.Kicker:setLeftRight( true, false, 74, 276 )
				self.Kicker:setTopBottom( true, false, 9, 29 )
				self.Kicker:setRGB( 0.32, 0.53, 0.49 )
				self.Kicker:setAlpha( 1 )
				self.Kicker:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_LEFT )
				self.clipFinished( Kicker, {} )

				ToastHeaderWidget:completeAnimation()
				self.ToastHeaderWidget:setLeftRight( true, false, 74, 291 )
				self.ToastHeaderWidget:setTopBottom( true, false, 22, 56 )
				self.ToastHeaderWidget:setAlpha( 1 )
				self.clipFinished( ToastHeaderWidget, {} )

				Description:completeAnimation()
				self.Description:setLeftRight( true, false, 0, 300 )
				self.Description:setTopBottom( true, false, 33, 56 )
				self.Description:setAlpha( 0 )
				self.clipFinished( Description, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setAlpha( 0 )
				self.clipFinished( CallingCardsFrameWidget, {} )
			end
		},
		Content = {
			DefaultClip = function ()
				self:setupElementClipCounter( 10 )

				LOOTToastFrameBackground:completeAnimation()
				self.LOOTToastFrameBackground:setLeftRight( true, false, -20.5, 326.5 )
				self.LOOTToastFrameBackground:setTopBottom( true, false, -20, 92.5 )
				self.LOOTToastFrameBackground:setAlpha( 0 )
				self.clipFinished( LOOTToastFrameBackground, {} )

				ToastBonusOutline:completeAnimation()
				self.ToastBonusOutline:setAlpha( 0 )
				self.clipFinished( ToastBonusOutline, {} )

				EmblemDecal:completeAnimation()
				self.EmblemDecal:setAlpha( 0 )
				self.clipFinished( EmblemDecal, {} )

				FrameBackground:completeAnimation()
				self.FrameBackground:setAlpha( 1 )
				self.clipFinished( FrameBackground, {} )

				ContentIcon:completeAnimation()
				self.ContentIcon:setAlpha( 1 )
				self.clipFinished( ContentIcon, {} )

				FunctionIcon:completeAnimation()
				self.FunctionIcon:setLeftRight( false, true, -24, -2 )
				self.FunctionIcon:setTopBottom( true, false, 0, 22 )
				self.FunctionIcon:setAlpha( 1 )
				self.clipFinished( FunctionIcon, {} )

				Kicker:completeAnimation()
				self.Kicker:setLeftRight( true, false, 74, 276 )
				self.Kicker:setTopBottom( true, false, 9, 29 )
				self.Kicker:setRGB( 0.6, 0.91, 0.84 )
				self.Kicker:setAlpha( 1 )
				self.Kicker:setScale( 1 )
				self.Kicker:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_LEFT )
				self.clipFinished( Kicker, {} )

				ToastHeaderWidget:completeAnimation()
				self.ToastHeaderWidget:setLeftRight( true, false, 74, 290 )
				self.ToastHeaderWidget:setTopBottom( true, false, 22, 56 )
				self.ToastHeaderWidget:setAlpha( 1 )
				self.clipFinished( ToastHeaderWidget, {} )

				Description:completeAnimation()
				self.Description:setLeftRight( true, false, 0, 300 )
				self.Description:setTopBottom( true, false, 33, 56 )
				self.Description:setRGB( 1, 1, 1 )
				self.Description:setAlpha( 0 )
				self.Description:setScale( 1 )
				self.clipFinished( Description, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setAlpha( 0 )
				self.clipFinished( CallingCardsFrameWidget, {} )
			end
		},
		LootBonusDecal = {
			DefaultClip = function ()
				self:setupElementClipCounter( 10 )

				LOOTToastFrameBackground:completeAnimation()
				self.LOOTToastFrameBackground:setLeftRight( true, false, -20.5, 326.5 )
				self.LOOTToastFrameBackground:setTopBottom( true, false, -77, 92.5 )
				self.LOOTToastFrameBackground:setAlpha( 1 )
				self.clipFinished( LOOTToastFrameBackground, {} )

				ToastBonusOutline:completeAnimation()
				self.ToastBonusOutline:setLeftRight( true, false, 0, 300 )
				self.ToastBonusOutline:setTopBottom( true, false, -77, 73 )
				self.ToastBonusOutline:setAlpha( 0 )
				self.clipFinished( ToastBonusOutline, {} )

				EmblemDecal:completeAnimation()
				self.EmblemDecal:setLeftRight( true, false, 118, 191 )
				self.EmblemDecal:setTopBottom( true, false, -56.5, 16.5 )
				self.EmblemDecal:setAlpha( 1 )
				self.clipFinished( EmblemDecal, {} )

				FrameBackground:completeAnimation()
				self.FrameBackground:setAlpha( 0 )
				self.clipFinished( FrameBackground, {} )

				ContentIcon:completeAnimation()
				self.ContentIcon:setAlpha( 0 )
				self.clipFinished( ContentIcon, {} )

				FunctionIcon:completeAnimation()
				self.FunctionIcon:setAlpha( 0 )
				self.clipFinished( FunctionIcon, {} )

				Kicker:completeAnimation()
				self.Kicker:setLeftRight( true, false, 3, 303.5 )
				self.Kicker:setTopBottom( true, false, 17.5, 43.5 )
				self.Kicker:setRGB( 1, 1, 1 )
				self.Kicker:setAlpha( 1 )
				self.Kicker:setScale( 1.1 )
				self.Kicker:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
				self.clipFinished( Kicker, {} )

				ToastHeaderWidget:completeAnimation()
				self.ToastHeaderWidget:setLeftRight( true, false, 3, 302 )
				self.ToastHeaderWidget:setTopBottom( true, false, 19, 53 )
				self.ToastHeaderWidget:setRGB( 1, 1, 1 )
				self.ToastHeaderWidget:setAlpha( 0 )
				self.clipFinished( ToastHeaderWidget, {} )

				Description:completeAnimation()
				self.Description:setLeftRight( true, false, 3, 303 )
				self.Description:setTopBottom( true, false, 39, 62 )
				self.Description:setRGB( 0.6, 0.91, 0.84 )
				self.Description:setAlpha( 1 )
				self.Description:setScale( 0.9 )
				self.clipFinished( Description, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setAlpha( 0 )
				self.clipFinished( CallingCardsFrameWidget, {} )
			end
		},
		LootBonusCallingCard = {
			DefaultClip = function ()
				self:setupElementClipCounter( 10 )

				LOOTToastFrameBackground:completeAnimation()
				self.LOOTToastFrameBackground:setLeftRight( true, false, -18, 324.5 )
				self.LOOTToastFrameBackground:setTopBottom( true, false, -77.5, 92 )
				self.LOOTToastFrameBackground:setAlpha( 1 )
				self.clipFinished( LOOTToastFrameBackground, {} )

				ToastBonusOutline:completeAnimation()
				self.ToastBonusOutline:setLeftRight( true, false, 1, 299 )
				self.ToastBonusOutline:setTopBottom( true, false, -77, 73 )
				self.ToastBonusOutline:setAlpha( 0 )
				self.clipFinished( ToastBonusOutline, {} )

				EmblemDecal:completeAnimation()
				self.EmblemDecal:setAlpha( 0 )
				self.clipFinished( EmblemDecal, {} )

				FrameBackground:completeAnimation()
				self.FrameBackground:setAlpha( 0 )
				self.clipFinished( FrameBackground, {} )

				ContentIcon:completeAnimation()
				self.ContentIcon:setAlpha( 0 )
				self.clipFinished( ContentIcon, {} )

				FunctionIcon:completeAnimation()
				self.FunctionIcon:setAlpha( 0 )
				self.clipFinished( FunctionIcon, {} )

				Kicker:completeAnimation()
				self.Kicker:setLeftRight( true, false, 3, 303 )
				self.Kicker:setTopBottom( true, false, 17, 43 )
				self.Kicker:setRGB( 1, 1, 1 )
				self.Kicker:setAlpha( 1 )
				self.Kicker:setScale( 1.1 )
				self.Kicker:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
				self.clipFinished( Kicker, {} )

				ToastHeaderWidget:completeAnimation()
				self.ToastHeaderWidget:setLeftRight( true, false, 7, 302 )
				self.ToastHeaderWidget:setTopBottom( true, false, 19, 53 )
				self.ToastHeaderWidget:setAlpha( 0 )
				self.clipFinished( ToastHeaderWidget, {} )

				Description:completeAnimation()
				self.Description:setLeftRight( true, false, 3, 303 )
				self.Description:setTopBottom( true, false, 40, 63 )
				self.Description:setRGB( 0.6, 0.91, 0.84 )
				self.Description:setAlpha( 1 )
				self.Description:setScale( 0.9 )
				self.clipFinished( Description, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setLeftRight( false, false, 3, 3 )
				self.CallingCardsFrameWidget:setTopBottom( false, false, -49.5, -49.5 )
				self.CallingCardsFrameWidget:setAlpha( 1 )
				self.CallingCardsFrameWidget:setScale( 1 )
				self.clipFinished( CallingCardsFrameWidget, {} )
			end
		},
		RecentGameBookmarked = {
			DefaultClip = function ()
				self:setupElementClipCounter( 10 )

				LOOTToastFrameBackground:completeAnimation()
				self.LOOTToastFrameBackground:setAlpha( 0 )
				self.clipFinished( LOOTToastFrameBackground, {} )

				ToastBonusOutline:completeAnimation()
				self.ToastBonusOutline:setAlpha( 0 )
				self.clipFinished( ToastBonusOutline, {} )

				EmblemDecal:completeAnimation()
				self.EmblemDecal:setAlpha( 0 )
				self.clipFinished( EmblemDecal, {} )

				FrameBackground:completeAnimation()
				self.FrameBackground:setAlpha( 1 )
				self.clipFinished( FrameBackground, {} )

				ContentIcon:completeAnimation()
				self.ContentIcon:setAlpha( 1 )
				self.clipFinished( ContentIcon, {} )

				FunctionIcon:completeAnimation()
				self.FunctionIcon:setAlpha( 1 )
				self.clipFinished( FunctionIcon, {} )

				Kicker:completeAnimation()
				self.Kicker:setLeftRight( true, false, 74, 276 )
				self.Kicker:setTopBottom( true, false, 9, 29 )
				self.Kicker:setRGB( 0.6, 0.91, 0.84 )
				self.Kicker:setAlpha( 1 )
				self.Kicker:setScale( 1 )
				self.Kicker:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_LEFT )
				self.clipFinished( Kicker, {} )

				ToastHeaderWidget:completeAnimation()
				self.ToastHeaderWidget:setLeftRight( true, false, 74, 295 )
				self.ToastHeaderWidget:setTopBottom( true, false, 22, 56 )
				self.ToastHeaderWidget:setAlpha( 1 )
				self.clipFinished( ToastHeaderWidget, {} )

				Description:completeAnimation()
				self.Description:setLeftRight( true, false, 0, 300 )
				self.Description:setTopBottom( true, false, 33, 56 )
				self.Description:setAlpha( 0 )
				self.clipFinished( Description, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setAlpha( 0 )
				self.clipFinished( CallingCardsFrameWidget, {} )
			end
		},
		Fileshare = {
			DefaultClip = function ()
				self:setupElementClipCounter( 10 )

				LOOTToastFrameBackground:completeAnimation()
				self.LOOTToastFrameBackground:setAlpha( 0 )
				self.clipFinished( LOOTToastFrameBackground, {} )

				ToastBonusOutline:completeAnimation()
				self.ToastBonusOutline:setAlpha( 0 )
				self.clipFinished( ToastBonusOutline, {} )

				EmblemDecal:completeAnimation()
				self.EmblemDecal:setAlpha( 0 )
				self.clipFinished( EmblemDecal, {} )

				FrameBackground:completeAnimation()
				self.FrameBackground:setAlpha( 1 )
				self.clipFinished( FrameBackground, {} )

				ContentIcon:completeAnimation()
				self.ContentIcon:setAlpha( 1 )
				self.clipFinished( ContentIcon, {} )

				FunctionIcon:completeAnimation()
				self.FunctionIcon:setAlpha( 1 )
				self.clipFinished( FunctionIcon, {} )

				Kicker:completeAnimation()
				self.Kicker:setLeftRight( true, false, 74, 276 )
				self.Kicker:setTopBottom( true, false, 9, 29 )
				self.Kicker:setRGB( 0.6, 0.91, 0.84 )
				self.Kicker:setAlpha( 1 )
				self.Kicker:setScale( 1 )
				self.Kicker:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_LEFT )
				self.clipFinished( Kicker, {} )

				ToastHeaderWidget:completeAnimation()
				self.ToastHeaderWidget:setLeftRight( true, false, 74, 295 )
				self.ToastHeaderWidget:setTopBottom( true, false, 22, 56 )
				self.ToastHeaderWidget:setAlpha( 1 )
				self.clipFinished( ToastHeaderWidget, {} )

				Description:completeAnimation()
				self.Description:setLeftRight( true, false, 7, 300 )
				self.Description:setTopBottom( true, false, 33, 56 )
				self.Description:setAlpha( 0 )
				self.clipFinished( Description, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setAlpha( 0 )
				self.clipFinished( CallingCardsFrameWidget, {} )
			end
		},
		Invite = {
			DefaultClip = function ()
				self:setupElementClipCounter( 10 )

				LOOTToastFrameBackground:completeAnimation()
				self.LOOTToastFrameBackground:setAlpha( 0 )
				self.clipFinished( LOOTToastFrameBackground, {} )

				ToastBonusOutline:completeAnimation()
				self.ToastBonusOutline:setAlpha( 0 )
				self.clipFinished( ToastBonusOutline, {} )

				EmblemDecal:completeAnimation()
				self.EmblemDecal:setAlpha( 0 )
				self.clipFinished( EmblemDecal, {} )

				FrameBackground:completeAnimation()
				self.FrameBackground:setAlpha( 1 )
				self.clipFinished( FrameBackground, {} )

				ContentIcon:completeAnimation()
				self.ContentIcon:setAlpha( 1 )
				self.clipFinished( ContentIcon, {} )

				FunctionIcon:completeAnimation()
				self.FunctionIcon:setAlpha( 1 )
				self.clipFinished( FunctionIcon, {} )

				Kicker:completeAnimation()
				self.Kicker:setLeftRight( true, false, 74, 276 )
				self.Kicker:setTopBottom( true, false, 9, 29 )
				self.Kicker:setAlpha( 1 )
				self.Kicker:setScale( 1 )
				self.Kicker:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_LEFT )
				self.clipFinished( Kicker, {} )

				ToastHeaderWidget:completeAnimation()
				self.ToastHeaderWidget:setLeftRight( true, false, 74, 292 )
				self.ToastHeaderWidget:setTopBottom( true, false, 22, 56 )
				self.ToastHeaderWidget:setAlpha( 1 )
				self.clipFinished( ToastHeaderWidget, {} )

				Description:completeAnimation()
				self.Description:setLeftRight( true, false, 0, 300 )
				self.Description:setTopBottom( true, false, 33, 56 )
				self.Description:setAlpha( 0 )
				self.clipFinished( Description, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setAlpha( 0 )
				self.clipFinished( CallingCardsFrameWidget, {} )
			end
		},
		BreakVariantLink = {
			DefaultClip = function ()
				self:setupElementClipCounter( 10 )

				LOOTToastFrameBackground:completeAnimation()
				self.LOOTToastFrameBackground:setAlpha( 0 )
				self.clipFinished( LOOTToastFrameBackground, {} )

				ToastBonusOutline:completeAnimation()
				self.ToastBonusOutline:setAlpha( 0 )
				self.clipFinished( ToastBonusOutline, {} )

				EmblemDecal:completeAnimation()
				self.EmblemDecal:setAlpha( 0 )
				self.clipFinished( EmblemDecal, {} )

				FrameBackground:completeAnimation()
				self.FrameBackground:setAlpha( 1 )
				self.clipFinished( FrameBackground, {} )

				ContentIcon:completeAnimation()
				self.ContentIcon:setAlpha( 1 )
				self.clipFinished( ContentIcon, {} )

				FunctionIcon:completeAnimation()
				self.FunctionIcon:setAlpha( 1 )
				self.clipFinished( FunctionIcon, {} )

				Kicker:completeAnimation()
				self.Kicker:setLeftRight( true, false, 74, 276 )
				self.Kicker:setTopBottom( true, false, 9, 29 )
				self.Kicker:setAlpha( 1 )
				self.Kicker:setScale( 1 )
				self.Kicker:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_LEFT )
				self.clipFinished( Kicker, {} )

				ToastHeaderWidget:completeAnimation()
				self.ToastHeaderWidget:setLeftRight( true, false, 74, 295 )
				self.ToastHeaderWidget:setTopBottom( true, false, 22, 56 )
				self.ToastHeaderWidget:setAlpha( 1 )
				self.clipFinished( ToastHeaderWidget, {} )

				Description:completeAnimation()
				self.Description:setLeftRight( true, false, 0, 300 )
				self.Description:setTopBottom( true, false, 33, 56 )
				self.Description:setAlpha( 0 )
				self.clipFinished( Description, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setAlpha( 0 )
				self.clipFinished( CallingCardsFrameWidget, {} )
			end
		},
		BlackMarketEquipped = {
			DefaultClip = function ()
				self:setupElementClipCounter( 10 )

				LOOTToastFrameBackground:completeAnimation()
				self.LOOTToastFrameBackground:setLeftRight( true, false, -20.5, 326.5 )
				self.LOOTToastFrameBackground:setTopBottom( true, false, -20, 92.5 )
				self.LOOTToastFrameBackground:setAlpha( 1 )
				self.clipFinished( LOOTToastFrameBackground, {} )

				ToastBonusOutline:completeAnimation()
				self.ToastBonusOutline:setAlpha( 0 )
				self.clipFinished( ToastBonusOutline, {} )

				EmblemDecal:completeAnimation()
				self.EmblemDecal:setAlpha( 0 )
				self.clipFinished( EmblemDecal, {} )

				FrameBackground:completeAnimation()
				self.FrameBackground:setAlpha( 0 )
				self.clipFinished( FrameBackground, {} )

				ContentIcon:completeAnimation()
				self.ContentIcon:setAlpha( 1 )
				self.clipFinished( ContentIcon, {} )

				FunctionIcon:completeAnimation()
				self.FunctionIcon:setLeftRight( false, true, -24, -2 )
				self.FunctionIcon:setTopBottom( true, false, 0, 22 )
				self.FunctionIcon:setAlpha( 1 )
				self.clipFinished( FunctionIcon, {} )

				Kicker:completeAnimation()
				self.Kicker:setLeftRight( true, false, 74, 276 )
				self.Kicker:setTopBottom( true, false, 9, 29 )
				self.Kicker:setRGB( 0.6, 0.91, 0.84 )
				self.Kicker:setAlpha( 1 )
				self.Kicker:setScale( 1 )
				self.Kicker:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_LEFT )
				self.clipFinished( Kicker, {} )

				ToastHeaderWidget:completeAnimation()
				self.ToastHeaderWidget:setLeftRight( true, false, 74, 297 )
				self.ToastHeaderWidget:setTopBottom( true, false, 22, 56 )
				self.ToastHeaderWidget:setRGB( 1, 1, 1 )
				self.ToastHeaderWidget:setAlpha( 1 )
				self.ToastHeaderWidget:setXRot( 0 )
				self.ToastHeaderWidget:setYRot( 0 )
				self.ToastHeaderWidget:setZRot( 0 )
				self.ToastHeaderWidget:setScale( 1 )
				self.clipFinished( ToastHeaderWidget, {} )

				Description:completeAnimation()
				self.Description:setLeftRight( true, false, 0, 300 )
				self.Description:setTopBottom( true, false, 33, 56 )
				self.Description:setAlpha( 0 )
				self.Description:setScale( 1 )
				self.clipFinished( Description, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setAlpha( 0 )
				self.clipFinished( CallingCardsFrameWidget, {} )
			end
		},
		ArenaChallengeCallingCard = {
			DefaultClip = function ()
				self:setupElementClipCounter( 12 )

				BlackFrame:completeAnimation()
				self.BlackFrame:setLeftRight( false, false, -152.5, 159.5 )
				self.BlackFrame:setTopBottom( false, false, -92.5, 35.5 )
				self.BlackFrame:setAlpha( 0.6 )
				self.clipFinished( BlackFrame, {} )

				LOOTToastFrameBackground:completeAnimation()
				self.LOOTToastFrameBackground:setLeftRight( true, false, -18, 324.5 )
				self.LOOTToastFrameBackground:setTopBottom( true, false, -77.5, 92 )
				self.LOOTToastFrameBackground:setAlpha( 0 )
				self.clipFinished( LOOTToastFrameBackground, {} )

				ToastBonusOutline:completeAnimation()
				self.ToastBonusOutline:setLeftRight( true, false, 1, 299 )
				self.ToastBonusOutline:setTopBottom( true, false, -77, 73 )
				self.ToastBonusOutline:setAlpha( 0 )
				self.clipFinished( ToastBonusOutline, {} )

				EmblemDecal:completeAnimation()
				self.EmblemDecal:setAlpha( 0 )
				self.clipFinished( EmblemDecal, {} )

				FrameBackground:completeAnimation()
				self.FrameBackground:setAlpha( 0 )
				self.clipFinished( FrameBackground, {} )

				ContentIcon:completeAnimation()
				self.ContentIcon:setAlpha( 0 )
				self.clipFinished( ContentIcon, {} )

				FunctionIcon:completeAnimation()
				self.FunctionIcon:setAlpha( 0 )
				self.clipFinished( FunctionIcon, {} )

				Kicker:completeAnimation()
				self.Kicker:setLeftRight( true, false, 3, 303 )
				self.Kicker:setTopBottom( true, false, 17, 43 )
				self.Kicker:setRGB( 1, 1, 1 )
				self.Kicker:setAlpha( 1 )
				self.Kicker:setScale( 1.1 )
				self.Kicker:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
				self.clipFinished( Kicker, {} )

				ToastHeaderWidget:completeAnimation()
				self.ToastHeaderWidget:setLeftRight( true, false, 7, 306 )
				self.ToastHeaderWidget:setTopBottom( true, false, 19, 53 )
				self.ToastHeaderWidget:setAlpha( 0 )
				self.clipFinished( ToastHeaderWidget, {} )

				Description:completeAnimation()
				self.Description:setLeftRight( true, false, 3, 303 )
				self.Description:setTopBottom( true, false, 40, 63 )
				self.Description:setRGB( 0.6, 0.91, 0.84 )
				self.Description:setAlpha( 1 )
				self.Description:setScale( 0.9 )
				self.clipFinished( Description, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setLeftRight( false, false, 3, 3 )
				self.CallingCardsFrameWidget:setTopBottom( false, false, -49.5, -49.5 )
				self.CallingCardsFrameWidget:setAlpha( 1 )
				self.CallingCardsFrameWidget:setScale( 1 )
				self.clipFinished( CallingCardsFrameWidget, {} )

				FETitleNumBrdr0:completeAnimation()
				self.FETitleNumBrdr0:setLeftRight( false, false, -146.5, 153.5 )
				self.FETitleNumBrdr0:setTopBottom( false, false, -86.5, -11.5 )
				self.FETitleNumBrdr0:setAlpha( 1 )
				self.clipFinished( FETitleNumBrdr0, {} )
			end
		},
		NewMusicTrack = {
			DefaultClip = function ()
				self:setupElementClipCounter( 10 )

				LOOTToastFrameBackground:completeAnimation()
				self.LOOTToastFrameBackground:setAlpha( 0 )
				self.clipFinished( LOOTToastFrameBackground, {} )

				ToastBonusOutline:completeAnimation()
				self.ToastBonusOutline:setAlpha( 0 )
				self.clipFinished( ToastBonusOutline, {} )

				EmblemDecal:completeAnimation()
				self.EmblemDecal:setAlpha( 0 )
				self.clipFinished( EmblemDecal, {} )

				FrameBackground:completeAnimation()
				self.FrameBackground:setAlpha( 1 )
				self.clipFinished( FrameBackground, {} )

				ContentIcon:completeAnimation()
				self.ContentIcon:setAlpha( 1 )
				self.clipFinished( ContentIcon, {} )

				FunctionIcon:completeAnimation()
				self.FunctionIcon:setAlpha( 0 )
				self.clipFinished( FunctionIcon, {} )

				Kicker:completeAnimation()
				self.Kicker:setLeftRight( true, false, 74, 276 )
				self.Kicker:setTopBottom( true, false, 9, 29 )
				self.Kicker:setRGB( 0.6, 0.91, 0.84 )
				self.Kicker:setAlpha( 1 )
				self.Kicker:setScale( 1 )
				self.Kicker:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_LEFT )
				self.clipFinished( Kicker, {} )

				ToastHeaderWidget:completeAnimation()
				self.ToastHeaderWidget:setLeftRight( true, false, 74, 291 )
				self.ToastHeaderWidget:setTopBottom( true, false, 22, 56 )
				self.ToastHeaderWidget:setAlpha( 1 )
				self.clipFinished( ToastHeaderWidget, {} )

				Description:completeAnimation()
				self.Description:setLeftRight( true, false, 0, 300 )
				self.Description:setTopBottom( true, false, 33, 56 )
				self.Description:setAlpha( 0 )
				self.clipFinished( Description, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setAlpha( 0 )
				self.clipFinished( CallingCardsFrameWidget, {} )
			end
		},
		LootBonusCamo = {
			DefaultClip = function ()
				self:setupElementClipCounter( 10 )

				LOOTToastFrameBackground:completeAnimation()
				self.LOOTToastFrameBackground:setLeftRight( true, false, -20.5, 326.5 )
				self.LOOTToastFrameBackground:setTopBottom( true, false, -77, 92.5 )
				self.LOOTToastFrameBackground:setAlpha( 1 )
				self.clipFinished( LOOTToastFrameBackground, {} )

				ToastBonusOutline:completeAnimation()
				self.ToastBonusOutline:setLeftRight( true, false, 0, 300 )
				self.ToastBonusOutline:setTopBottom( true, false, -77, 73 )
				self.ToastBonusOutline:setAlpha( 0 )
				self.clipFinished( ToastBonusOutline, {} )

				EmblemDecal:completeAnimation()
				self.EmblemDecal:setLeftRight( true, false, 118, 191 )
				self.EmblemDecal:setTopBottom( true, false, -56.5, 16.5 )
				self.EmblemDecal:setAlpha( 0 )
				self.clipFinished( EmblemDecal, {} )

				FrameBackground:completeAnimation()
				self.FrameBackground:setAlpha( 0 )
				self.clipFinished( FrameBackground, {} )

				ContentIcon:completeAnimation()
				self.ContentIcon:setLeftRight( true, false, 118, 191 )
				self.ContentIcon:setTopBottom( true, false, -56.25, 16.5 )
				self.ContentIcon:setAlpha( 1 )
				self.clipFinished( ContentIcon, {} )

				FunctionIcon:completeAnimation()
				self.FunctionIcon:setAlpha( 0 )
				self.clipFinished( FunctionIcon, {} )

				Kicker:completeAnimation()
				self.Kicker:setLeftRight( true, false, 3, 303.5 )
				self.Kicker:setTopBottom( true, false, 16.5, 43.5 )
				self.Kicker:setRGB( 1, 1, 1 )
				self.Kicker:setAlpha( 1 )
				self.Kicker:setScale( 1.1 )
				self.Kicker:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
				self.clipFinished( Kicker, {} )

				ToastHeaderWidget:completeAnimation()
				self.ToastHeaderWidget:setLeftRight( true, false, 3, 302 )
				self.ToastHeaderWidget:setTopBottom( true, false, 19, 53 )
				self.ToastHeaderWidget:setRGB( 1, 1, 1 )
				self.ToastHeaderWidget:setAlpha( 0 )
				self.clipFinished( ToastHeaderWidget, {} )

				Description:completeAnimation()
				self.Description:setLeftRight( true, false, 3, 303 )
				self.Description:setTopBottom( true, false, 39, 62 )
				self.Description:setRGB( 0.6, 0.91, 0.84 )
				self.Description:setAlpha( 1 )
				self.Description:setScale( 0.9 )
				self.clipFinished( Description, {} )

				CallingCardsFrameWidget:completeAnimation()
				self.CallingCardsFrameWidget:setAlpha( 0 )
				self.clipFinished( CallingCardsFrameWidget, {} )
			end
		}
	}

	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.BlackFrame:close()
		element.LOOTToastFrameBackground:close()
		element.ToastBonusOutline:close()
		element.FrameBackground:close()
		element.ToastHeaderWidget:close()
		element.CallingCardsFrameWidget:close()
		element.FETitleNumBrdr0:close()
	end )
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
