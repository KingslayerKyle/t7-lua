-- 2a465e9574bfa8b791b1092cd5a4bb27
-- This hash is used for caching, delete to decompile the file again

require( "ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle" )
require( "ui.uieditor.widgets.HelperWidgets.TextWithBg" )
require( "ui.uieditor.widgets.FileShare.FileshareBookmarkedItem" )
require( "ui.uieditor.widgets.Theater.Theater_TextLable" )
require( "ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG" )
require( "ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer" )

CoD.FileshareSelectorItemLarge = InheritFrom( LUI.UIElement )
CoD.FileshareSelectorItemLarge.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.FileshareSelectorItemLarge )
	self.id = "FileshareSelectorItemLarge"
	self.soundSet = "default"
	self:setLeftRight( true, false, 0, 235 )
	self:setTopBottom( true, false, 0, 235 )
	self:makeFocusable()
	self:setHandleMouse( true )
	self.anyChildUsesUpdateState = true
	
	local sizeElement = LUI.UIImage.new()
	sizeElement:setLeftRight( true, false, 0, 230 )
	sizeElement:setTopBottom( true, false, 0, 159 )
	sizeElement:setAlpha( 0 )
	self:addElement( sizeElement )
	self.sizeElement = sizeElement
	
	local WCFileshareIconExtraCamRender0 = LUI.UIImage.new()
	WCFileshareIconExtraCamRender0:setLeftRight( true, false, 0.5, 244.5 )
	WCFileshareIconExtraCamRender0:setTopBottom( false, true, -234.5, -97.5 )
	self:addElement( WCFileshareIconExtraCamRender0 )
	self.WCFileshareIconExtraCamRender0 = WCFileshareIconExtraCamRender0
	
	local BoxButtonLrgIdle = CoD.cac_ButtonBoxLrgIdle.new( menu, controller )
	BoxButtonLrgIdle:setLeftRight( true, true, -1, 1 )
	BoxButtonLrgIdle:setTopBottom( true, true, -2, -25 )
	BoxButtonLrgIdle:setAlpha( 0.24 )
	self:addElement( BoxButtonLrgIdle )
	self.BoxButtonLrgIdle = BoxButtonLrgIdle
	
	local MapImage = LUI.UIImage.new()
	MapImage:setLeftRight( true, true, 0, 0 )
	MapImage:setTopBottom( true, true, 0, -25 )
	MapImage:setAlpha( 0 )
	self:addElement( MapImage )
	self.MapImage = MapImage
	
	local Thumbnail = LUI.UIElement.new()
	Thumbnail:setLeftRight( true, true, 0, 0 )
	Thumbnail:setTopBottom( true, true, 0, 0 )
	Thumbnail:linkToElementModel( self, "fileId", true, function ( model )
		local fileId = Engine.GetModelValue( model )
		if fileId then
			Thumbnail:setupImageViewer( GetImageViewerParams( "UI_SCREENSHOT_TYPE_THUMBNAIL", fileId ) )
		end
	end )
	self:addElement( Thumbnail )
	self.Thumbnail = Thumbnail
	
	local GameTypeImage = LUI.UIImage.new()
	GameTypeImage:setLeftRight( false, false, -54.5, 61.5 )
	GameTypeImage:setTopBottom( false, false, -71.75, 44.25 )
	self:addElement( GameTypeImage )
	self.GameTypeImage = GameTypeImage
	
	local BarBg = LUI.UIImage.new()
	BarBg:setLeftRight( true, true, 0, 0 )
	BarBg:setTopBottom( false, true, -25, 0 )
	BarBg:setRGB( 0, 0, 0 )
	BarBg:setAlpha( 0.8 )
	self:addElement( BarBg )
	self.BarBg = BarBg
	
	local CategoryImage = LUI.UIImage.new()
	CategoryImage:setLeftRight( true, false, 3, 20.5 )
	CategoryImage:setTopBottom( false, true, -22, -4 )
	CategoryImage:linkToElementModel( self, "fileCategory", true, function ( model )
		local fileCategory = Engine.GetModelValue( model )
		if fileCategory then
			CategoryImage:setImage( RegisterImage( FileshareGetCategoryIcon( fileCategory ) ) )
		end
	end )
	self:addElement( CategoryImage )
	self.CategoryImage = CategoryImage
	
	local TimeText = LUI.UIText.new()
	TimeText:setLeftRight( true, false, 23.88, 225 )
	TimeText:setTopBottom( false, true, -22.5, -4.5 )
	TimeText:setTTF( "fonts/default.ttf" )
	TimeText:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT )
	TimeText:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	self:addElement( TimeText )
	self.TimeText = TimeText
	
	local Duration = CoD.TextWithBg.new( menu, controller )
	Duration:setLeftRight( false, true, -44.5, 2 )
	Duration:setTopBottom( true, false, -0.25, 19.75 )
	Duration:setScale( 0.9 )
	Duration.Bg:setAlpha( 0.6 )
	Duration.Text:setTTF( "fonts/RefrigeratorDeluxe-Regular.ttf" )
	Duration.Text:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	self:addElement( Duration )
	self.Duration = Duration
	
	local BookmarkedItem = CoD.FileshareBookmarkedItem.new( menu, controller )
	BookmarkedItem:setLeftRight( true, false, 0, 133 )
	BookmarkedItem:setTopBottom( true, false, 0, 30 )
	BookmarkedItem:setAlpha( 0 )
	BookmarkedItem:linkToElementModel( self, nil, false, function ( model )
		BookmarkedItem:setModel( model, controller )
	end )
	BookmarkedItem:mergeStateConditions( {
		{
			stateName = "IconOnly",
			condition = function ( menu, element, event )
				return IsSelfModelValueTrue( element, controller, "isBookmarked" )
			end
		},
		{
			stateName = "IconWithText",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} )
	BookmarkedItem:linkToElementModel( BookmarkedItem, "isBookmarked", true, function ( model )
		menu:updateElementState( BookmarkedItem, {
			name = "model_validation",
			menu = menu,
			modelValue = Engine.GetModelValue( model ),
			modelName = "isBookmarked"
		} )
	end )
	self:addElement( BookmarkedItem )
	self.BookmarkedItem = BookmarkedItem
	
	local LabelButton = CoD.Theater_TextLable.new( menu, controller )
	LabelButton:setLeftRight( true, false, 1, 225 )
	LabelButton:setTopBottom( false, true, -46, -25 )
	LabelButton.itemName:setRGB( 0.99, 0.99, 0.99 )
	LabelButton.itemName:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_LEFT )
	self:addElement( LabelButton )
	self.LabelButton = LabelButton
	
	local StartMenuframenoBG0 = CoD.StartMenu_frame_noBG.new( menu, controller )
	StartMenuframenoBG0:setLeftRight( true, true, -2, 2 )
	StartMenuframenoBG0:setTopBottom( true, true, -2, 2 )
	self:addElement( StartMenuframenoBG0 )
	self.StartMenuframenoBG0 = StartMenuframenoBG0
	
	local FocusBarB = CoD.FE_FocusBarContainer.new( menu, controller )
	FocusBarB:setLeftRight( true, true, -2, 2 )
	FocusBarB:setTopBottom( false, true, -2, 2 )
	FocusBarB:setAlpha( 0 )
	FocusBarB:setZoom( 1 )
	self:addElement( FocusBarB )
	self.FocusBarB = FocusBarB
	
	local FocusBarT = CoD.FE_FocusBarContainer.new( menu, controller )
	FocusBarT:setLeftRight( true, true, -2, 2 )
	FocusBarT:setTopBottom( true, false, -3, 1 )
	FocusBarT:setAlpha( 0 )
	FocusBarT:setZoom( 1 )
	self:addElement( FocusBarT )
	self.FocusBarT = FocusBarT
	
	local ErrorImage = LUI.UIImage.new()
	ErrorImage:setLeftRight( true, false, 81.88, 163.13 )
	ErrorImage:setTopBottom( true, false, 71.25, 136.25 )
	ErrorImage:setAlpha( 0 )
	ErrorImage:setImage( RegisterImage( "uie_t7_icon_pregame_warning" ) )
	self:addElement( ErrorImage )
	self.ErrorImage = ErrorImage
	
	self.WCFileshareIconExtraCamRender0:linkToElementModel( self, "showFileImage", true, function ( model )
		local showFileImage = Engine.GetModelValue( model )
		if showFileImage then
			WCFileshareIconExtraCamRender0:setAlpha( showFileImage )
		end
	end )
	self.WCFileshareIconExtraCamRender0:linkToElementModel( self, "renderFileId", true, function ( model )
		local renderFileId = Engine.GetModelValue( model )
		if renderFileId then
			WCFileshareIconExtraCamRender0:setupWCFileshareIconExtraCamRender( GetFileshareExtraCamParameters( controller, renderFileId ) )
		end
	end )
	self.MapImage:linkToElementModel( self, "mapName", true, function ( model )
		local mapName = Engine.GetModelValue( model )
		if mapName then
			MapImage:setImage( RegisterImage( MapNameToMapImage( mapName ) ) )
		end
	end )
	self.GameTypeImage:linkToElementModel( self, "showGameTypeImage", true, function ( model )
		local showGameTypeImage = Engine.GetModelValue( model )
		if showGameTypeImage then
			GameTypeImage:setAlpha( showGameTypeImage )
		end
	end )
	self.GameTypeImage:linkToElementModel( self, "gameTypeImage", true, function ( model )
		local gameTypeImage = Engine.GetModelValue( model )
		if gameTypeImage then
			GameTypeImage:setImage( RegisterImage( gameTypeImage ) )
		end
	end )
	self.TimeText:linkToElementModel( self, "fileCreateTime", true, function ( model )
		local fileCreateTime = Engine.GetModelValue( model )
		if fileCreateTime then
			TimeText:setText( Engine.Localize( fileCreateTime ) )
		end
	end )
	self.Duration:linkToElementModel( self, "duration", true, function ( model )
		local duration = Engine.GetModelValue( model )
		if duration then
			Duration.Text:setText( Engine.Localize( FileshareGetDurationString( duration ) ) )
		end
	end )
	self.LabelButton:linkToElementModel( self, "fileName", true, function ( model )
		local fileName = Engine.GetModelValue( model )
		if fileName then
			LabelButton.itemName:setText( fileName )
		end
	end )
	self.clipsPerState = {
		DefaultState = {
			DefaultClip = function ()
				self:setupElementClipCounter( 11 )

				sizeElement:completeAnimation()
				self.sizeElement:setLeftRight( true, false, 0, 245 )
				self.sizeElement:setTopBottom( true, false, 2, 234 )
				self.clipFinished( sizeElement, {} )

				WCFileshareIconExtraCamRender0:completeAnimation()
				self.WCFileshareIconExtraCamRender0:setLeftRight( true, false, 1, 244 )
				self.WCFileshareIconExtraCamRender0:setTopBottom( false, true, -233, -25 )
				self.clipFinished( WCFileshareIconExtraCamRender0, {} )

				MapImage:completeAnimation()
				self.MapImage:setAlpha( 0 )
				self.clipFinished( MapImage, {} )

				Thumbnail:completeAnimation()
				self.Thumbnail:setAlpha( 0 )
				self.clipFinished( Thumbnail, {} )

				GameTypeImage:completeAnimation()
				self.clipFinished( GameTypeImage, {} )

				CategoryImage:completeAnimation()
				self.CategoryImage:setAlpha( 1 )
				self.clipFinished( CategoryImage, {} )

				Duration:completeAnimation()
				self.Duration:setAlpha( 0 )
				self.clipFinished( Duration, {} )

				BookmarkedItem:completeAnimation()
				self.BookmarkedItem:setAlpha( 0 )
				self.clipFinished( BookmarkedItem, {} )

				LabelButton:completeAnimation()
				self.LabelButton:setAlpha( 1 )
				self.clipFinished( LabelButton, {} )

				StartMenuframenoBG0:completeAnimation()
				self.StartMenuframenoBG0:setAlpha( 1 )
				self.clipFinished( StartMenuframenoBG0, {} )

				ErrorImage:completeAnimation()
				self.ErrorImage:setLeftRight( true, false, 81.88, 163.13 )
				self.ErrorImage:setTopBottom( true, false, 71.25, 136.5 )
				self.ErrorImage:setAlpha( 0 )
				self.clipFinished( ErrorImage, {} )
			end,
			LoseFocus = function ()
				self:setupElementClipCounter( 6 )

				sizeElement:completeAnimation()
				self.sizeElement:setLeftRight( true, false, 0, 245 )
				self.sizeElement:setTopBottom( true, false, 2, 234 )
				self.clipFinished( sizeElement, {} )

				WCFileshareIconExtraCamRender0:completeAnimation()
				self.WCFileshareIconExtraCamRender0:setLeftRight( true, false, 1, 244 )
				self.WCFileshareIconExtraCamRender0:setTopBottom( false, true, -233, -25 )
				self.clipFinished( WCFileshareIconExtraCamRender0, {} )

				LabelButton:completeAnimation()
				self.LabelButton:setAlpha( 1 )
				self.clipFinished( LabelButton, {} )

				StartMenuframenoBG0:completeAnimation()
				self.StartMenuframenoBG0:setAlpha( 1 )
				self.clipFinished( StartMenuframenoBG0, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )
			end,
			GainFocus = function ()
				self:setupElementClipCounter( 6 )

				sizeElement:completeAnimation()
				self.sizeElement:setLeftRight( true, false, 0, 245 )
				self.sizeElement:setTopBottom( true, false, 2, 234 )
				self.clipFinished( sizeElement, {} )

				WCFileshareIconExtraCamRender0:completeAnimation()
				self.WCFileshareIconExtraCamRender0:setLeftRight( true, false, 1, 244 )
				self.WCFileshareIconExtraCamRender0:setTopBottom( false, true, -233, -25 )
				self.clipFinished( WCFileshareIconExtraCamRender0, {} )

				LabelButton:completeAnimation()
				self.LabelButton:setAlpha( 1 )
				self.clipFinished( LabelButton, {} )

				StartMenuframenoBG0:completeAnimation()
				self.StartMenuframenoBG0:setAlpha( 1 )
				self.clipFinished( StartMenuframenoBG0, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 6 )

				sizeElement:completeAnimation()
				self.sizeElement:setLeftRight( true, false, 0, 245 )
				self.sizeElement:setTopBottom( true, false, 2, 234 )
				self.clipFinished( sizeElement, {} )

				WCFileshareIconExtraCamRender0:completeAnimation()
				self.WCFileshareIconExtraCamRender0:setLeftRight( true, false, 1, 244 )
				self.WCFileshareIconExtraCamRender0:setTopBottom( false, true, -233, -25 )
				self.clipFinished( WCFileshareIconExtraCamRender0, {} )

				LabelButton:completeAnimation()
				self.LabelButton:setAlpha( 1 )
				self.clipFinished( LabelButton, {} )

				StartMenuframenoBG0:completeAnimation()
				self.StartMenuframenoBG0:setAlpha( 1 )
				self.clipFinished( StartMenuframenoBG0, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setLeftRight( true, true, -2, 2 )
				self.FocusBarT:setTopBottom( true, false, -4, 0 )
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )
			end
		},
		InvalidNormal = {
			DefaultClip = function ()
				self:setupElementClipCounter( 11 )

				sizeElement:completeAnimation()
				self.sizeElement:setLeftRight( true, false, 0, 245 )
				self.sizeElement:setTopBottom( true, false, 2, 234 )
				self.clipFinished( sizeElement, {} )

				WCFileshareIconExtraCamRender0:completeAnimation()
				self.WCFileshareIconExtraCamRender0:setLeftRight( true, false, 1, 244 )
				self.WCFileshareIconExtraCamRender0:setTopBottom( false, true, -233, -25 )
				self.clipFinished( WCFileshareIconExtraCamRender0, {} )

				MapImage:completeAnimation()
				self.MapImage:setAlpha( 0 )
				self.clipFinished( MapImage, {} )

				Thumbnail:completeAnimation()
				self.Thumbnail:setAlpha( 0 )
				self.clipFinished( Thumbnail, {} )

				GameTypeImage:completeAnimation()
				self.clipFinished( GameTypeImage, {} )

				CategoryImage:completeAnimation()
				self.CategoryImage:setAlpha( 0 )
				self.clipFinished( CategoryImage, {} )

				Duration:completeAnimation()
				self.Duration:setAlpha( 0 )
				self.clipFinished( Duration, {} )

				BookmarkedItem:completeAnimation()
				self.BookmarkedItem:setAlpha( 0 )
				self.clipFinished( BookmarkedItem, {} )

				LabelButton:completeAnimation()
				self.LabelButton:setAlpha( 1 )
				self.clipFinished( LabelButton, {} )

				StartMenuframenoBG0:completeAnimation()
				self.StartMenuframenoBG0:setAlpha( 1 )
				self.clipFinished( StartMenuframenoBG0, {} )

				ErrorImage:completeAnimation()
				self.ErrorImage:setLeftRight( true, false, 81.88, 163.13 )
				self.ErrorImage:setTopBottom( true, false, 71.25, 136.25 )
				self.ErrorImage:setAlpha( 1 )
				self.clipFinished( ErrorImage, {} )
			end,
			LoseFocus = function ()
				self:setupElementClipCounter( 5 )

				sizeElement:completeAnimation()
				self.sizeElement:setLeftRight( true, false, 0, 245 )
				self.sizeElement:setTopBottom( true, false, 2, 234 )
				self.clipFinished( sizeElement, {} )

				WCFileshareIconExtraCamRender0:completeAnimation()
				self.WCFileshareIconExtraCamRender0:setLeftRight( true, false, 1, 244 )
				self.WCFileshareIconExtraCamRender0:setTopBottom( false, true, -233, -25 )
				self.clipFinished( WCFileshareIconExtraCamRender0, {} )

				StartMenuframenoBG0:completeAnimation()
				self.StartMenuframenoBG0:setAlpha( 1 )
				self.clipFinished( StartMenuframenoBG0, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )
			end,
			GainFocus = function ()
				self:setupElementClipCounter( 5 )

				sizeElement:completeAnimation()
				self.sizeElement:setLeftRight( true, false, 0, 245 )
				self.sizeElement:setTopBottom( true, false, 2, 234 )
				self.clipFinished( sizeElement, {} )

				WCFileshareIconExtraCamRender0:completeAnimation()
				self.WCFileshareIconExtraCamRender0:setLeftRight( true, false, 1, 244 )
				self.WCFileshareIconExtraCamRender0:setTopBottom( false, true, -233, -25 )
				self.clipFinished( WCFileshareIconExtraCamRender0, {} )

				StartMenuframenoBG0:completeAnimation()
				self.StartMenuframenoBG0:setAlpha( 1 )
				self.clipFinished( StartMenuframenoBG0, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 5 )

				sizeElement:completeAnimation()
				self.sizeElement:setLeftRight( true, false, 0, 245 )
				self.sizeElement:setTopBottom( true, false, 2, 234 )
				self.clipFinished( sizeElement, {} )

				WCFileshareIconExtraCamRender0:completeAnimation()
				self.WCFileshareIconExtraCamRender0:setLeftRight( true, false, 1, 244 )
				self.WCFileshareIconExtraCamRender0:setTopBottom( false, true, -233, -25 )
				self.clipFinished( WCFileshareIconExtraCamRender0, {} )

				StartMenuframenoBG0:completeAnimation()
				self.StartMenuframenoBG0:setAlpha( 1 )
				self.clipFinished( StartMenuframenoBG0, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setLeftRight( true, true, -2, 2 )
				self.FocusBarT:setTopBottom( true, false, -4, 0 )
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )
			end
		},
		InvalidShort = {
			DefaultClip = function ()
				self:setupElementClipCounter( 7 )

				sizeElement:completeAnimation()
				self.sizeElement:setLeftRight( true, false, 0, 245 )
				self.sizeElement:setTopBottom( true, false, 85, 236 )
				self.clipFinished( sizeElement, {} )

				WCFileshareIconExtraCamRender0:completeAnimation()
				self.WCFileshareIconExtraCamRender0:setLeftRight( true, false, 0, 245 )
				self.WCFileshareIconExtraCamRender0:setTopBottom( false, true, -151, 0 )
				self.clipFinished( WCFileshareIconExtraCamRender0, {} )

				MapImage:completeAnimation()
				self.MapImage:setAlpha( 0 )
				self.clipFinished( MapImage, {} )

				Thumbnail:completeAnimation()
				self.Thumbnail:setAlpha( 0 )
				self.clipFinished( Thumbnail, {} )

				CategoryImage:completeAnimation()
				self.CategoryImage:setAlpha( 0 )
				self.clipFinished( CategoryImage, {} )

				LabelButton:completeAnimation()
				self.LabelButton:setAlpha( 1 )
				self.clipFinished( LabelButton, {} )

				ErrorImage:completeAnimation()
				self.ErrorImage:setAlpha( 1 )
				self.clipFinished( ErrorImage, {} )
			end
		},
		Short = {
			DefaultClip = function ()
				self:setupElementClipCounter( 10 )

				sizeElement:completeAnimation()
				self.sizeElement:setLeftRight( true, false, 0, 245 )
				self.sizeElement:setTopBottom( true, false, 85, 236 )
				self.clipFinished( sizeElement, {} )

				WCFileshareIconExtraCamRender0:completeAnimation()
				self.WCFileshareIconExtraCamRender0:setLeftRight( true, false, 0, 245 )
				self.WCFileshareIconExtraCamRender0:setTopBottom( false, true, -151, 0 )
				self.clipFinished( WCFileshareIconExtraCamRender0, {} )

				MapImage:completeAnimation()
				self.MapImage:setAlpha( 0 )
				self.clipFinished( MapImage, {} )

				Thumbnail:completeAnimation()
				self.Thumbnail:setAlpha( 0 )
				self.clipFinished( Thumbnail, {} )

				GameTypeImage:completeAnimation()
				self.clipFinished( GameTypeImage, {} )

				CategoryImage:completeAnimation()
				self.CategoryImage:setAlpha( 1 )
				self.clipFinished( CategoryImage, {} )

				Duration:completeAnimation()
				self.Duration:setAlpha( 0 )
				self.clipFinished( Duration, {} )

				LabelButton:completeAnimation()
				self.LabelButton:setAlpha( 1 )
				self.clipFinished( LabelButton, {} )

				StartMenuframenoBG0:completeAnimation()
				self.StartMenuframenoBG0:setAlpha( 1 )
				self.clipFinished( StartMenuframenoBG0, {} )

				ErrorImage:completeAnimation()
				self.ErrorImage:setAlpha( 0 )
				self.clipFinished( ErrorImage, {} )
			end,
			GainFocus = function ()
				self:setupElementClipCounter( 7 )

				sizeElement:completeAnimation()
				self.sizeElement:setLeftRight( true, false, 0, 245 )
				self.sizeElement:setTopBottom( true, false, 85, 236 )
				self.clipFinished( sizeElement, {} )

				WCFileshareIconExtraCamRender0:completeAnimation()
				self.WCFileshareIconExtraCamRender0:setLeftRight( true, false, 0, 245 )
				self.WCFileshareIconExtraCamRender0:setTopBottom( false, true, -151, 0 )
				self.clipFinished( WCFileshareIconExtraCamRender0, {} )

				Duration:completeAnimation()
				self.Duration:setAlpha( 0 )
				self.clipFinished( Duration, {} )

				LabelButton:completeAnimation()
				self.LabelButton:setAlpha( 1 )
				self.clipFinished( LabelButton, {} )

				StartMenuframenoBG0:completeAnimation()
				self.StartMenuframenoBG0:setAlpha( 1 )
				self.clipFinished( StartMenuframenoBG0, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 7 )

				sizeElement:completeAnimation()
				self.sizeElement:setLeftRight( true, false, 0, 245 )
				self.sizeElement:setTopBottom( true, false, 85, 236 )
				self.clipFinished( sizeElement, {} )

				WCFileshareIconExtraCamRender0:completeAnimation()
				self.WCFileshareIconExtraCamRender0:setLeftRight( true, false, 0, 245 )
				self.WCFileshareIconExtraCamRender0:setTopBottom( false, true, -151, 0 )
				self.clipFinished( WCFileshareIconExtraCamRender0, {} )

				Duration:completeAnimation()
				self.Duration:setAlpha( 0 )
				self.clipFinished( Duration, {} )

				LabelButton:completeAnimation()
				self.LabelButton:setAlpha( 1 )
				self.clipFinished( LabelButton, {} )

				StartMenuframenoBG0:completeAnimation()
				self.StartMenuframenoBG0:setAlpha( 1 )
				self.clipFinished( StartMenuframenoBG0, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )
			end,
			LoseFocus = function ()
				self:setupElementClipCounter( 7 )

				sizeElement:completeAnimation()
				self.sizeElement:setLeftRight( true, false, 0, 245 )
				self.sizeElement:setTopBottom( true, false, 85, 236 )
				self.clipFinished( sizeElement, {} )

				WCFileshareIconExtraCamRender0:completeAnimation()
				self.WCFileshareIconExtraCamRender0:setLeftRight( true, false, 0, 245 )
				self.WCFileshareIconExtraCamRender0:setTopBottom( false, true, -151, 0 )
				self.clipFinished( WCFileshareIconExtraCamRender0, {} )

				Duration:completeAnimation()
				self.Duration:setAlpha( 0 )
				self.clipFinished( Duration, {} )

				LabelButton:completeAnimation()
				self.LabelButton:setAlpha( 1 )
				self.clipFinished( LabelButton, {} )

				StartMenuframenoBG0:completeAnimation()
				self.StartMenuframenoBG0:setAlpha( 1 )
				self.clipFinished( StartMenuframenoBG0, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )
			end
		},
		Film = {
			DefaultClip = function ()
				self:setupElementClipCounter( 11 )

				sizeElement:completeAnimation()
				self.sizeElement:setLeftRight( true, false, 0, 245 )
				self.sizeElement:setTopBottom( true, false, 97, 237 )
				self.clipFinished( sizeElement, {} )

				WCFileshareIconExtraCamRender0:completeAnimation()
				self.WCFileshareIconExtraCamRender0:setLeftRight( true, false, 1, 244 )
				self.WCFileshareIconExtraCamRender0:setTopBottom( false, true, -137, -1 )
				self.clipFinished( WCFileshareIconExtraCamRender0, {} )

				MapImage:completeAnimation()
				self.MapImage:setLeftRight( true, true, 0, 0 )
				self.MapImage:setTopBottom( true, true, 0, -25 )
				self.MapImage:setAlpha( 1 )
				self.clipFinished( MapImage, {} )

				Thumbnail:completeAnimation()
				self.Thumbnail:setAlpha( 0 )
				self.clipFinished( Thumbnail, {} )

				GameTypeImage:completeAnimation()
				self.GameTypeImage:setLeftRight( false, false, -54.5, 61.5 )
				self.GameTypeImage:setTopBottom( false, false, -71.75, 44.25 )
				self.clipFinished( GameTypeImage, {} )

				CategoryImage:completeAnimation()
				self.CategoryImage:setAlpha( 1 )
				self.clipFinished( CategoryImage, {} )

				Duration:completeAnimation()
				self.Duration:setAlpha( 1 )
				self.clipFinished( Duration, {} )

				BookmarkedItem:completeAnimation()
				self.BookmarkedItem:setAlpha( 1 )
				self.clipFinished( BookmarkedItem, {} )

				LabelButton:completeAnimation()
				self.LabelButton:setAlpha( 1 )
				self.clipFinished( LabelButton, {} )

				StartMenuframenoBG0:completeAnimation()
				self.StartMenuframenoBG0:setAlpha( 1 )
				self.clipFinished( StartMenuframenoBG0, {} )

				ErrorImage:completeAnimation()
				self.ErrorImage:setAlpha( 0 )
				self.clipFinished( ErrorImage, {} )
			end,
			GainFocus = function ()
				self:setupElementClipCounter( 9 )

				sizeElement:completeAnimation()
				self.sizeElement:setLeftRight( true, false, 0, 245 )
				self.sizeElement:setTopBottom( true, false, 97, 237 )
				self.clipFinished( sizeElement, {} )

				WCFileshareIconExtraCamRender0:completeAnimation()
				self.WCFileshareIconExtraCamRender0:setLeftRight( true, false, 1, 244 )
				self.WCFileshareIconExtraCamRender0:setTopBottom( false, true, -137, -1 )
				self.clipFinished( WCFileshareIconExtraCamRender0, {} )

				MapImage:completeAnimation()
				self.MapImage:setAlpha( 1 )
				self.clipFinished( MapImage, {} )

				GameTypeImage:completeAnimation()
				self.GameTypeImage:setLeftRight( false, false, -54.5, 61.5 )
				self.GameTypeImage:setTopBottom( false, false, -71.75, 44.25 )
				self.clipFinished( GameTypeImage, {} )

				Duration:completeAnimation()
				self.Duration:setAlpha( 1 )
				self.clipFinished( Duration, {} )

				BookmarkedItem:completeAnimation()
				self.BookmarkedItem:setAlpha( 1 )
				self.clipFinished( BookmarkedItem, {} )

				LabelButton:completeAnimation()
				self.LabelButton:setAlpha( 1 )
				self.clipFinished( LabelButton, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 9 )

				sizeElement:completeAnimation()
				self.sizeElement:setLeftRight( true, false, 0, 245 )
				self.sizeElement:setTopBottom( true, false, 97, 237 )
				self.clipFinished( sizeElement, {} )

				WCFileshareIconExtraCamRender0:completeAnimation()
				self.WCFileshareIconExtraCamRender0:setLeftRight( true, false, 0, 244 )
				self.WCFileshareIconExtraCamRender0:setTopBottom( false, true, -137, -1 )
				self.clipFinished( WCFileshareIconExtraCamRender0, {} )

				MapImage:completeAnimation()
				self.MapImage:setAlpha( 1 )
				self.clipFinished( MapImage, {} )

				GameTypeImage:completeAnimation()
				self.GameTypeImage:setLeftRight( false, false, -54.5, 61.5 )
				self.GameTypeImage:setTopBottom( false, false, -71.75, 44.25 )
				self.clipFinished( GameTypeImage, {} )

				Duration:completeAnimation()
				self.Duration:setAlpha( 1 )
				self.clipFinished( Duration, {} )

				BookmarkedItem:completeAnimation()
				self.BookmarkedItem:setAlpha( 1 )
				self.clipFinished( BookmarkedItem, {} )

				StartMenuframenoBG0:completeAnimation()
				self.StartMenuframenoBG0:setAlpha( 1 )
				self.clipFinished( StartMenuframenoBG0, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )
			end,
			LoseFocus = function ()
				self:setupElementClipCounter( 8 )

				sizeElement:completeAnimation()
				self.sizeElement:setLeftRight( true, false, 0, 245 )
				self.sizeElement:setTopBottom( true, false, 97, 237 )
				self.clipFinished( sizeElement, {} )

				WCFileshareIconExtraCamRender0:completeAnimation()
				self.WCFileshareIconExtraCamRender0:setLeftRight( true, false, 1, 244 )
				self.WCFileshareIconExtraCamRender0:setTopBottom( false, true, -137, -1 )
				self.clipFinished( WCFileshareIconExtraCamRender0, {} )

				MapImage:completeAnimation()
				self.MapImage:setAlpha( 1 )
				self.clipFinished( MapImage, {} )

				GameTypeImage:completeAnimation()
				self.GameTypeImage:setLeftRight( false, false, -54.5, 61.5 )
				self.GameTypeImage:setTopBottom( false, false, -71.75, 44.25 )
				self.clipFinished( GameTypeImage, {} )

				Duration:completeAnimation()
				self.Duration:setAlpha( 1 )
				self.clipFinished( Duration, {} )

				BookmarkedItem:completeAnimation()
				self.BookmarkedItem:setAlpha( 1 )
				self.clipFinished( BookmarkedItem, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )
			end
		},
		Clip = {
			DefaultClip = function ()
				self:setupElementClipCounter( 12 )

				sizeElement:completeAnimation()
				self.sizeElement:setLeftRight( true, false, 0, 245 )
				self.sizeElement:setTopBottom( true, false, 97, 237 )
				self.clipFinished( sizeElement, {} )

				WCFileshareIconExtraCamRender0:completeAnimation()
				self.WCFileshareIconExtraCamRender0:setLeftRight( true, false, 0, 244 )
				self.WCFileshareIconExtraCamRender0:setTopBottom( false, true, -137, -1 )
				self.clipFinished( WCFileshareIconExtraCamRender0, {} )

				MapImage:completeAnimation()
				self.MapImage:setLeftRight( true, true, 0, 0 )
				self.MapImage:setTopBottom( true, true, 0, -25 )
				self.MapImage:setAlpha( 0 )
				self.clipFinished( MapImage, {} )

				Thumbnail:completeAnimation()
				self.Thumbnail:setAlpha( 1 )
				self.clipFinished( Thumbnail, {} )

				GameTypeImage:completeAnimation()
				self.GameTypeImage:setLeftRight( false, false, -54.5, 61.5 )
				self.GameTypeImage:setTopBottom( false, false, -71.75, 44.25 )
				self.clipFinished( GameTypeImage, {} )

				CategoryImage:completeAnimation()
				self.CategoryImage:setAlpha( 1 )
				self.clipFinished( CategoryImage, {} )

				TimeText:completeAnimation()
				self.TimeText:setLeftRight( true, false, 23.88, 228.13 )
				self.TimeText:setTopBottom( false, true, -22.5, -4.5 )
				self.clipFinished( TimeText, {} )

				Duration:completeAnimation()
				self.Duration:setAlpha( 1 )
				self.clipFinished( Duration, {} )

				BookmarkedItem:completeAnimation()
				self.BookmarkedItem:setAlpha( 0 )
				self.clipFinished( BookmarkedItem, {} )

				LabelButton:completeAnimation()
				self.LabelButton:setAlpha( 1 )
				self.clipFinished( LabelButton, {} )

				StartMenuframenoBG0:completeAnimation()
				self.StartMenuframenoBG0:setAlpha( 1 )
				self.clipFinished( StartMenuframenoBG0, {} )

				ErrorImage:completeAnimation()
				self.ErrorImage:setAlpha( 0 )
				self.clipFinished( ErrorImage, {} )
			end,
			GainFocus = function ()
				self:setupElementClipCounter( 8 )

				sizeElement:completeAnimation()
				self.sizeElement:setLeftRight( true, false, 0, 245 )
				self.sizeElement:setTopBottom( true, false, 97, 237 )
				self.clipFinished( sizeElement, {} )

				WCFileshareIconExtraCamRender0:completeAnimation()
				self.WCFileshareIconExtraCamRender0:setLeftRight( true, false, 0, 244 )
				self.WCFileshareIconExtraCamRender0:setTopBottom( false, true, -137, -1 )
				self.clipFinished( WCFileshareIconExtraCamRender0, {} )

				GameTypeImage:completeAnimation()
				self.GameTypeImage:setLeftRight( false, false, -54.5, 61.5 )
				self.GameTypeImage:setTopBottom( false, false, -71.75, 44.25 )
				self.clipFinished( GameTypeImage, {} )

				Duration:completeAnimation()
				self.Duration:setAlpha( 1 )
				self.clipFinished( Duration, {} )

				BookmarkedItem:completeAnimation()
				self.BookmarkedItem:setAlpha( 1 )
				self.clipFinished( BookmarkedItem, {} )

				LabelButton:completeAnimation()
				self.LabelButton:setAlpha( 1 )
				self.clipFinished( LabelButton, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )
			end,
			Focus = function ()
				self:setupElementClipCounter( 8 )

				sizeElement:completeAnimation()
				self.sizeElement:setLeftRight( true, false, 0, 245 )
				self.sizeElement:setTopBottom( true, false, 97, 237 )
				self.clipFinished( sizeElement, {} )

				WCFileshareIconExtraCamRender0:completeAnimation()
				self.WCFileshareIconExtraCamRender0:setLeftRight( true, false, 0, 244 )
				self.WCFileshareIconExtraCamRender0:setTopBottom( false, true, -137, -1 )
				self.clipFinished( WCFileshareIconExtraCamRender0, {} )

				GameTypeImage:completeAnimation()
				self.GameTypeImage:setLeftRight( false, false, -54.5, 61.5 )
				self.GameTypeImage:setTopBottom( false, false, -71.75, 44.25 )
				self.clipFinished( GameTypeImage, {} )

				Duration:completeAnimation()
				self.Duration:setAlpha( 1 )
				self.clipFinished( Duration, {} )

				BookmarkedItem:completeAnimation()
				self.BookmarkedItem:setAlpha( 1 )
				self.clipFinished( BookmarkedItem, {} )

				StartMenuframenoBG0:completeAnimation()
				self.StartMenuframenoBG0:setAlpha( 1 )
				self.clipFinished( StartMenuframenoBG0, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 1 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 1 )
				self.clipFinished( FocusBarT, {} )
			end,
			LoseFocus = function ()
				self:setupElementClipCounter( 7 )

				sizeElement:completeAnimation()
				self.sizeElement:setLeftRight( true, false, 0, 245 )
				self.sizeElement:setTopBottom( true, false, 97, 237 )
				self.clipFinished( sizeElement, {} )

				WCFileshareIconExtraCamRender0:completeAnimation()
				self.WCFileshareIconExtraCamRender0:setLeftRight( true, false, 1, 244 )
				self.WCFileshareIconExtraCamRender0:setTopBottom( false, true, -137, -1 )
				self.clipFinished( WCFileshareIconExtraCamRender0, {} )

				GameTypeImage:completeAnimation()
				self.GameTypeImage:setLeftRight( false, false, -54.5, 61.5 )
				self.GameTypeImage:setTopBottom( false, false, -71.75, 44.25 )
				self.clipFinished( GameTypeImage, {} )

				Duration:completeAnimation()
				self.Duration:setAlpha( 1 )
				self.clipFinished( Duration, {} )

				BookmarkedItem:completeAnimation()
				self.BookmarkedItem:setAlpha( 1 )
				self.clipFinished( BookmarkedItem, {} )

				FocusBarB:completeAnimation()
				self.FocusBarB:setAlpha( 0 )
				self.clipFinished( FocusBarB, {} )

				FocusBarT:completeAnimation()
				self.FocusBarT:setAlpha( 0 )
				self.clipFinished( FocusBarT, {} )
			end
		}
	}

	self:mergeStateConditions( {
		{
			stateName = "InvalidNormal",
			condition = function ( menu, element, event )
				local f37_local0
				if not IsSelfModelValueTrue( element, controller, "isValid" ) then
					f37_local0 = FileshareShowNormalSizeIcons( element, controller )
				else
					f37_local0 = false
				end
				return f37_local0
			end
		},
		{
			stateName = "InvalidShort",
			condition = function ( menu, element, event )
				local f38_local0
				if not IsSelfModelValueTrue( element, controller, "isValid" ) then
					f38_local0 = not FileshareShowNormalSizeIcons( element, controller )
				else
					f38_local0 = false
				end
				return f38_local0
			end
		},
		{
			stateName = "Short",
			condition = function ( menu, element, event )
				local f39_local0
				if not FileshareShowNormalSizeIcons( element, controller ) and not IsFileshareCategoryFilm( self, element, controller ) then
					f39_local0 = not IsFileshareCategoryClip( self, element, controller )
				else
					f39_local0 = false
				end
				return f39_local0
			end
		},
		{
			stateName = "Film",
			condition = function ( menu, element, event )
				local f40_local0
				if not FileshareShowNormalSizeIcons( element, controller ) then
					f40_local0 = IsFileshareCategoryFilm( self, element, controller )
				else
					f40_local0 = false
				end
				return f40_local0
			end
		},
		{
			stateName = "Clip",
			condition = function ( menu, element, event )
				local f41_local0
				if not FileshareShowNormalSizeIcons( element, controller ) then
					f41_local0 = IsFileshareCategoryClip( self, element, controller )
				else
					f41_local0 = false
				end
				return f41_local0
			end
		}
	} )
	self:linkToElementModel( self, "isValid", true, function ( model )
		menu:updateElementState( self, {
			name = "model_validation",
			menu = menu,
			modelValue = Engine.GetModelValue( model ),
			modelName = "isValid"
		} )
	end )
	self:subscribeToModel( Engine.GetModel( Engine.GetGlobalModel(), "fileshareRoot.isNormalSize" ), function ( model )
		menu:updateElementState( self, {
			name = "model_validation",
			menu = menu,
			modelValue = Engine.GetModelValue( model ),
			modelName = "fileshareRoot.isNormalSize"
		} )
	end )

	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.BoxButtonLrgIdle:close()
		element.Duration:close()
		element.BookmarkedItem:close()
		element.LabelButton:close()
		element.StartMenuframenoBG0:close()
		element.FocusBarB:close()
		element.FocusBarT:close()
		element.WCFileshareIconExtraCamRender0:close()
		element.MapImage:close()
		element.Thumbnail:close()
		element.GameTypeImage:close()
		element.CategoryImage:close()
		element.TimeText:close()
	end )
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
