-- 38d39428df30936723acaa8dbef1aada
-- This hash is used for caching, delete to decompile the file again

require( "ui.uieditor.widgets.HUD.Outcome.Outcome_title_PnlUR" )
require( "ui.uieditor.widgets.HUD.Outcome.Outcome_title_PnlCenter" )
require( "ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel" )
require( "ui.uieditor.widgets.HUD.Outcome.Outcome_title_PnlLine" )

local PostLoadFunc = function ( self, controller, menu )
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller )
		local f2_local0 = nil
		local f2_local1 = {}
		if IsSelfInState( self, "VictoryGreen" ) then
			f2_local0 = CoD.GetColorBlindColorForPlayer( controller, "FriendlyBlue", f2_local1 )
		elseif IsSelfInState( self, "DefeatRed" ) then
			f2_local0 = CoD.GetColorBlindColorForPlayer( controller, "EnemyOrange", f2_local1 )
		end
		if f2_local0 ~= nil and f2_local1.setting ~= nil and f2_local1.setting ~= Enum.ColorVisionDeficiencies.CVD_OFF then
			local f2_local2 = {
				self.TopFrame,
				self.CornerFrameLL,
				self.CornerFrameUL,
				self.CornerFrameLR,
				self.CornerFrameUR,
				self.ColorBox,
				self.LineColorRight,
				self.LineColorLeft
			}
			for f2_local3 = 1, #f2_local2, 1 do
				f2_local2[f2_local3]:setRGB( f2_local0.r, f2_local0.g, f2_local0.b )
			end
		end
	end )
end

CoD.KillcamWidgetTitle = InheritFrom( LUI.UIElement )
CoD.KillcamWidgetTitle.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.KillcamWidgetTitle )
	self.id = "KillcamWidgetTitle"
	self.soundSet = "default"
	self:setLeftRight( true, false, 0, 702 )
	self:setTopBottom( true, false, 0, 55 )
	self.anyChildUsesUpdateState = true
	
	local OutcometitlePnlUR = CoD.Outcome_title_PnlUR.new( menu, controller )
	OutcometitlePnlUR:setLeftRight( false, true, -1, 27 )
	OutcometitlePnlUR:setTopBottom( true, false, 0, 27.5 )
	OutcometitlePnlUR:setRGB( 0.5, 0.5, 0.5 )
	OutcometitlePnlUR.OutcometitlePnlURInt:setShaderVector( 0, 10, 10, 0, 0 )
	self:addElement( OutcometitlePnlUR )
	self.OutcometitlePnlUR = OutcometitlePnlUR
	
	local OutcometitlePnlLR = CoD.Outcome_title_PnlUR.new( menu, controller )
	OutcometitlePnlLR:setLeftRight( false, true, -1, 27 )
	OutcometitlePnlLR:setTopBottom( false, true, -27.5, 0 )
	OutcometitlePnlLR:setRGB( 0.5, 0.5, 0.5 )
	OutcometitlePnlLR:setXRot( 180 )
	OutcometitlePnlLR.OutcometitlePnlURInt:setShaderVector( 0, 10, 10, 0, 0 )
	self:addElement( OutcometitlePnlLR )
	self.OutcometitlePnlLR = OutcometitlePnlLR
	
	local OutcometitlePnlUL = CoD.Outcome_title_PnlUR.new( menu, controller )
	OutcometitlePnlUL:setLeftRight( true, false, -26, 1.5 )
	OutcometitlePnlUL:setTopBottom( true, false, 0, 27.5 )
	OutcometitlePnlUL:setRGB( 0.5, 0.5, 0.5 )
	OutcometitlePnlUL:setYRot( 180 )
	OutcometitlePnlUL.OutcometitlePnlURInt:setShaderVector( 0, 10, 10, 0, 0 )
	self:addElement( OutcometitlePnlUL )
	self.OutcometitlePnlUL = OutcometitlePnlUL
	
	local OutcometitlePnlLL = CoD.Outcome_title_PnlUR.new( menu, controller )
	OutcometitlePnlLL:setLeftRight( true, false, -26, 1.5 )
	OutcometitlePnlLL:setTopBottom( false, true, -27.5, 0 )
	OutcometitlePnlLL:setRGB( 0.5, 0.5, 0.5 )
	OutcometitlePnlLL:setXRot( 180 )
	OutcometitlePnlLL:setYRot( 180 )
	OutcometitlePnlLL.OutcometitlePnlURInt:setShaderVector( 0, 10, 10, 0, 0 )
	self:addElement( OutcometitlePnlLL )
	self.OutcometitlePnlLL = OutcometitlePnlLL
	
	local OutcometitlePnlCenter = CoD.Outcome_title_PnlCenter.new( menu, controller )
	OutcometitlePnlCenter:setLeftRight( true, true, 0, 0 )
	OutcometitlePnlCenter:setTopBottom( true, false, 0, 54.9 )
	OutcometitlePnlCenter:setRGB( 0.5, 0.5, 0.5 )
	self:addElement( OutcometitlePnlCenter )
	self.OutcometitlePnlCenter = OutcometitlePnlCenter
	
	local TopFrame = LUI.UIImage.new()
	TopFrame:setLeftRight( true, true, 0, 0 )
	TopFrame:setTopBottom( true, false, 0, 54.9 )
	TopFrame:setRGB( 0, 0, 0 )
	TopFrame:setAlpha( 0.4 )
	self:addElement( TopFrame )
	self.TopFrame = TopFrame
	
	local CornerFrameLL = LUI.UIImage.new()
	CornerFrameLL:setLeftRight( true, false, -27.5, 0 )
	CornerFrameLL:setTopBottom( false, true, -27.5, 0 )
	CornerFrameLL:setRGB( 0, 0, 0 )
	CornerFrameLL:setAlpha( 0.4 )
	CornerFrameLL:setXRot( 180 )
	CornerFrameLL:setYRot( 180 )
	CornerFrameLL:setImage( RegisterImage( "uie_t7_hud_mp_notifications_endgame_framecorner" ) )
	self:addElement( CornerFrameLL )
	self.CornerFrameLL = CornerFrameLL
	
	local CornerFrameUL = LUI.UIImage.new()
	CornerFrameUL:setLeftRight( true, false, -27.5, 0 )
	CornerFrameUL:setTopBottom( true, false, 0, 27.5 )
	CornerFrameUL:setRGB( 0, 0, 0 )
	CornerFrameUL:setAlpha( 0.4 )
	CornerFrameUL:setYRot( 180 )
	CornerFrameUL:setImage( RegisterImage( "uie_t7_hud_mp_notifications_endgame_framecorner" ) )
	self:addElement( CornerFrameUL )
	self.CornerFrameUL = CornerFrameUL
	
	local CornerFrameLR = LUI.UIImage.new()
	CornerFrameLR:setLeftRight( false, true, 0, 27.5 )
	CornerFrameLR:setTopBottom( false, true, -27.5, 0 )
	CornerFrameLR:setRGB( 0, 0, 0 )
	CornerFrameLR:setAlpha( 0.4 )
	CornerFrameLR:setXRot( 180 )
	CornerFrameLR:setImage( RegisterImage( "uie_t7_hud_mp_notifications_endgame_framecorner" ) )
	self:addElement( CornerFrameLR )
	self.CornerFrameLR = CornerFrameLR
	
	local CornerFrameUR = LUI.UIImage.new()
	CornerFrameUR:setLeftRight( false, true, 0, 27.5 )
	CornerFrameUR:setTopBottom( true, false, 0, 27.5 )
	CornerFrameUR:setRGB( 0, 0, 0 )
	CornerFrameUR:setAlpha( 0.4 )
	CornerFrameUR:setImage( RegisterImage( "uie_t7_hud_mp_notifications_endgame_framecorner" ) )
	self:addElement( CornerFrameUR )
	self.CornerFrameUR = CornerFrameUR
	
	local ColorBox = CoD.FE_ButtonPanel.new( menu, controller )
	ColorBox:setLeftRight( true, true, 0, 0 )
	ColorBox:setTopBottom( true, true, 2, -5 )
	ColorBox:setRGB( 1, 0.43, 0 )
	ColorBox:setAlpha( 0 )
	self:addElement( ColorBox )
	self.ColorBox = ColorBox
	
	local Pixel201000 = LUI.UIImage.new()
	Pixel201000:setLeftRight( true, false, -29, 7 )
	Pixel201000:setTopBottom( true, false, -2, 2 )
	Pixel201000:setAlpha( 0.54 )
	Pixel201000:setYRot( -180 )
	Pixel201000:setImage( RegisterImage( "uie_t7_menu_frontend_pixelist" ) )
	Pixel201000:setMaterial( LUI.UIImage.GetCachedMaterial( "ui_add" ) )
	self:addElement( Pixel201000 )
	self.Pixel201000 = Pixel201000
	
	local Pixel2010000 = LUI.UIImage.new()
	Pixel2010000:setLeftRight( true, false, -29, 7 )
	Pixel2010000:setTopBottom( false, true, -1, 3 )
	Pixel2010000:setAlpha( 0.54 )
	Pixel2010000:setYRot( -180 )
	Pixel2010000:setImage( RegisterImage( "uie_t7_menu_frontend_pixelist" ) )
	Pixel2010000:setMaterial( LUI.UIImage.GetCachedMaterial( "ui_add" ) )
	self:addElement( Pixel2010000 )
	self.Pixel2010000 = Pixel2010000
	
	local Pixel2010001 = LUI.UIImage.new()
	Pixel2010001:setLeftRight( false, true, -7, 29 )
	Pixel2010001:setTopBottom( true, false, -2, 2 )
	Pixel2010001:setAlpha( 0.54 )
	Pixel2010001:setImage( RegisterImage( "uie_t7_menu_frontend_pixelist" ) )
	Pixel2010001:setMaterial( LUI.UIImage.GetCachedMaterial( "ui_add" ) )
	self:addElement( Pixel2010001 )
	self.Pixel2010001 = Pixel2010001
	
	local Pixel20100000 = LUI.UIImage.new()
	Pixel20100000:setLeftRight( false, true, -7, 29 )
	Pixel20100000:setTopBottom( false, true, -1, 3 )
	Pixel20100000:setAlpha( 0.54 )
	Pixel20100000:setImage( RegisterImage( "uie_t7_menu_frontend_pixelist" ) )
	Pixel20100000:setMaterial( LUI.UIImage.GetCachedMaterial( "ui_add" ) )
	self:addElement( Pixel20100000 )
	self.Pixel20100000 = Pixel20100000
	
	local KillcamText0 = LUI.UITightText.new()
	KillcamText0:setLeftRight( false, false, -351, 351 )
	KillcamText0:setTopBottom( true, false, 2, 55 )
	KillcamText0:setRGB( 0.59, 0.64, 0.74 )
	KillcamText0:setText( Engine.Localize( "MP_KILLCAM_CAPS" ) )
	KillcamText0:setTTF( "fonts/FoundryGridnik-Bold.ttf" )
	KillcamText0:setRFTMaterial( LUI.UIImage.GetCachedMaterial( "uie_aberration_no_blur" ) )
	KillcamText0:setShaderVector( 0, 0.2, 0, 0, 0 )
	KillcamText0:setShaderVector( 1, 0, 0, 0, 0 )
	KillcamText0:setShaderVector( 2, -50, -100, 0, 0 )
	KillcamText0:setShaderVector( 3, 0, 0, 0, 0 )
	KillcamText0:setShaderVector( 4, 0, 0, 0, 0 )
	KillcamText0:setLetterSpacing( 0.5 )

	LUI.OverrideFunction_CallOriginalFirst( KillcamText0, "setText", function ( element, controller )
		ScaleWidgetToLabelCentered( self, element, 30 )
	end )
	self:addElement( KillcamText0 )
	self.KillcamText0 = KillcamText0
	
	local OutcometitlePnlLineRight = CoD.Outcome_title_PnlLine.new( menu, controller )
	OutcometitlePnlLineRight:setLeftRight( false, true, 34.5, 57.5 )
	OutcometitlePnlLineRight:setTopBottom( true, true, 25.28, -25.28 )
	OutcometitlePnlLineRight:setRGB( 0.5, 0.5, 0.5 )
	self:addElement( OutcometitlePnlLineRight )
	self.OutcometitlePnlLineRight = OutcometitlePnlLineRight
	
	local LineColorRight = LUI.UIImage.new()
	LineColorRight:setLeftRight( false, true, 34.5, 57.5 )
	LineColorRight:setTopBottom( true, true, 25.28, -25.28 )
	LineColorRight:setRGB( 0, 0, 0 )
	LineColorRight:setAlpha( 0.4 )
	self:addElement( LineColorRight )
	self.LineColorRight = LineColorRight
	
	local OutcometitlePnlLineLeft = CoD.Outcome_title_PnlLine.new( menu, controller )
	OutcometitlePnlLineLeft:setLeftRight( true, false, -55, -32 )
	OutcometitlePnlLineLeft:setTopBottom( true, true, 25.78, -25.78 )
	OutcometitlePnlLineLeft:setRGB( 0.5, 0.5, 0.5 )
	self:addElement( OutcometitlePnlLineLeft )
	self.OutcometitlePnlLineLeft = OutcometitlePnlLineLeft
	
	local LineColorLeft = LUI.UIImage.new()
	LineColorLeft:setLeftRight( true, false, -55, -32 )
	LineColorLeft:setTopBottom( true, true, 25.77, -25.77 )
	LineColorLeft:setRGB( 0, 0, 0 )
	LineColorLeft:setAlpha( 0.4 )
	self:addElement( LineColorLeft )
	self.LineColorLeft = LineColorLeft
	
	self.clipsPerState = {
		DefaultState = {
			DefaultClip = function ()
				self:setupElementClipCounter( 13 )

				OutcometitlePnlUR:completeAnimation()
				self.OutcometitlePnlUR:setLeftRight( false, true, -1, 27 )
				self.OutcometitlePnlUR:setTopBottom( true, false, 0, 27.5 )
				self.OutcometitlePnlUR:setAlpha( 1 )
				self.clipFinished( OutcometitlePnlUR, {} )

				OutcometitlePnlLR:completeAnimation()
				self.OutcometitlePnlLR:setLeftRight( false, true, -1, 27 )
				self.OutcometitlePnlLR:setTopBottom( false, true, -27.5, 0 )
				self.OutcometitlePnlLR:setAlpha( 1 )
				self.clipFinished( OutcometitlePnlLR, {} )

				OutcometitlePnlUL:completeAnimation()
				self.OutcometitlePnlUL:setAlpha( 1 )
				self.clipFinished( OutcometitlePnlUL, {} )

				OutcometitlePnlLL:completeAnimation()
				self.OutcometitlePnlLL:setAlpha( 1 )
				self.clipFinished( OutcometitlePnlLL, {} )

				OutcometitlePnlCenter:completeAnimation()
				self.OutcometitlePnlCenter:setLeftRight( true, true, 0, 0 )
				self.OutcometitlePnlCenter:setTopBottom( true, false, 0, 54.9 )
				self.OutcometitlePnlCenter:setAlpha( 1 )
				self.clipFinished( OutcometitlePnlCenter, {} )

				TopFrame:completeAnimation()
				self.TopFrame:setLeftRight( true, true, 0, -1.5 )
				self.TopFrame:setTopBottom( true, false, 0, 55 )
				self.TopFrame:setRGB( 0, 0, 0 )
				self.TopFrame:setAlpha( 0 )
				self.clipFinished( TopFrame, {} )

				CornerFrameLL:completeAnimation()
				self.CornerFrameLL:setLeftRight( true, false, -27.5, 0 )
				self.CornerFrameLL:setTopBottom( false, true, -27.5, 0 )
				self.CornerFrameLL:setRGB( 0, 0, 0 )
				self.CornerFrameLL:setAlpha( 0 )
				self.clipFinished( CornerFrameLL, {} )

				CornerFrameUL:completeAnimation()
				self.CornerFrameUL:setLeftRight( true, false, -27.5, 0 )
				self.CornerFrameUL:setTopBottom( true, false, 0, 27.5 )
				self.CornerFrameUL:setRGB( 0, 0, 0 )
				self.CornerFrameUL:setAlpha( 0 )
				self.clipFinished( CornerFrameUL, {} )

				CornerFrameLR:completeAnimation()
				self.CornerFrameLR:setLeftRight( false, true, 0, 27.5 )
				self.CornerFrameLR:setTopBottom( false, true, -27.5, 0 )
				self.CornerFrameLR:setRGB( 0, 0, 0 )
				self.CornerFrameLR:setAlpha( 0 )
				self.clipFinished( CornerFrameLR, {} )

				CornerFrameUR:completeAnimation()
				self.CornerFrameUR:setLeftRight( false, true, 0, 27.5 )
				self.CornerFrameUR:setTopBottom( true, false, 0, 27.5 )
				self.CornerFrameUR:setRGB( 0, 0, 0 )
				self.CornerFrameUR:setAlpha( 0 )
				self.clipFinished( CornerFrameUR, {} )

				KillcamText0:completeAnimation()
				self.KillcamText0:setRGB( 0.74, 0.76, 0.82 )
				self.clipFinished( KillcamText0, {} )

				LineColorRight:completeAnimation()
				self.LineColorRight:setAlpha( 0 )
				self.clipFinished( LineColorRight, {} )

				LineColorLeft:completeAnimation()
				self.LineColorLeft:setRGB( 0, 0, 0 )
				self.LineColorLeft:setAlpha( 0 )
				self.clipFinished( LineColorLeft, {} )
			end
		},
		VictoryGreen = {
			DefaultClip = function ()
				self:setupElementClipCounter( 15 )

				OutcometitlePnlUR:completeAnimation()
				self.OutcometitlePnlUR:setLeftRight( false, true, -1, 26.5 )
				self.OutcometitlePnlUR:setTopBottom( true, false, 0, 27.5 )
				self.OutcometitlePnlUR:setAlpha( 1 )
				self.clipFinished( OutcometitlePnlUR, {} )

				OutcometitlePnlLR:completeAnimation()
				self.OutcometitlePnlLR:setLeftRight( false, true, -1, 26.5 )
				self.OutcometitlePnlLR:setTopBottom( false, true, -27.5, 0 )
				self.OutcometitlePnlLR:setAlpha( 1 )
				self.clipFinished( OutcometitlePnlLR, {} )

				OutcometitlePnlUL:completeAnimation()
				self.OutcometitlePnlUL:setLeftRight( true, false, -26, 1.5 )
				self.OutcometitlePnlUL:setTopBottom( true, false, 0, 27.5 )
				self.OutcometitlePnlUL:setAlpha( 1 )
				self.clipFinished( OutcometitlePnlUL, {} )

				OutcometitlePnlLL:completeAnimation()
				self.OutcometitlePnlLL:setLeftRight( true, false, -26, 1.5 )
				self.OutcometitlePnlLL:setTopBottom( false, true, -27.5, 0 )
				self.OutcometitlePnlLL:setAlpha( 1 )
				self.clipFinished( OutcometitlePnlLL, {} )

				OutcometitlePnlCenter:completeAnimation()
				self.OutcometitlePnlCenter:setLeftRight( true, true, 0, 0 )
				self.OutcometitlePnlCenter:setTopBottom( true, false, 0, 54.9 )
				self.OutcometitlePnlCenter:setAlpha( 1 )
				self.clipFinished( OutcometitlePnlCenter, {} )

				TopFrame:completeAnimation()
				self.TopFrame:setLeftRight( true, true, 0, 0 )
				self.TopFrame:setTopBottom( true, false, 0, 55 )
				self.TopFrame:setRGB( 0.36, 1, 0.15 )
				self.TopFrame:setAlpha( 0.4 )
				self.clipFinished( TopFrame, {} )

				CornerFrameLL:completeAnimation()
				self.CornerFrameLL:setLeftRight( true, false, -27.5, 0 )
				self.CornerFrameLL:setTopBottom( false, true, -27.5, 0 )
				self.CornerFrameLL:setRGB( 0.36, 1, 0.15 )
				self.CornerFrameLL:setAlpha( 0.4 )
				self.clipFinished( CornerFrameLL, {} )

				CornerFrameUL:completeAnimation()
				self.CornerFrameUL:setLeftRight( true, false, -27.5, 0 )
				self.CornerFrameUL:setTopBottom( true, false, 0, 27.5 )
				self.CornerFrameUL:setRGB( 0.36, 1, 0.15 )
				self.CornerFrameUL:setAlpha( 0.4 )
				self.clipFinished( CornerFrameUL, {} )

				CornerFrameLR:completeAnimation()
				self.CornerFrameLR:setLeftRight( false, true, 0, 27.8 )
				self.CornerFrameLR:setTopBottom( false, true, -27.5, 0 )
				self.CornerFrameLR:setRGB( 0.36, 1, 0.15 )
				self.CornerFrameLR:setAlpha( 0.4 )
				self.clipFinished( CornerFrameLR, {} )

				CornerFrameUR:completeAnimation()
				self.CornerFrameUR:setLeftRight( false, true, 0, 27.8 )
				self.CornerFrameUR:setTopBottom( true, false, 0, 27.5 )
				self.CornerFrameUR:setRGB( 0.36, 1, 0.15 )
				self.CornerFrameUR:setAlpha( 0.4 )
				self.clipFinished( CornerFrameUR, {} )

				ColorBox:completeAnimation()
				self.ColorBox:setRGB( 0.05, 1, 0 )
				self.ColorBox:setAlpha( 0 )
				self.clipFinished( ColorBox, {} )

				KillcamText0:completeAnimation()
				self.KillcamText0:setRGB( 0.79, 0.82, 0.89 )
				self.clipFinished( KillcamText0, {} )

				OutcometitlePnlLineRight:completeAnimation()
				self.OutcometitlePnlLineRight:setLeftRight( false, true, 34, 57 )
				self.OutcometitlePnlLineRight:setTopBottom( true, true, 25.3, -25.25 )
				self.clipFinished( OutcometitlePnlLineRight, {} )

				LineColorRight:completeAnimation()
				self.LineColorRight:setLeftRight( false, true, 34, 57 )
				self.LineColorRight:setTopBottom( true, true, 25.5, -25.45 )
				self.LineColorRight:setRGB( 0.36, 1, 0.15 )
				self.LineColorRight:setAlpha( 0.4 )
				self.clipFinished( LineColorRight, {} )

				LineColorLeft:completeAnimation()
				self.LineColorLeft:setLeftRight( true, false, -55, -32 )
				self.LineColorLeft:setTopBottom( true, true, 25.5, -25.5 )
				self.LineColorLeft:setRGB( 0.36, 1, 0.15 )
				self.LineColorLeft:setAlpha( 0.4 )
				self.clipFinished( LineColorLeft, {} )
			end
		},
		DefeatRed = {
			DefaultClip = function ()
				self:setupElementClipCounter( 15 )

				OutcometitlePnlUR:completeAnimation()
				self.OutcometitlePnlUR:setLeftRight( false, true, -1, 27 )
				self.OutcometitlePnlUR:setTopBottom( true, false, 0, 27.5 )
				self.OutcometitlePnlUR:setAlpha( 1 )
				self.clipFinished( OutcometitlePnlUR, {} )

				OutcometitlePnlLR:completeAnimation()
				self.OutcometitlePnlLR:setLeftRight( false, true, -1, 27 )
				self.OutcometitlePnlLR:setTopBottom( false, true, -27.5, 0 )
				self.OutcometitlePnlLR:setAlpha( 1 )
				self.clipFinished( OutcometitlePnlLR, {} )

				OutcometitlePnlUL:completeAnimation()
				self.OutcometitlePnlUL:setLeftRight( true, false, -26, 1.5 )
				self.OutcometitlePnlUL:setTopBottom( true, false, 0, 27.5 )
				self.OutcometitlePnlUL:setAlpha( 1 )
				self.clipFinished( OutcometitlePnlUL, {} )

				OutcometitlePnlLL:completeAnimation()
				self.OutcometitlePnlLL:setLeftRight( true, false, -26, 1.5 )
				self.OutcometitlePnlLL:setTopBottom( false, true, -27.5, 0 )
				self.OutcometitlePnlLL:setAlpha( 1 )
				self.clipFinished( OutcometitlePnlLL, {} )

				OutcometitlePnlCenter:completeAnimation()
				self.OutcometitlePnlCenter:setLeftRight( true, true, 0, 0 )
				self.OutcometitlePnlCenter:setTopBottom( true, false, 0, 54.9 )
				self.OutcometitlePnlCenter:setAlpha( 1 )
				self.clipFinished( OutcometitlePnlCenter, {} )

				TopFrame:completeAnimation()
				self.TopFrame:setLeftRight( true, true, 0, 0 )
				self.TopFrame:setTopBottom( true, false, 0.1, 54.9 )
				self.TopFrame:setRGB( 1, 0.01, 0 )
				self.TopFrame:setAlpha( 0.4 )
				self.TopFrame:setMaterial( LUI.UIImage.GetCachedMaterial( "ui_normal" ) )
				self.clipFinished( TopFrame, {} )

				CornerFrameLL:completeAnimation()
				self.CornerFrameLL:setLeftRight( true, false, -27.5, 0 )
				self.CornerFrameLL:setTopBottom( false, true, -27.5, 0 )
				self.CornerFrameLL:setRGB( 1, 0.01, 0 )
				self.CornerFrameLL:setAlpha( 0.4 )
				self.CornerFrameLL:setMaterial( LUI.UIImage.GetCachedMaterial( "ui_normal" ) )
				self.clipFinished( CornerFrameLL, {} )

				CornerFrameUL:completeAnimation()
				self.CornerFrameUL:setLeftRight( true, false, -27.5, 0 )
				self.CornerFrameUL:setTopBottom( true, false, 0, 27.5 )
				self.CornerFrameUL:setRGB( 1, 0.01, 0 )
				self.CornerFrameUL:setAlpha( 0.4 )
				self.CornerFrameUL:setMaterial( LUI.UIImage.GetCachedMaterial( "ui_normal" ) )
				self.clipFinished( CornerFrameUL, {} )

				CornerFrameLR:completeAnimation()
				self.CornerFrameLR:setLeftRight( false, true, 0, 27.5 )
				self.CornerFrameLR:setTopBottom( false, true, -27.5, 0 )
				self.CornerFrameLR:setRGB( 1, 0.01, 0 )
				self.CornerFrameLR:setAlpha( 0.4 )
				self.CornerFrameLR:setMaterial( LUI.UIImage.GetCachedMaterial( "ui_normal" ) )
				self.clipFinished( CornerFrameLR, {} )

				CornerFrameUR:completeAnimation()
				self.CornerFrameUR:setLeftRight( false, true, 0, 27.5 )
				self.CornerFrameUR:setTopBottom( true, false, 0, 27.5 )
				self.CornerFrameUR:setRGB( 1, 0.01, 0 )
				self.CornerFrameUR:setAlpha( 0.4 )
				self.CornerFrameUR:setMaterial( LUI.UIImage.GetCachedMaterial( "ui_normal" ) )
				self.clipFinished( CornerFrameUR, {} )

				ColorBox:completeAnimation()
				self.ColorBox:setRGB( 1, 0.01, 0 )
				self.ColorBox:setAlpha( 0 )
				self.clipFinished( ColorBox, {} )

				KillcamText0:completeAnimation()
				self.KillcamText0:setRGB( 0.79, 0.82, 0.89 )
				self.clipFinished( KillcamText0, {} )

				OutcometitlePnlLineRight:completeAnimation()
				self.OutcometitlePnlLineRight:setLeftRight( false, true, 34, 57 )
				self.OutcometitlePnlLineRight:setTopBottom( true, true, 25.3, -25.25 )
				self.clipFinished( OutcometitlePnlLineRight, {} )

				LineColorRight:completeAnimation()
				self.LineColorRight:setLeftRight( false, true, 34, 57 )
				self.LineColorRight:setTopBottom( true, true, 25.5, -25.4 )
				self.LineColorRight:setRGB( 1, 0.01, 0 )
				self.LineColorRight:setAlpha( 0.4 )
				self.LineColorRight:setMaterial( LUI.UIImage.GetCachedMaterial( "ui_normal" ) )
				self.clipFinished( LineColorRight, {} )

				LineColorLeft:completeAnimation()
				self.LineColorLeft:setLeftRight( true, false, -55, -32 )
				self.LineColorLeft:setTopBottom( true, true, 25.5, -25.5 )
				self.LineColorLeft:setRGB( 1, 0.01, 0 )
				self.LineColorLeft:setAlpha( 0.4 )
				self.LineColorLeft:setMaterial( LUI.UIImage.GetCachedMaterial( "ui_normal" ) )
				self.clipFinished( LineColorLeft, {} )
			end
		},
		OvertimeOrange = {
			DefaultClip = function ()
				self:setupElementClipCounter( 15 )

				OutcometitlePnlUR:completeAnimation()
				self.OutcometitlePnlUR:setLeftRight( false, true, -1, 27 )
				self.OutcometitlePnlUR:setTopBottom( true, false, 0, 27.5 )
				self.OutcometitlePnlUR:setAlpha( 1 )
				self.clipFinished( OutcometitlePnlUR, {} )

				OutcometitlePnlLR:completeAnimation()
				self.OutcometitlePnlLR:setLeftRight( false, true, -1, 27 )
				self.OutcometitlePnlLR:setTopBottom( false, true, -27.5, 0 )
				self.OutcometitlePnlLR:setAlpha( 1 )
				self.clipFinished( OutcometitlePnlLR, {} )

				OutcometitlePnlUL:completeAnimation()
				self.OutcometitlePnlUL:setLeftRight( true, false, -26, 1.5 )
				self.OutcometitlePnlUL:setTopBottom( true, false, 0, 27.5 )
				self.OutcometitlePnlUL:setAlpha( 1 )
				self.clipFinished( OutcometitlePnlUL, {} )

				OutcometitlePnlLL:completeAnimation()
				self.OutcometitlePnlLL:setLeftRight( true, false, -26, 1.5 )
				self.OutcometitlePnlLL:setTopBottom( false, true, -27.5, 0 )
				self.OutcometitlePnlLL:setAlpha( 1 )
				self.clipFinished( OutcometitlePnlLL, {} )

				OutcometitlePnlCenter:completeAnimation()
				self.OutcometitlePnlCenter:setLeftRight( true, true, 0, 0 )
				self.OutcometitlePnlCenter:setTopBottom( true, false, 0, 54.9 )
				self.OutcometitlePnlCenter:setAlpha( 1 )
				self.clipFinished( OutcometitlePnlCenter, {} )

				TopFrame:completeAnimation()
				self.TopFrame:setLeftRight( true, true, 0, -1.5 )
				self.TopFrame:setTopBottom( true, false, 0, 55 )
				self.TopFrame:setRGB( 0, 0, 0 )
				self.TopFrame:setAlpha( 0 )
				self.clipFinished( TopFrame, {} )

				CornerFrameLL:completeAnimation()
				self.CornerFrameLL:setLeftRight( true, false, -27.5, 0 )
				self.CornerFrameLL:setTopBottom( false, true, -27.5, 0 )
				self.CornerFrameLL:setRGB( 0, 0, 0 )
				self.CornerFrameLL:setAlpha( 0 )
				self.clipFinished( CornerFrameLL, {} )

				CornerFrameUL:completeAnimation()
				self.CornerFrameUL:setLeftRight( true, false, -27.5, 0 )
				self.CornerFrameUL:setTopBottom( true, false, 0, 27.5 )
				self.CornerFrameUL:setRGB( 0, 0, 0 )
				self.CornerFrameUL:setAlpha( 0 )
				self.clipFinished( CornerFrameUL, {} )

				CornerFrameLR:completeAnimation()
				self.CornerFrameLR:setLeftRight( false, true, 0, 27.5 )
				self.CornerFrameLR:setTopBottom( false, true, -27.5, 0 )
				self.CornerFrameLR:setRGB( 0, 0, 0 )
				self.CornerFrameLR:setAlpha( 0 )
				self.clipFinished( CornerFrameLR, {} )

				CornerFrameUR:completeAnimation()
				self.CornerFrameUR:setLeftRight( false, true, 0, 27.5 )
				self.CornerFrameUR:setTopBottom( true, false, 0, 27.5 )
				self.CornerFrameUR:setRGB( 0, 0, 0 )
				self.CornerFrameUR:setAlpha( 0 )
				self.clipFinished( CornerFrameUR, {} )

				ColorBox:completeAnimation()
				self.ColorBox:setRGB( 1, 0.52, 0 )
				self.ColorBox:setAlpha( 0 )
				self.clipFinished( ColorBox, {} )

				KillcamText0:completeAnimation()
				self.KillcamText0:setRGB( 0.74, 0.76, 0.82 )
				self.clipFinished( KillcamText0, {} )

				OutcometitlePnlLineRight:completeAnimation()
				self.OutcometitlePnlLineRight:setLeftRight( false, true, 34, 57 )
				self.OutcometitlePnlLineRight:setTopBottom( true, true, 25.3, -25.25 )
				self.clipFinished( OutcometitlePnlLineRight, {} )

				LineColorRight:completeAnimation()
				self.LineColorRight:setLeftRight( false, true, 34, 57 )
				self.LineColorRight:setTopBottom( true, true, 25.3, -25.25 )
				self.LineColorRight:setAlpha( 0 )
				self.clipFinished( LineColorRight, {} )

				LineColorLeft:completeAnimation()
				self.LineColorLeft:setRGB( 0, 0, 0 )
				self.LineColorLeft:setAlpha( 0 )
				self.clipFinished( LineColorLeft, {} )
			end
		}
	}

	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.OutcometitlePnlUR:close()
		element.OutcometitlePnlLR:close()
		element.OutcometitlePnlUL:close()
		element.OutcometitlePnlLL:close()
		element.OutcometitlePnlCenter:close()
		element.ColorBox:close()
		element.OutcometitlePnlLineRight:close()
		element.OutcometitlePnlLineLeft:close()
	end )
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
