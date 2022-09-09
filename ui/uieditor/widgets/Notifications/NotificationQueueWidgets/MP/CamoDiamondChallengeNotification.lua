-- 50dcd11c2449551c1e8fd3fac9b25bc7
-- This hash is used for caching, delete to decompile the file again

require( "ui.uieditor.widgets.Notifications.Global.Notif_Camo_CenterBacking" )
require( "ui.uieditor.widgets.Notifications.Global.Notif_Global_TitleLine" )
require( "ui.uieditor.widgets.Notifications.Global.Notif_Global_Title" )

CoD.CamoDiamondChallengeNotification = InheritFrom( LUI.UIElement )
CoD.CamoDiamondChallengeNotification.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	if PreLoadFunc then
		PreLoadFunc( self, controller )
	end

	self:setUseStencil( false )
	self:setClass( CoD.CamoDiamondChallengeNotification )
	self.id = "CamoDiamondChallengeNotification"
	self.soundSet = "HUD"
	self:setLeftRight( true, false, 0, 348 )
	self:setTopBottom( true, false, 0, 250 )
	self.anyChildUsesUpdateState = true
	
	local Side02 = LUI.UIImage.new()
	Side02:setLeftRight( true, false, 258.03, 378.03 )
	Side02:setTopBottom( true, false, 40.83, 112.83 )
	Side02:setZRot( 180 )
	Side02:setScale( 0.8 )
	Side02:setImage( RegisterImage( "uie_t7_hud_notif_global_top_tier_effect" ) )
	self:addElement( Side02 )
	self.Side02 = Side02
	
	local Side01 = LUI.UIImage.new()
	Side01:setLeftRight( true, false, -31.03, 88.97 )
	Side01:setTopBottom( true, false, 40.83, 112.83 )
	Side01:setScale( 0.8 )
	Side01:setImage( RegisterImage( "uie_t7_hud_notif_global_top_tier_effect" ) )
	self:addElement( Side01 )
	self.Side01 = Side01
	
	local CenterShadow = LUI.UIImage.new()
	CenterShadow:setLeftRight( true, false, 0, 348 )
	CenterShadow:setTopBottom( true, false, 0, 153.67 )
	CenterShadow:setRGB( 0, 0, 0 )
	CenterShadow:setAlpha( 0.4 )
	CenterShadow:setImage( RegisterImage( "uie_t7_hud_notif_camo_center_shadow" ) )
	self:addElement( CenterShadow )
	self.CenterShadow = CenterShadow
	
	local NotifCamoCenterBacking = CoD.Notif_Camo_CenterBacking.new( menu, controller )
	NotifCamoCenterBacking:setLeftRight( true, false, 28.97, 317.03 )
	NotifCamoCenterBacking:setTopBottom( true, false, -18.65, 174.14 )
	self:addElement( NotifCamoCenterBacking )
	self.NotifCamoCenterBacking = NotifCamoCenterBacking
	
	local CornerFill = LUI.UIImage.new()
	CornerFill:setLeftRight( true, false, 239.78, 317.03 )
	CornerFill:setTopBottom( true, false, 0, 154.49 )
	CornerFill:setZRot( 180 )
	CornerFill:setImage( RegisterImage( "uie_t7_hud_notif_camo_corner_fill" ) )
	self:addElement( CornerFill )
	self.CornerFill = CornerFill
	
	local CornerFill0 = LUI.UIImage.new()
	CornerFill0:setLeftRight( true, false, 28.97, 106.22 )
	CornerFill0:setTopBottom( true, false, 0, 154.49 )
	CornerFill0:setImage( RegisterImage( "uie_t7_hud_notif_camo_corner_fill" ) )
	self:addElement( CornerFill0 )
	self.CornerFill0 = CornerFill0
	
	local CornerStroke = LUI.UIImage.new()
	CornerStroke:setLeftRight( true, false, 239.78, 317.03 )
	CornerStroke:setTopBottom( true, false, 0, 154.49 )
	CornerStroke:setZRot( 180 )
	CornerStroke:setImage( RegisterImage( "uie_t7_hud_notif_camo_corner_stroke" ) )
	self:addElement( CornerStroke )
	self.CornerStroke = CornerStroke
	
	local CornerStroke0 = LUI.UIImage.new()
	CornerStroke0:setLeftRight( true, false, 28.97, 106.22 )
	CornerStroke0:setTopBottom( true, false, 0, 154.49 )
	CornerStroke0:setImage( RegisterImage( "uie_t7_hud_notif_camo_corner_stroke" ) )
	self:addElement( CornerStroke0 )
	self.CornerStroke0 = CornerStroke0
	
	local EdgeFill = LUI.UIImage.new()
	EdgeFill:setLeftRight( true, false, 239.78, 317.53 )
	EdgeFill:setTopBottom( true, false, 0, 155.49 )
	EdgeFill:setZRot( 180 )
	EdgeFill:setImage( RegisterImage( "uie_t7_hud_notif_camo_edge_fill" ) )
	self:addElement( EdgeFill )
	self.EdgeFill = EdgeFill
	
	local EdgeFill0 = LUI.UIImage.new()
	EdgeFill0:setLeftRight( true, false, 28.97, 106.72 )
	EdgeFill0:setTopBottom( true, false, 0, 155.49 )
	EdgeFill0:setImage( RegisterImage( "uie_t7_hud_notif_camo_edge_fill" ) )
	self:addElement( EdgeFill0 )
	self.EdgeFill0 = EdgeFill0
	
	local CornerFillWide = LUI.UIImage.new()
	CornerFillWide:setLeftRight( true, false, 37.68, 310 )
	CornerFillWide:setTopBottom( true, false, -8, 160 )
	CornerFillWide:setAlpha( 0 )
	CornerFillWide:setImage( RegisterImage( "uie_t7_hud_notif_camo_corner_fill_wide" ) )
	self:addElement( CornerFillWide )
	self.CornerFillWide = CornerFillWide
	
	local DescBacking = LUI.UIImage.new()
	DescBacking:setLeftRight( false, false, -220.85, 220.85 )
	DescBacking:setTopBottom( true, false, 143, 321 )
	DescBacking:setRGB( 0.16, 0.16, 0.16 )
	DescBacking:setAlpha( 0.9 )
	DescBacking:setImage( RegisterImage( "uie_t7_hud_notif_global_desc_backing" ) )
	self:addElement( DescBacking )
	self.DescBacking = DescBacking
	
	local Desc = LUI.UIText.new()
	Desc:setLeftRight( false, false, -195, 195 )
	Desc:setTopBottom( true, false, 181, 201 )
	Desc:setTTF( "fonts/default.ttf" )
	Desc:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_CENTER )
	Desc:setAlignment( Enum.LUIAlignment.LUI_ALIGNMENT_TOP )
	self:addElement( Desc )
	self.Desc = Desc
	
	local NotifGlobalTitleLine = CoD.Notif_Global_TitleLine.new( menu, controller )
	NotifGlobalTitleLine:setLeftRight( false, false, -258, 258 )
	NotifGlobalTitleLine:setTopBottom( true, false, 143, 183 )
	self:addElement( NotifGlobalTitleLine )
	self.NotifGlobalTitleLine = NotifGlobalTitleLine
	
	local NotifGlobalTitle = CoD.Notif_Global_Title.new( menu, controller )
	NotifGlobalTitle:setLeftRight( true, false, 34, 315 )
	NotifGlobalTitle:setTopBottom( true, false, 143, 183 )
	self:addElement( NotifGlobalTitle )
	self.NotifGlobalTitle = NotifGlobalTitle
	
	local highlight = LUI.UIImage.new()
	highlight:setLeftRight( true, false, 71, 285 )
	highlight:setTopBottom( true, false, -1.67, 158 )
	highlight:setRGB( 1, 0.76, 0 )
	highlight:setAlpha( 0 )
	highlight:setImage( RegisterImage( "uie_t7_hud_notficationhighlight" ) )
	highlight:setMaterial( LUI.UIImage.GetCachedMaterial( "ui_add" ) )
	self:addElement( highlight )
	self.highlight = highlight
	
	local imageG = LUI.UIImage.new()
	imageG:setLeftRight( true, false, 55.42, 290.59 )
	imageG:setTopBottom( true, false, 25, 127 )
	imageG:setRGB( 0, 0.27, 0.01 )
	imageG:setScale( 0 )
	imageG:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_scanlines_add" ) )
	imageG:setShaderVector( 0, 2, 0, 0, 0 )
	imageG:setShaderVector( 1, 1, 0, 0, 0 )
	imageG:setShaderVector( 2, 0.02, 0, 0, 0 )
	self:addElement( imageG )
	self.imageG = imageG
	
	local imageR = LUI.UIImage.new()
	imageR:setLeftRight( true, false, 63.33, 284.67 )
	imageR:setTopBottom( true, false, 25, 127 )
	imageR:setRGB( 0.55, 0.09, 0.09 )
	imageR:setScale( 0 )
	imageR:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_scanlines_add" ) )
	imageR:setShaderVector( 0, 2, 0, 0, 0 )
	imageR:setShaderVector( 1, 1, 0, 0, 0 )
	imageR:setShaderVector( 2, 0.02, 0, 0, 0 )
	self:addElement( imageR )
	self.imageR = imageR
	
	local image = LUI.UIImage.new()
	image:setLeftRight( false, false, -100.87, 100.87 )
	image:setTopBottom( true, false, -8.14, 174.14 )
	self:addElement( image )
	self.image = image
	
	local Sound = LUI.UIElement.new()
	Sound:setLeftRight( true, false, -101.5, -53.5 )
	Sound:setTopBottom( true, false, 101.5, 149.5 )
	self:addElement( Sound )
	self.Sound = Sound
	
	local ParticleFX01 = LUI.UIImage.new()
	ParticleFX01:setLeftRight( true, false, 78.5, 270.5 )
	ParticleFX01:setTopBottom( true, false, -39, 201 )
	ParticleFX01:setRGB( 1, 0.76, 0 )
	ParticleFX01:setAlpha( 0 )
	ParticleFX01:setZRot( 90 )
	ParticleFX01:setScale( 2 )
	ParticleFX01:setImage( RegisterImage( "uie_t7_blackmarket_crate_ember" ) )
	ParticleFX01:setMaterial( LUI.UIImage.GetCachedMaterial( "ui_add" ) )
	self:addElement( ParticleFX01 )
	self.ParticleFX01 = ParticleFX01
	
	self.Side02:linkToElementModel( self, "color", true, function ( model )
		local color = Engine.GetModelValue( model )
		if color then
			Side02:setRGB( color )
		end
	end )
	self.Side01:linkToElementModel( self, "color", true, function ( model )
		local color = Engine.GetModelValue( model )
		if color then
			Side01:setRGB( color )
		end
	end )
	self.CornerFill:linkToElementModel( self, "color", true, function ( model )
		local color = Engine.GetModelValue( model )
		if color then
			CornerFill:setRGB( color )
		end
	end )
	self.CornerFill0:linkToElementModel( self, "color", true, function ( model )
		local color = Engine.GetModelValue( model )
		if color then
			CornerFill0:setRGB( color )
		end
	end )
	self.CornerStroke:linkToElementModel( self, "color", true, function ( model )
		local color = Engine.GetModelValue( model )
		if color then
			CornerStroke:setRGB( color )
		end
	end )
	self.CornerStroke0:linkToElementModel( self, "color", true, function ( model )
		local color = Engine.GetModelValue( model )
		if color then
			CornerStroke0:setRGB( color )
		end
	end )
	self.EdgeFill:linkToElementModel( self, "color", true, function ( model )
		local color = Engine.GetModelValue( model )
		if color then
			EdgeFill:setRGB( color )
		end
	end )
	self.EdgeFill0:linkToElementModel( self, "color", true, function ( model )
		local color = Engine.GetModelValue( model )
		if color then
			EdgeFill0:setRGB( color )
		end
	end )
	self.CornerFillWide:linkToElementModel( self, "color", true, function ( model )
		local color = Engine.GetModelValue( model )
		if color then
			CornerFillWide:setRGB( color )
		end
	end )
	self.Desc:linkToElementModel( self, "subtitle", true, function ( model )
		local subtitle = Engine.GetModelValue( model )
		if subtitle then
			Desc:setText( Engine.Localize( subtitle ) )
		end
	end )
	self.NotifGlobalTitleLine:linkToElementModel( self, "color", true, function ( model )
		local color = Engine.GetModelValue( model )
		if color then
			NotifGlobalTitleLine.NotifGlobalTitleBackingLine.TitleBackingLine:setRGB( color )
		end
	end )
	self.NotifGlobalTitleLine:linkToElementModel( self, "color", true, function ( model )
		local color = Engine.GetModelValue( model )
		if color then
			NotifGlobalTitleLine.NotifGlobalTitleBackingLine.Image0:setRGB( color )
		end
	end )
	self.NotifGlobalTitleLine:linkToElementModel( self, "title", true, function ( model )
		local title = Engine.GetModelValue( model )
		if title then
			NotifGlobalTitleLine.SubText:setText( Engine.Localize( title ) )
		end
	end )
	self.NotifGlobalTitle:linkToElementModel( self, "color", true, function ( model )
		local color = Engine.GetModelValue( model )
		if color then
			NotifGlobalTitle.NotifGlobalTitleBacking:setRGB( color )
		end
	end )
	self.NotifGlobalTitle:linkToElementModel( self, "title", true, function ( model )
		local title = Engine.GetModelValue( model )
		if title then
			NotifGlobalTitle.SubText:setText( Engine.Localize( title ) )
		end
	end )
	self.imageG:linkToElementModel( self, "icon", true, function ( model )
		local icon = Engine.GetModelValue( model )
		if icon then
			imageG:setImage( RegisterImage( icon ) )
		end
	end )
	self.imageR:linkToElementModel( self, "icon", true, function ( model )
		local icon = Engine.GetModelValue( model )
		if icon then
			imageR:setImage( RegisterImage( icon ) )
		end
	end )
	self.image:linkToElementModel( self, "icon", true, function ( model )
		local icon = Engine.GetModelValue( model )
		if icon then
			image:setImage( RegisterImage( icon ) )
		end
	end )
	self.clipsPerState = {
		DefaultState = {
			DefaultClip = function ()
				self:setupElementClipCounter( 20 )

				local Side02Frame2 = function ( Side02, event )
					local Side02Frame3 = function ( Side02, event )
						local Side02Frame4 = function ( Side02, event )
							if not event.interrupted then
								Side02:beginAnimation( "keyframe", 80, false, true, CoD.TweenType.Bounce )
							end
							Side02:setLeftRight( true, false, 254, 374 )
							Side02:setTopBottom( true, false, 40.83, 112.83 )
							Side02:setAlpha( 1 )
							if event.interrupted then
								self.clipFinished( Side02, event )
							else
								Side02:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
							end
						end
						
						if event.interrupted then
							Side02Frame4( Side02, event )
							return 
						else
							Side02:beginAnimation( "keyframe", 159, false, true, CoD.TweenType.Bounce )
							Side02:setLeftRight( true, false, 292.22, 412.22 )
							Side02:setAlpha( 0.96 )
							Side02:registerEventHandler( "transition_complete_keyframe", Side02Frame4 )
						end
					end
					
					if event.interrupted then
						Side02Frame3( Side02, event )
						return 
					else
						Side02:beginAnimation( "keyframe", 319, false, false, CoD.TweenType.Linear )
						Side02:registerEventHandler( "transition_complete_keyframe", Side02Frame3 )
					end
				end
				
				Side02:completeAnimation()
				self.Side02:setLeftRight( true, false, 174.5, 294.5 )
				self.Side02:setTopBottom( true, false, 40.83, 112.83 )
				self.Side02:setAlpha( 0 )
				Side02Frame2( Side02, {} )
				local Side01Frame2 = function ( Side01, event )
					local Side01Frame3 = function ( Side01, event )
						local Side01Frame4 = function ( Side01, event )
							if not event.interrupted then
								Side01:beginAnimation( "keyframe", 80, false, true, CoD.TweenType.Bounce )
							end
							Side01:setLeftRight( true, false, -27, 93 )
							Side01:setTopBottom( true, false, 40.83, 112.83 )
							Side01:setAlpha( 1 )
							if event.interrupted then
								self.clipFinished( Side01, event )
							else
								Side01:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
							end
						end
						
						if event.interrupted then
							Side01Frame4( Side01, event )
							return 
						else
							Side01:beginAnimation( "keyframe", 159, false, true, CoD.TweenType.Bounce )
							Side01:setLeftRight( true, false, -65.58, 54.42 )
							Side01:setAlpha( 0.96 )
							Side01:registerEventHandler( "transition_complete_keyframe", Side01Frame4 )
						end
					end
					
					if event.interrupted then
						Side01Frame3( Side01, event )
						return 
					else
						Side01:beginAnimation( "keyframe", 319, false, false, CoD.TweenType.Linear )
						Side01:setLeftRight( true, false, 51, 171 )
						Side01:registerEventHandler( "transition_complete_keyframe", Side01Frame3 )
					end
				end
				
				Side01:completeAnimation()
				self.Side01:setLeftRight( true, false, 53, 173 )
				self.Side01:setTopBottom( true, false, 40.83, 112.83 )
				self.Side01:setAlpha( 0 )
				Side01Frame2( Side01, {} )
				local CenterShadowFrame2 = function ( CenterShadow, event )
					if not event.interrupted then
						CenterShadow:beginAnimation( "keyframe", 159, false, false, CoD.TweenType.Linear )
					end
					CenterShadow:setAlpha( 0.4 )
					if event.interrupted then
						self.clipFinished( CenterShadow, event )
					else
						CenterShadow:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
					end
				end
				
				CenterShadow:completeAnimation()
				self.CenterShadow:setAlpha( 0 )
				CenterShadowFrame2( CenterShadow, {} )
				local NotifCamoCenterBackingFrame2 = function ( NotifCamoCenterBacking, event )
					if not event.interrupted then
						NotifCamoCenterBacking:beginAnimation( "keyframe", 200, false, true, CoD.TweenType.Linear )
					end
					NotifCamoCenterBacking:setAlpha( 0.5 )
					NotifCamoCenterBacking:setScale( 1 )
					if event.interrupted then
						self.clipFinished( NotifCamoCenterBacking, event )
					else
						NotifCamoCenterBacking:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
					end
				end
				
				NotifCamoCenterBacking:completeAnimation()
				self.NotifCamoCenterBacking:setAlpha( 0 )
				self.NotifCamoCenterBacking:setScale( 3 )
				NotifCamoCenterBackingFrame2( NotifCamoCenterBacking, {} )
				local CornerFillFrame2 = function ( CornerFill, event )
					local CornerFillFrame3 = function ( CornerFill, event )
						if not event.interrupted then
							CornerFill:beginAnimation( "keyframe", 159, false, true, CoD.TweenType.Linear )
						end
						CornerFill:setLeftRight( true, false, 239.78, 317.03 )
						CornerFill:setTopBottom( true, false, 0, 154.49 )
						CornerFill:setAlpha( 1 )
						CornerFill:setScale( 1 )
						if event.interrupted then
							self.clipFinished( CornerFill, event )
						else
							CornerFill:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						CornerFillFrame3( CornerFill, event )
						return 
					else
						CornerFill:beginAnimation( "keyframe", 79, false, false, CoD.TweenType.Linear )
						CornerFill:registerEventHandler( "transition_complete_keyframe", CornerFillFrame3 )
					end
				end
				
				CornerFill:completeAnimation()
				self.CornerFill:setLeftRight( true, false, 348, 425.25 )
				self.CornerFill:setTopBottom( true, false, 0, 154.49 )
				self.CornerFill:setAlpha( 0 )
				self.CornerFill:setScale( 3 )
				CornerFillFrame2( CornerFill, {} )
				local CornerFill0Frame2 = function ( CornerFill0, event )
					local CornerFill0Frame3 = function ( CornerFill0, event )
						if not event.interrupted then
							CornerFill0:beginAnimation( "keyframe", 159, false, true, CoD.TweenType.Linear )
						end
						CornerFill0:setLeftRight( true, false, 28.97, 106.22 )
						CornerFill0:setTopBottom( true, false, 0, 154.49 )
						CornerFill0:setAlpha( 1 )
						CornerFill0:setScale( 1 )
						if event.interrupted then
							self.clipFinished( CornerFill0, event )
						else
							CornerFill0:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						CornerFill0Frame3( CornerFill0, event )
						return 
					else
						CornerFill0:beginAnimation( "keyframe", 79, false, false, CoD.TweenType.Linear )
						CornerFill0:registerEventHandler( "transition_complete_keyframe", CornerFill0Frame3 )
					end
				end
				
				CornerFill0:completeAnimation()
				self.CornerFill0:setLeftRight( true, false, -77.25, 0 )
				self.CornerFill0:setTopBottom( true, false, 0, 154.49 )
				self.CornerFill0:setAlpha( 0 )
				self.CornerFill0:setScale( 3 )
				CornerFill0Frame2( CornerFill0, {} )
				local CornerStrokeFrame2 = function ( CornerStroke, event )
					local CornerStrokeFrame3 = function ( CornerStroke, event )
						if not event.interrupted then
							CornerStroke:beginAnimation( "keyframe", 159, false, true, CoD.TweenType.Linear )
						end
						CornerStroke:setLeftRight( true, false, 239.78, 317.03 )
						CornerStroke:setTopBottom( true, false, 0, 154.49 )
						CornerStroke:setAlpha( 1 )
						CornerStroke:setScale( 1 )
						if event.interrupted then
							self.clipFinished( CornerStroke, event )
						else
							CornerStroke:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						CornerStrokeFrame3( CornerStroke, event )
						return 
					else
						CornerStroke:beginAnimation( "keyframe", 159, false, false, CoD.TweenType.Linear )
						CornerStroke:registerEventHandler( "transition_complete_keyframe", CornerStrokeFrame3 )
					end
				end
				
				CornerStroke:completeAnimation()
				self.CornerStroke:setLeftRight( true, false, 348, 425.25 )
				self.CornerStroke:setTopBottom( true, false, 0, 154.49 )
				self.CornerStroke:setAlpha( 0 )
				self.CornerStroke:setScale( 3 )
				CornerStrokeFrame2( CornerStroke, {} )
				local CornerStroke0Frame2 = function ( CornerStroke0, event )
					local CornerStroke0Frame3 = function ( CornerStroke0, event )
						if not event.interrupted then
							CornerStroke0:beginAnimation( "keyframe", 159, false, true, CoD.TweenType.Linear )
						end
						CornerStroke0:setLeftRight( true, false, 28.97, 106.22 )
						CornerStroke0:setTopBottom( true, false, 0, 154.49 )
						CornerStroke0:setAlpha( 1 )
						CornerStroke0:setScale( 1 )
						if event.interrupted then
							self.clipFinished( CornerStroke0, event )
						else
							CornerStroke0:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						CornerStroke0Frame3( CornerStroke0, event )
						return 
					else
						CornerStroke0:beginAnimation( "keyframe", 159, false, false, CoD.TweenType.Linear )
						CornerStroke0:registerEventHandler( "transition_complete_keyframe", CornerStroke0Frame3 )
					end
				end
				
				CornerStroke0:completeAnimation()
				self.CornerStroke0:setLeftRight( true, false, -77.25, 0 )
				self.CornerStroke0:setTopBottom( true, false, 0, 154.49 )
				self.CornerStroke0:setAlpha( 0 )
				self.CornerStroke0:setScale( 3 )
				CornerStroke0Frame2( CornerStroke0, {} )
				local EdgeFillFrame2 = function ( EdgeFill, event )
					local EdgeFillFrame3 = function ( EdgeFill, event )
						if not event.interrupted then
							EdgeFill:beginAnimation( "keyframe", 160, false, false, CoD.TweenType.Linear )
						end
						EdgeFill:setLeftRight( true, false, 239.78, 317.53 )
						EdgeFill:setTopBottom( true, false, 0, 155.49 )
						EdgeFill:setAlpha( 1 )
						EdgeFill:setScale( 1 )
						if event.interrupted then
							self.clipFinished( EdgeFill, event )
						else
							EdgeFill:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						EdgeFillFrame3( EdgeFill, event )
						return 
					else
						EdgeFill:beginAnimation( "keyframe", 239, false, false, CoD.TweenType.Linear )
						EdgeFill:registerEventHandler( "transition_complete_keyframe", EdgeFillFrame3 )
					end
				end
				
				EdgeFill:completeAnimation()
				self.EdgeFill:setLeftRight( true, false, 347.5, 425.25 )
				self.EdgeFill:setTopBottom( true, false, 0, 155.49 )
				self.EdgeFill:setAlpha( 0 )
				self.EdgeFill:setScale( 1 )
				EdgeFillFrame2( EdgeFill, {} )
				local EdgeFill0Frame2 = function ( EdgeFill0, event )
					local EdgeFill0Frame3 = function ( EdgeFill0, event )
						if not event.interrupted then
							EdgeFill0:beginAnimation( "keyframe", 160, false, false, CoD.TweenType.Linear )
						end
						EdgeFill0:setLeftRight( true, false, 28.97, 106.72 )
						EdgeFill0:setTopBottom( true, false, 0, 155.49 )
						EdgeFill0:setAlpha( 1 )
						EdgeFill0:setScale( 1 )
						if event.interrupted then
							self.clipFinished( EdgeFill0, event )
						else
							EdgeFill0:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
						end
					end
					
					if event.interrupted then
						EdgeFill0Frame3( EdgeFill0, event )
						return 
					else
						EdgeFill0:beginAnimation( "keyframe", 239, false, false, CoD.TweenType.Linear )
						EdgeFill0:registerEventHandler( "transition_complete_keyframe", EdgeFill0Frame3 )
					end
				end
				
				EdgeFill0:completeAnimation()
				self.EdgeFill0:setLeftRight( true, false, -77.25, 0.5 )
				self.EdgeFill0:setTopBottom( true, false, 0, 155.49 )
				self.EdgeFill0:setAlpha( 0 )
				self.EdgeFill0:setScale( 1 )
				EdgeFill0Frame2( EdgeFill0, {} )
				local DescBackingFrame2 = function ( DescBacking, event )
					local DescBackingFrame3 = function ( DescBacking, event )
						local DescBackingFrame4 = function ( DescBacking, event )
							local DescBackingFrame5 = function ( DescBacking, event )
								if not event.interrupted then
									DescBacking:beginAnimation( "keyframe", 40, false, true, CoD.TweenType.Bounce )
								end
								DescBacking:setAlpha( 0.9 )
								if event.interrupted then
									self.clipFinished( DescBacking, event )
								else
									DescBacking:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
								end
							end
							
							if event.interrupted then
								DescBackingFrame5( DescBacking, event )
								return 
							else
								DescBacking:beginAnimation( "keyframe", 40, false, true, CoD.TweenType.Bounce )
								DescBacking:setAlpha( 0 )
								DescBacking:registerEventHandler( "transition_complete_keyframe", DescBackingFrame5 )
							end
						end
						
						if event.interrupted then
							DescBackingFrame4( DescBacking, event )
							return 
						else
							DescBacking:beginAnimation( "keyframe", 39, false, true, CoD.TweenType.Bounce )
							DescBacking:setAlpha( 0.9 )
							DescBacking:registerEventHandler( "transition_complete_keyframe", DescBackingFrame4 )
						end
					end
					
					if event.interrupted then
						DescBackingFrame3( DescBacking, event )
						return 
					else
						DescBacking:beginAnimation( "keyframe", 479, false, false, CoD.TweenType.Linear )
						DescBacking:registerEventHandler( "transition_complete_keyframe", DescBackingFrame3 )
					end
				end
				
				DescBacking:completeAnimation()
				self.DescBacking:setAlpha( 0 )
				DescBackingFrame2( DescBacking, {} )
				local DescFrame2 = function ( Desc, event )
					local DescFrame3 = function ( Desc, event )
						local DescFrame4 = function ( Desc, event )
							local DescFrame5 = function ( Desc, event )
								if not event.interrupted then
									Desc:beginAnimation( "keyframe", 40, false, true, CoD.TweenType.Bounce )
								end
								Desc:setAlpha( 1 )
								if event.interrupted then
									self.clipFinished( Desc, event )
								else
									Desc:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
								end
							end
							
							if event.interrupted then
								DescFrame5( Desc, event )
								return 
							else
								Desc:beginAnimation( "keyframe", 40, false, true, CoD.TweenType.Bounce )
								Desc:setAlpha( 0 )
								Desc:registerEventHandler( "transition_complete_keyframe", DescFrame5 )
							end
						end
						
						if event.interrupted then
							DescFrame4( Desc, event )
							return 
						else
							Desc:beginAnimation( "keyframe", 39, false, true, CoD.TweenType.Bounce )
							Desc:setAlpha( 1 )
							Desc:registerEventHandler( "transition_complete_keyframe", DescFrame4 )
						end
					end
					
					if event.interrupted then
						DescFrame3( Desc, event )
						return 
					else
						Desc:beginAnimation( "keyframe", 479, false, false, CoD.TweenType.Linear )
						Desc:registerEventHandler( "transition_complete_keyframe", DescFrame3 )
					end
				end
				
				Desc:completeAnimation()
				self.Desc:setAlpha( 0 )
				DescFrame2( Desc, {} )
				local NotifGlobalTitleLineFrame2 = function ( NotifGlobalTitleLine, event )
					local NotifGlobalTitleLineFrame3 = function ( NotifGlobalTitleLine, event )
						local NotifGlobalTitleLineFrame4 = function ( NotifGlobalTitleLine, event )
							local NotifGlobalTitleLineFrame5 = function ( NotifGlobalTitleLine, event )
								if not event.interrupted then
									NotifGlobalTitleLine:beginAnimation( "keyframe", 39, false, true, CoD.TweenType.Bounce )
								end
								NotifGlobalTitleLine:setAlpha( 1 )
								if event.interrupted then
									self.clipFinished( NotifGlobalTitleLine, event )
								else
									NotifGlobalTitleLine:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
								end
							end
							
							if event.interrupted then
								NotifGlobalTitleLineFrame5( NotifGlobalTitleLine, event )
								return 
							else
								NotifGlobalTitleLine:beginAnimation( "keyframe", 39, false, true, CoD.TweenType.Bounce )
								NotifGlobalTitleLine:setAlpha( 0 )
								NotifGlobalTitleLine:registerEventHandler( "transition_complete_keyframe", NotifGlobalTitleLineFrame5 )
							end
						end
						
						if event.interrupted then
							NotifGlobalTitleLineFrame4( NotifGlobalTitleLine, event )
							return 
						else
							NotifGlobalTitleLine:beginAnimation( "keyframe", 39, false, true, CoD.TweenType.Bounce )
							NotifGlobalTitleLine:setAlpha( 1 )
							NotifGlobalTitleLine:registerEventHandler( "transition_complete_keyframe", NotifGlobalTitleLineFrame4 )
						end
					end
					
					if event.interrupted then
						NotifGlobalTitleLineFrame3( NotifGlobalTitleLine, event )
						return 
					else
						NotifGlobalTitleLine:beginAnimation( "keyframe", 400, false, false, CoD.TweenType.Linear )
						NotifGlobalTitleLine:registerEventHandler( "transition_complete_keyframe", NotifGlobalTitleLineFrame3 )
					end
				end
				
				NotifGlobalTitleLine:completeAnimation()
				self.NotifGlobalTitleLine:setAlpha( 0 )
				NotifGlobalTitleLineFrame2( NotifGlobalTitleLine, {} )
				local NotifGlobalTitleFrame2 = function ( NotifGlobalTitle, event )
					local NotifGlobalTitleFrame3 = function ( NotifGlobalTitle, event )
						local NotifGlobalTitleFrame4 = function ( NotifGlobalTitle, event )
							local NotifGlobalTitleFrame5 = function ( NotifGlobalTitle, event )
								if not event.interrupted then
									NotifGlobalTitle:beginAnimation( "keyframe", 39, false, true, CoD.TweenType.Bounce )
								end
								NotifGlobalTitle:setAlpha( 1 )
								if event.interrupted then
									self.clipFinished( NotifGlobalTitle, event )
								else
									NotifGlobalTitle:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
								end
							end
							
							if event.interrupted then
								NotifGlobalTitleFrame5( NotifGlobalTitle, event )
								return 
							else
								NotifGlobalTitle:beginAnimation( "keyframe", 39, false, true, CoD.TweenType.Bounce )
								NotifGlobalTitle:setAlpha( 0 )
								NotifGlobalTitle:registerEventHandler( "transition_complete_keyframe", NotifGlobalTitleFrame5 )
							end
						end
						
						if event.interrupted then
							NotifGlobalTitleFrame4( NotifGlobalTitle, event )
							return 
						else
							NotifGlobalTitle:beginAnimation( "keyframe", 39, false, true, CoD.TweenType.Bounce )
							NotifGlobalTitle:setAlpha( 1 )
							NotifGlobalTitle:registerEventHandler( "transition_complete_keyframe", NotifGlobalTitleFrame4 )
						end
					end
					
					if event.interrupted then
						NotifGlobalTitleFrame3( NotifGlobalTitle, event )
						return 
					else
						NotifGlobalTitle:beginAnimation( "keyframe", 400, false, false, CoD.TweenType.Linear )
						NotifGlobalTitle:registerEventHandler( "transition_complete_keyframe", NotifGlobalTitleFrame3 )
					end
				end
				
				NotifGlobalTitle:completeAnimation()
				self.NotifGlobalTitle:setAlpha( 0 )
				NotifGlobalTitleFrame2( NotifGlobalTitle, {} )
				local highlightFrame2 = function ( highlight, event )
					local highlightFrame3 = function ( highlight, event )
						local highlightFrame4 = function ( highlight, event )
							if not event.interrupted then
								highlight:beginAnimation( "keyframe", 159, false, true, CoD.TweenType.Linear )
							end
							highlight:setAlpha( 0.3 )
							highlight:setZRot( 360 )
							highlight:setScale( 1.2 )
							if event.interrupted then
								self.clipFinished( highlight, event )
							else
								highlight:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
							end
						end
						
						if event.interrupted then
							highlightFrame4( highlight, event )
							return 
						else
							highlight:beginAnimation( "keyframe", 80, false, true, CoD.TweenType.Linear )
							highlight:setAlpha( 1 )
							highlight:setZRot( 120 )
							highlight:setScale( 1.7 )
							highlight:registerEventHandler( "transition_complete_keyframe", highlightFrame4 )
						end
					end
					
					if event.interrupted then
						highlightFrame3( highlight, event )
						return 
					else
						highlight:beginAnimation( "keyframe", 280, false, false, CoD.TweenType.Linear )
						highlight:registerEventHandler( "transition_complete_keyframe", highlightFrame3 )
					end
				end
				
				highlight:completeAnimation()
				self.highlight:setAlpha( 0 )
				self.highlight:setZRot( 0 )
				self.highlight:setScale( 0.8 )
				highlightFrame2( highlight, {} )
				local imageGFrame2 = function ( imageG, event )
					local imageGFrame3 = function ( imageG, event )
						local imageGFrame4 = function ( imageG, event )
							if not event.interrupted then
								imageG:beginAnimation( "keyframe", 39, false, true, CoD.TweenType.Linear )
							end
							imageG:setLeftRight( true, false, 55.42, 290.59 )
							imageG:setTopBottom( true, false, 25, 127 )
							imageG:setAlpha( 0 )
							imageG:setScale( 1 )
							imageG:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_scanlines_add" ) )
							imageG:setShaderVector( 0, 2, 0, 0, 0 )
							imageG:setShaderVector( 1, 1, 0, 0, 0 )
							imageG:setShaderVector( 2, 0.02, 0, 0, 0 )
							if event.interrupted then
								self.clipFinished( imageG, event )
							else
								imageG:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
							end
						end
						
						if event.interrupted then
							imageGFrame4( imageG, event )
							return 
						else
							imageG:beginAnimation( "keyframe", 80, false, true, CoD.TweenType.Linear )
							imageG:setLeftRight( true, false, 93.72, 328.89 )
							imageG:setAlpha( 1 )
							imageG:setScale( 1.5 )
							imageG:registerEventHandler( "transition_complete_keyframe", imageGFrame4 )
						end
					end
					
					if event.interrupted then
						imageGFrame3( imageG, event )
						return 
					else
						imageG:beginAnimation( "keyframe", 319, false, false, CoD.TweenType.Linear )
						imageG:setLeftRight( true, false, 208.63, 443.8 )
						imageG:registerEventHandler( "transition_complete_keyframe", imageGFrame3 )
					end
				end
				
				imageG:completeAnimation()
				self.imageG:setLeftRight( true, false, 127.63, 362.8 )
				self.imageG:setTopBottom( true, false, 25, 127 )
				self.imageG:setAlpha( 0 )
				self.imageG:setScale( 3 )
				self.imageG:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_scanlines_add" ) )
				self.imageG:setShaderVector( 0, 2, 0, 0, 0 )
				self.imageG:setShaderVector( 1, 1, 0, 0, 0 )
				self.imageG:setShaderVector( 2, 0.02, 0, 0, 0 )
				imageGFrame2( imageG, {} )
				local imageRFrame2 = function ( imageR, event )
					local imageRFrame3 = function ( imageR, event )
						local imageRFrame4 = function ( imageR, event )
							if not event.interrupted then
								imageR:beginAnimation( "keyframe", 39, false, true, CoD.TweenType.Linear )
							end
							imageR:setLeftRight( true, false, 55.42, 290.59 )
							imageR:setTopBottom( true, false, 25, 127 )
							imageR:setAlpha( 0 )
							imageR:setScale( 1 )
							imageR:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_scanlines_add" ) )
							imageR:setShaderVector( 0, 2, 0, 0, 0 )
							imageR:setShaderVector( 1, 1, 0, 0, 0 )
							imageR:setShaderVector( 2, 0.02, 0, 0, 0 )
							if event.interrupted then
								self.clipFinished( imageR, event )
							else
								imageR:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
							end
						end
						
						if event.interrupted then
							imageRFrame4( imageR, event )
							return 
						else
							imageR:beginAnimation( "keyframe", 80, false, true, CoD.TweenType.Linear )
							imageR:setLeftRight( true, false, 17.52, 252.69 )
							imageR:setAlpha( 1 )
							imageR:setScale( 1.5 )
							imageR:registerEventHandler( "transition_complete_keyframe", imageRFrame4 )
						end
					end
					
					if event.interrupted then
						imageRFrame3( imageR, event )
						return 
					else
						imageR:beginAnimation( "keyframe", 319, false, false, CoD.TweenType.Linear )
						imageR:registerEventHandler( "transition_complete_keyframe", imageRFrame3 )
					end
				end
				
				imageR:completeAnimation()
				self.imageR:setLeftRight( true, false, -96.17, 139.01 )
				self.imageR:setTopBottom( true, false, 25, 127 )
				self.imageR:setAlpha( 0 )
				self.imageR:setScale( 3 )
				self.imageR:setMaterial( LUI.UIImage.GetCachedMaterial( "uie_scanlines_add" ) )
				self.imageR:setShaderVector( 0, 2, 0, 0, 0 )
				self.imageR:setShaderVector( 1, 1, 0, 0, 0 )
				self.imageR:setShaderVector( 2, 0.02, 0, 0, 0 )
				imageRFrame2( imageR, {} )
				local imageFrame2 = function ( image, event )
					local imageFrame3 = function ( image, event )
						local imageFrame4 = function ( image, event )
							if not event.interrupted then
								image:beginAnimation( "keyframe", 39, false, true, CoD.TweenType.Linear )
							end
							image:setAlpha( 1 )
							image:setScale( 1 )
							if event.interrupted then
								self.clipFinished( image, event )
							else
								image:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
							end
						end
						
						if event.interrupted then
							imageFrame4( image, event )
							return 
						else
							image:beginAnimation( "keyframe", 120, false, true, CoD.TweenType.Linear )
							image:setScale( 1.15 )
							image:registerEventHandler( "transition_complete_keyframe", imageFrame4 )
						end
					end
					
					if event.interrupted then
						imageFrame3( image, event )
						return 
					else
						image:beginAnimation( "keyframe", 319, false, false, CoD.TweenType.Linear )
						image:registerEventHandler( "transition_complete_keyframe", imageFrame3 )
					end
				end
				
				image:completeAnimation()
				self.image:setAlpha( 1 )
				self.image:setScale( 0 )
				imageFrame2( image, {} )

				Sound:completeAnimation()
				self.Sound:setPlaySoundDirect( true )
				self.Sound:playSound( "mpl_notification_tier_up", controller )
				self.clipFinished( Sound, {} )
				local ParticleFX01Frame2 = function ( ParticleFX01, event )
					local ParticleFX01Frame3 = function ( ParticleFX01, event )
						local ParticleFX01Frame4 = function ( ParticleFX01, event )
							local ParticleFX01Frame5 = function ( ParticleFX01, event )
								if not event.interrupted then
									ParticleFX01:beginAnimation( "keyframe", 80, false, false, CoD.TweenType.Linear )
								end
								ParticleFX01:setAlpha( 0 )
								ParticleFX01:setScale( 1 )
								if event.interrupted then
									self.clipFinished( ParticleFX01, event )
								else
									ParticleFX01:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
								end
							end
							
							if event.interrupted then
								ParticleFX01Frame5( ParticleFX01, event )
								return 
							else
								ParticleFX01:beginAnimation( "keyframe", 119, false, false, CoD.TweenType.Linear )
								ParticleFX01:setScale( 0.6 )
								ParticleFX01:registerEventHandler( "transition_complete_keyframe", ParticleFX01Frame5 )
							end
						end
						
						if event.interrupted then
							ParticleFX01Frame4( ParticleFX01, event )
							return 
						else
							ParticleFX01:beginAnimation( "keyframe", 80, false, false, CoD.TweenType.Linear )
							ParticleFX01:setAlpha( 1 )
							ParticleFX01:setScale( 0 )
							ParticleFX01:registerEventHandler( "transition_complete_keyframe", ParticleFX01Frame4 )
						end
					end
					
					if event.interrupted then
						ParticleFX01Frame3( ParticleFX01, event )
						return 
					else
						ParticleFX01:beginAnimation( "keyframe", 319, false, false, CoD.TweenType.Linear )
						ParticleFX01:registerEventHandler( "transition_complete_keyframe", ParticleFX01Frame3 )
					end
				end
				
				ParticleFX01:completeAnimation()
				self.ParticleFX01:setAlpha( 0 )
				self.ParticleFX01:setScale( 2 )
				ParticleFX01Frame2( ParticleFX01, {} )
			end,
			TimeUp = function ()
				self:setupElementClipCounter( 18 )

				local Side02Frame2 = function ( Side02, event )
					local Side02Frame3 = function ( Side02, event )
						local Side02Frame4 = function ( Side02, event )
							local Side02Frame5 = function ( Side02, event )
								if not event.interrupted then
									Side02:beginAnimation( "keyframe", 39, false, false, CoD.TweenType.Linear )
								end
								Side02:setLeftRight( true, false, 254, 374 )
								Side02:setTopBottom( true, false, 40.83, 112.83 )
								Side02:setAlpha( 0 )
								if event.interrupted then
									self.clipFinished( Side02, event )
								else
									Side02:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
								end
							end
							
							if event.interrupted then
								Side02Frame5( Side02, event )
								return 
							else
								Side02:beginAnimation( "keyframe", 60, false, false, CoD.TweenType.Linear )
								Side02:setAlpha( 1 )
								Side02:registerEventHandler( "transition_complete_keyframe", Side02Frame5 )
							end
						end
						
						if event.interrupted then
							Side02Frame4( Side02, event )
							return 
						else
							Side02:beginAnimation( "keyframe", 39, false, false, CoD.TweenType.Linear )
							Side02:setAlpha( 0 )
							Side02:registerEventHandler( "transition_complete_keyframe", Side02Frame4 )
						end
					end
					
					if event.interrupted then
						Side02Frame3( Side02, event )
						return 
					else
						Side02:beginAnimation( "keyframe", 270, false, false, CoD.TweenType.Linear )
						Side02:registerEventHandler( "transition_complete_keyframe", Side02Frame3 )
					end
				end
				
				Side02:completeAnimation()
				self.Side02:setLeftRight( true, false, 254, 374 )
				self.Side02:setTopBottom( true, false, 40.83, 112.83 )
				self.Side02:setAlpha( 1 )
				Side02Frame2( Side02, {} )
				local Side01Frame2 = function ( Side01, event )
					local Side01Frame3 = function ( Side01, event )
						local Side01Frame4 = function ( Side01, event )
							local Side01Frame5 = function ( Side01, event )
								if not event.interrupted then
									Side01:beginAnimation( "keyframe", 39, false, false, CoD.TweenType.Linear )
								end
								Side01:setLeftRight( true, false, -27, 93 )
								Side01:setTopBottom( true, false, 40.83, 112.83 )
								Side01:setAlpha( 0 )
								if event.interrupted then
									self.clipFinished( Side01, event )
								else
									Side01:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
								end
							end
							
							if event.interrupted then
								Side01Frame5( Side01, event )
								return 
							else
								Side01:beginAnimation( "keyframe", 60, false, false, CoD.TweenType.Linear )
								Side01:setAlpha( 1 )
								Side01:registerEventHandler( "transition_complete_keyframe", Side01Frame5 )
							end
						end
						
						if event.interrupted then
							Side01Frame4( Side01, event )
							return 
						else
							Side01:beginAnimation( "keyframe", 39, false, false, CoD.TweenType.Linear )
							Side01:setAlpha( 0 )
							Side01:registerEventHandler( "transition_complete_keyframe", Side01Frame4 )
						end
					end
					
					if event.interrupted then
						Side01Frame3( Side01, event )
						return 
					else
						Side01:beginAnimation( "keyframe", 270, false, false, CoD.TweenType.Linear )
						Side01:registerEventHandler( "transition_complete_keyframe", Side01Frame3 )
					end
				end
				
				Side01:completeAnimation()
				self.Side01:setLeftRight( true, false, -27, 93 )
				self.Side01:setTopBottom( true, false, 40.83, 112.83 )
				self.Side01:setAlpha( 1 )
				Side01Frame2( Side01, {} )
				local CenterShadowFrame2 = function ( CenterShadow, event )
					if not event.interrupted then
						CenterShadow:beginAnimation( "keyframe", 100, false, false, CoD.TweenType.Linear )
					end
					CenterShadow:setAlpha( 0 )
					if event.interrupted then
						self.clipFinished( CenterShadow, event )
					else
						CenterShadow:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
					end
				end
				
				CenterShadow:completeAnimation()
				self.CenterShadow:setAlpha( 0.4 )
				CenterShadowFrame2( CenterShadow, {} )
				local NotifCamoCenterBackingFrame2 = function ( NotifCamoCenterBacking, event )
					local NotifCamoCenterBackingFrame3 = function ( NotifCamoCenterBacking, event )
						local NotifCamoCenterBackingFrame4 = function ( NotifCamoCenterBacking, event )
							local NotifCamoCenterBackingFrame5 = function ( NotifCamoCenterBacking, event )
								if not event.interrupted then
									NotifCamoCenterBacking:beginAnimation( "keyframe", 39, false, false, CoD.TweenType.Linear )
								end
								NotifCamoCenterBacking:setAlpha( 0 )
								if event.interrupted then
									self.clipFinished( NotifCamoCenterBacking, event )
								else
									NotifCamoCenterBacking:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
								end
							end
							
							if event.interrupted then
								NotifCamoCenterBackingFrame5( NotifCamoCenterBacking, event )
								return 
							else
								NotifCamoCenterBacking:beginAnimation( "keyframe", 60, false, false, CoD.TweenType.Linear )
								NotifCamoCenterBacking:setAlpha( 0.5 )
								NotifCamoCenterBacking:registerEventHandler( "transition_complete_keyframe", NotifCamoCenterBackingFrame5 )
							end
						end
						
						if event.interrupted then
							NotifCamoCenterBackingFrame4( NotifCamoCenterBacking, event )
							return 
						else
							NotifCamoCenterBacking:beginAnimation( "keyframe", 39, false, false, CoD.TweenType.Linear )
							NotifCamoCenterBacking:setAlpha( 0 )
							NotifCamoCenterBacking:registerEventHandler( "transition_complete_keyframe", NotifCamoCenterBackingFrame4 )
						end
					end
					
					if event.interrupted then
						NotifCamoCenterBackingFrame3( NotifCamoCenterBacking, event )
						return 
					else
						NotifCamoCenterBacking:beginAnimation( "keyframe", 270, false, false, CoD.TweenType.Linear )
						NotifCamoCenterBacking:registerEventHandler( "transition_complete_keyframe", NotifCamoCenterBackingFrame3 )
					end
				end
				
				NotifCamoCenterBacking:completeAnimation()
				self.NotifCamoCenterBacking:setAlpha( 0.5 )
				NotifCamoCenterBackingFrame2( NotifCamoCenterBacking, {} )
				local CornerFillFrame2 = function ( CornerFill, event )
					local CornerFillFrame3 = function ( CornerFill, event )
						local CornerFillFrame4 = function ( CornerFill, event )
							local CornerFillFrame5 = function ( CornerFill, event )
								if not event.interrupted then
									CornerFill:beginAnimation( "keyframe", 39, false, false, CoD.TweenType.Linear )
								end
								CornerFill:setAlpha( 0 )
								if event.interrupted then
									self.clipFinished( CornerFill, event )
								else
									CornerFill:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
								end
							end
							
							if event.interrupted then
								CornerFillFrame5( CornerFill, event )
								return 
							else
								CornerFill:beginAnimation( "keyframe", 60, false, false, CoD.TweenType.Linear )
								CornerFill:setAlpha( 1 )
								CornerFill:registerEventHandler( "transition_complete_keyframe", CornerFillFrame5 )
							end
						end
						
						if event.interrupted then
							CornerFillFrame4( CornerFill, event )
							return 
						else
							CornerFill:beginAnimation( "keyframe", 39, false, false, CoD.TweenType.Linear )
							CornerFill:setAlpha( 0 )
							CornerFill:registerEventHandler( "transition_complete_keyframe", CornerFillFrame4 )
						end
					end
					
					if event.interrupted then
						CornerFillFrame3( CornerFill, event )
						return 
					else
						CornerFill:beginAnimation( "keyframe", 270, false, false, CoD.TweenType.Linear )
						CornerFill:registerEventHandler( "transition_complete_keyframe", CornerFillFrame3 )
					end
				end
				
				CornerFill:completeAnimation()
				self.CornerFill:setAlpha( 1 )
				CornerFillFrame2( CornerFill, {} )
				local CornerFill0Frame2 = function ( CornerFill0, event )
					local CornerFill0Frame3 = function ( CornerFill0, event )
						local CornerFill0Frame4 = function ( CornerFill0, event )
							local CornerFill0Frame5 = function ( CornerFill0, event )
								if not event.interrupted then
									CornerFill0:beginAnimation( "keyframe", 39, false, false, CoD.TweenType.Linear )
								end
								CornerFill0:setAlpha( 0 )
								if event.interrupted then
									self.clipFinished( CornerFill0, event )
								else
									CornerFill0:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
								end
							end
							
							if event.interrupted then
								CornerFill0Frame5( CornerFill0, event )
								return 
							else
								CornerFill0:beginAnimation( "keyframe", 60, false, false, CoD.TweenType.Linear )
								CornerFill0:setAlpha( 1 )
								CornerFill0:registerEventHandler( "transition_complete_keyframe", CornerFill0Frame5 )
							end
						end
						
						if event.interrupted then
							CornerFill0Frame4( CornerFill0, event )
							return 
						else
							CornerFill0:beginAnimation( "keyframe", 39, false, false, CoD.TweenType.Linear )
							CornerFill0:setAlpha( 0 )
							CornerFill0:registerEventHandler( "transition_complete_keyframe", CornerFill0Frame4 )
						end
					end
					
					if event.interrupted then
						CornerFill0Frame3( CornerFill0, event )
						return 
					else
						CornerFill0:beginAnimation( "keyframe", 270, false, false, CoD.TweenType.Linear )
						CornerFill0:registerEventHandler( "transition_complete_keyframe", CornerFill0Frame3 )
					end
				end
				
				CornerFill0:completeAnimation()
				self.CornerFill0:setAlpha( 1 )
				CornerFill0Frame2( CornerFill0, {} )
				local CornerStrokeFrame2 = function ( CornerStroke, event )
					local CornerStrokeFrame3 = function ( CornerStroke, event )
						local CornerStrokeFrame4 = function ( CornerStroke, event )
							local CornerStrokeFrame5 = function ( CornerStroke, event )
								if not event.interrupted then
									CornerStroke:beginAnimation( "keyframe", 39, false, false, CoD.TweenType.Linear )
								end
								CornerStroke:setAlpha( 0 )
								if event.interrupted then
									self.clipFinished( CornerStroke, event )
								else
									CornerStroke:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
								end
							end
							
							if event.interrupted then
								CornerStrokeFrame5( CornerStroke, event )
								return 
							else
								CornerStroke:beginAnimation( "keyframe", 60, false, false, CoD.TweenType.Linear )
								CornerStroke:setAlpha( 1 )
								CornerStroke:registerEventHandler( "transition_complete_keyframe", CornerStrokeFrame5 )
							end
						end
						
						if event.interrupted then
							CornerStrokeFrame4( CornerStroke, event )
							return 
						else
							CornerStroke:beginAnimation( "keyframe", 39, false, false, CoD.TweenType.Linear )
							CornerStroke:setAlpha( 0 )
							CornerStroke:registerEventHandler( "transition_complete_keyframe", CornerStrokeFrame4 )
						end
					end
					
					if event.interrupted then
						CornerStrokeFrame3( CornerStroke, event )
						return 
					else
						CornerStroke:beginAnimation( "keyframe", 270, false, false, CoD.TweenType.Linear )
						CornerStroke:registerEventHandler( "transition_complete_keyframe", CornerStrokeFrame3 )
					end
				end
				
				CornerStroke:completeAnimation()
				self.CornerStroke:setAlpha( 1 )
				CornerStrokeFrame2( CornerStroke, {} )
				local CornerStroke0Frame2 = function ( CornerStroke0, event )
					local CornerStroke0Frame3 = function ( CornerStroke0, event )
						local CornerStroke0Frame4 = function ( CornerStroke0, event )
							local CornerStroke0Frame5 = function ( CornerStroke0, event )
								if not event.interrupted then
									CornerStroke0:beginAnimation( "keyframe", 39, false, false, CoD.TweenType.Linear )
								end
								CornerStroke0:setAlpha( 0 )
								if event.interrupted then
									self.clipFinished( CornerStroke0, event )
								else
									CornerStroke0:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
								end
							end
							
							if event.interrupted then
								CornerStroke0Frame5( CornerStroke0, event )
								return 
							else
								CornerStroke0:beginAnimation( "keyframe", 60, false, false, CoD.TweenType.Linear )
								CornerStroke0:setAlpha( 1 )
								CornerStroke0:registerEventHandler( "transition_complete_keyframe", CornerStroke0Frame5 )
							end
						end
						
						if event.interrupted then
							CornerStroke0Frame4( CornerStroke0, event )
							return 
						else
							CornerStroke0:beginAnimation( "keyframe", 39, false, false, CoD.TweenType.Linear )
							CornerStroke0:setAlpha( 0 )
							CornerStroke0:registerEventHandler( "transition_complete_keyframe", CornerStroke0Frame4 )
						end
					end
					
					if event.interrupted then
						CornerStroke0Frame3( CornerStroke0, event )
						return 
					else
						CornerStroke0:beginAnimation( "keyframe", 270, false, false, CoD.TweenType.Linear )
						CornerStroke0:registerEventHandler( "transition_complete_keyframe", CornerStroke0Frame3 )
					end
				end
				
				CornerStroke0:completeAnimation()
				self.CornerStroke0:setAlpha( 1 )
				CornerStroke0Frame2( CornerStroke0, {} )
				local EdgeFillFrame2 = function ( EdgeFill, event )
					local EdgeFillFrame3 = function ( EdgeFill, event )
						local EdgeFillFrame4 = function ( EdgeFill, event )
							local EdgeFillFrame5 = function ( EdgeFill, event )
								if not event.interrupted then
									EdgeFill:beginAnimation( "keyframe", 39, false, false, CoD.TweenType.Linear )
								end
								EdgeFill:setAlpha( 0 )
								if event.interrupted then
									self.clipFinished( EdgeFill, event )
								else
									EdgeFill:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
								end
							end
							
							if event.interrupted then
								EdgeFillFrame5( EdgeFill, event )
								return 
							else
								EdgeFill:beginAnimation( "keyframe", 60, false, false, CoD.TweenType.Linear )
								EdgeFill:setAlpha( 1 )
								EdgeFill:registerEventHandler( "transition_complete_keyframe", EdgeFillFrame5 )
							end
						end
						
						if event.interrupted then
							EdgeFillFrame4( EdgeFill, event )
							return 
						else
							EdgeFill:beginAnimation( "keyframe", 39, false, false, CoD.TweenType.Linear )
							EdgeFill:setAlpha( 0 )
							EdgeFill:registerEventHandler( "transition_complete_keyframe", EdgeFillFrame4 )
						end
					end
					
					if event.interrupted then
						EdgeFillFrame3( EdgeFill, event )
						return 
					else
						EdgeFill:beginAnimation( "keyframe", 270, false, false, CoD.TweenType.Linear )
						EdgeFill:registerEventHandler( "transition_complete_keyframe", EdgeFillFrame3 )
					end
				end
				
				EdgeFill:completeAnimation()
				self.EdgeFill:setAlpha( 1 )
				EdgeFillFrame2( EdgeFill, {} )
				local EdgeFill0Frame2 = function ( EdgeFill0, event )
					local EdgeFill0Frame3 = function ( EdgeFill0, event )
						local EdgeFill0Frame4 = function ( EdgeFill0, event )
							local EdgeFill0Frame5 = function ( EdgeFill0, event )
								if not event.interrupted then
									EdgeFill0:beginAnimation( "keyframe", 39, false, false, CoD.TweenType.Linear )
								end
								EdgeFill0:setAlpha( 0 )
								if event.interrupted then
									self.clipFinished( EdgeFill0, event )
								else
									EdgeFill0:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
								end
							end
							
							if event.interrupted then
								EdgeFill0Frame5( EdgeFill0, event )
								return 
							else
								EdgeFill0:beginAnimation( "keyframe", 60, false, false, CoD.TweenType.Linear )
								EdgeFill0:setAlpha( 1 )
								EdgeFill0:registerEventHandler( "transition_complete_keyframe", EdgeFill0Frame5 )
							end
						end
						
						if event.interrupted then
							EdgeFill0Frame4( EdgeFill0, event )
							return 
						else
							EdgeFill0:beginAnimation( "keyframe", 39, false, false, CoD.TweenType.Linear )
							EdgeFill0:setAlpha( 0 )
							EdgeFill0:registerEventHandler( "transition_complete_keyframe", EdgeFill0Frame4 )
						end
					end
					
					if event.interrupted then
						EdgeFill0Frame3( EdgeFill0, event )
						return 
					else
						EdgeFill0:beginAnimation( "keyframe", 270, false, false, CoD.TweenType.Linear )
						EdgeFill0:registerEventHandler( "transition_complete_keyframe", EdgeFill0Frame3 )
					end
				end
				
				EdgeFill0:completeAnimation()
				self.EdgeFill0:setAlpha( 1 )
				EdgeFill0Frame2( EdgeFill0, {} )

				CornerFillWide:completeAnimation()
				self.CornerFillWide:setAlpha( 0 )
				self.clipFinished( CornerFillWide, {} )
				local DescBackingFrame2 = function ( DescBacking, event )
					local DescBackingFrame3 = function ( DescBacking, event )
						local DescBackingFrame4 = function ( DescBacking, event )
							if not event.interrupted then
								DescBacking:beginAnimation( "keyframe", 50, false, false, CoD.TweenType.Linear )
							end
							DescBacking:setAlpha( 0 )
							if event.interrupted then
								self.clipFinished( DescBacking, event )
							else
								DescBacking:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
							end
						end
						
						if event.interrupted then
							DescBackingFrame4( DescBacking, event )
							return 
						else
							DescBacking:beginAnimation( "keyframe", 50, false, false, CoD.TweenType.Linear )
							DescBacking:setAlpha( 0.9 )
							DescBacking:registerEventHandler( "transition_complete_keyframe", DescBackingFrame4 )
						end
					end
					
					if event.interrupted then
						DescBackingFrame3( DescBacking, event )
						return 
					else
						DescBacking:beginAnimation( "keyframe", 50, false, false, CoD.TweenType.Linear )
						DescBacking:setAlpha( 0 )
						DescBacking:registerEventHandler( "transition_complete_keyframe", DescBackingFrame3 )
					end
				end
				
				DescBacking:completeAnimation()
				self.DescBacking:setAlpha( 0.9 )
				DescBackingFrame2( DescBacking, {} )
				local DescFrame2 = function ( Desc, event )
					local DescFrame3 = function ( Desc, event )
						local DescFrame4 = function ( Desc, event )
							if not event.interrupted then
								Desc:beginAnimation( "keyframe", 50, false, false, CoD.TweenType.Linear )
							end
							Desc:setAlpha( 0 )
							if event.interrupted then
								self.clipFinished( Desc, event )
							else
								Desc:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
							end
						end
						
						if event.interrupted then
							DescFrame4( Desc, event )
							return 
						else
							Desc:beginAnimation( "keyframe", 50, false, false, CoD.TweenType.Linear )
							Desc:setAlpha( 1 )
							Desc:registerEventHandler( "transition_complete_keyframe", DescFrame4 )
						end
					end
					
					if event.interrupted then
						DescFrame3( Desc, event )
						return 
					else
						Desc:beginAnimation( "keyframe", 50, false, false, CoD.TweenType.Linear )
						Desc:setAlpha( 0 )
						Desc:registerEventHandler( "transition_complete_keyframe", DescFrame3 )
					end
				end
				
				Desc:completeAnimation()
				self.Desc:setAlpha( 1 )
				DescFrame2( Desc, {} )
				local NotifGlobalTitleLineFrame2 = function ( NotifGlobalTitleLine, event )
					local NotifGlobalTitleLineFrame3 = function ( NotifGlobalTitleLine, event )
						local NotifGlobalTitleLineFrame4 = function ( NotifGlobalTitleLine, event )
							local NotifGlobalTitleLineFrame5 = function ( NotifGlobalTitleLine, event )
								if not event.interrupted then
									NotifGlobalTitleLine:beginAnimation( "keyframe", 49, false, false, CoD.TweenType.Linear )
								end
								NotifGlobalTitleLine:setAlpha( 0 )
								if event.interrupted then
									self.clipFinished( NotifGlobalTitleLine, event )
								else
									NotifGlobalTitleLine:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
								end
							end
							
							if event.interrupted then
								NotifGlobalTitleLineFrame5( NotifGlobalTitleLine, event )
								return 
							else
								NotifGlobalTitleLine:beginAnimation( "keyframe", 49, false, false, CoD.TweenType.Linear )
								NotifGlobalTitleLine:setAlpha( 1 )
								NotifGlobalTitleLine:registerEventHandler( "transition_complete_keyframe", NotifGlobalTitleLineFrame5 )
							end
						end
						
						if event.interrupted then
							NotifGlobalTitleLineFrame4( NotifGlobalTitleLine, event )
							return 
						else
							NotifGlobalTitleLine:beginAnimation( "keyframe", 59, false, false, CoD.TweenType.Linear )
							NotifGlobalTitleLine:setAlpha( 0 )
							NotifGlobalTitleLine:registerEventHandler( "transition_complete_keyframe", NotifGlobalTitleLineFrame4 )
						end
					end
					
					if event.interrupted then
						NotifGlobalTitleLineFrame3( NotifGlobalTitleLine, event )
						return 
					else
						NotifGlobalTitleLine:beginAnimation( "keyframe", 100, false, false, CoD.TweenType.Linear )
						NotifGlobalTitleLine:registerEventHandler( "transition_complete_keyframe", NotifGlobalTitleLineFrame3 )
					end
				end
				
				NotifGlobalTitleLine:completeAnimation()
				self.NotifGlobalTitleLine:setAlpha( 1 )
				NotifGlobalTitleLineFrame2( NotifGlobalTitleLine, {} )
				local NotifGlobalTitleFrame2 = function ( NotifGlobalTitle, event )
					local NotifGlobalTitleFrame3 = function ( NotifGlobalTitle, event )
						local NotifGlobalTitleFrame4 = function ( NotifGlobalTitle, event )
							local NotifGlobalTitleFrame5 = function ( NotifGlobalTitle, event )
								if not event.interrupted then
									NotifGlobalTitle:beginAnimation( "keyframe", 49, false, false, CoD.TweenType.Linear )
								end
								NotifGlobalTitle:setAlpha( 0 )
								if event.interrupted then
									self.clipFinished( NotifGlobalTitle, event )
								else
									NotifGlobalTitle:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
								end
							end
							
							if event.interrupted then
								NotifGlobalTitleFrame5( NotifGlobalTitle, event )
								return 
							else
								NotifGlobalTitle:beginAnimation( "keyframe", 49, false, false, CoD.TweenType.Linear )
								NotifGlobalTitle:setAlpha( 1 )
								NotifGlobalTitle:registerEventHandler( "transition_complete_keyframe", NotifGlobalTitleFrame5 )
							end
						end
						
						if event.interrupted then
							NotifGlobalTitleFrame4( NotifGlobalTitle, event )
							return 
						else
							NotifGlobalTitle:beginAnimation( "keyframe", 59, false, false, CoD.TweenType.Linear )
							NotifGlobalTitle:setAlpha( 0 )
							NotifGlobalTitle:registerEventHandler( "transition_complete_keyframe", NotifGlobalTitleFrame4 )
						end
					end
					
					if event.interrupted then
						NotifGlobalTitleFrame3( NotifGlobalTitle, event )
						return 
					else
						NotifGlobalTitle:beginAnimation( "keyframe", 100, false, false, CoD.TweenType.Linear )
						NotifGlobalTitle:registerEventHandler( "transition_complete_keyframe", NotifGlobalTitleFrame3 )
					end
				end
				
				NotifGlobalTitle:completeAnimation()
				self.NotifGlobalTitle:setAlpha( 1 )
				NotifGlobalTitleFrame2( NotifGlobalTitle, {} )

				imageG:completeAnimation()
				self.imageG:setAlpha( 0 )
				self.clipFinished( imageG, {} )

				imageR:completeAnimation()
				self.imageR:setAlpha( 0 )
				self.clipFinished( imageR, {} )
				local imageFrame2 = function ( image, event )
					local imageFrame3 = function ( image, event )
						local imageFrame4 = function ( image, event )
							local imageFrame5 = function ( image, event )
								if not event.interrupted then
									image:beginAnimation( "keyframe", 50, false, false, CoD.TweenType.Linear )
								end
								image:setAlpha( 0 )
								if event.interrupted then
									self.clipFinished( image, event )
								else
									image:registerEventHandler( "transition_complete_keyframe", self.clipFinished )
								end
							end
							
							if event.interrupted then
								imageFrame5( image, event )
								return 
							else
								image:beginAnimation( "keyframe", 49, false, false, CoD.TweenType.Linear )
								image:setAlpha( 1 )
								image:registerEventHandler( "transition_complete_keyframe", imageFrame5 )
							end
						end
						
						if event.interrupted then
							imageFrame4( image, event )
							return 
						else
							image:beginAnimation( "keyframe", 60, false, false, CoD.TweenType.Linear )
							image:setAlpha( 0 )
							image:registerEventHandler( "transition_complete_keyframe", imageFrame4 )
						end
					end
					
					if event.interrupted then
						imageFrame3( image, event )
						return 
					else
						image:beginAnimation( "keyframe", 209, false, false, CoD.TweenType.Linear )
						image:registerEventHandler( "transition_complete_keyframe", imageFrame3 )
					end
				end
				
				image:completeAnimation()
				self.image:setAlpha( 1 )
				imageFrame2( image, {} )
			end
		}
	}

	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.NotifCamoCenterBacking:close()
		element.NotifGlobalTitleLine:close()
		element.NotifGlobalTitle:close()
		element.Side02:close()
		element.Side01:close()
		element.CornerFill:close()
		element.CornerFill0:close()
		element.CornerStroke:close()
		element.CornerStroke0:close()
		element.EdgeFill:close()
		element.EdgeFill0:close()
		element.CornerFillWide:close()
		element.Desc:close()
		element.imageG:close()
		element.imageR:close()
		element.image:close()
	end )
	
	if PostLoadFunc then
		PostLoadFunc( self, controller, menu )
	end
	
	return self
end
