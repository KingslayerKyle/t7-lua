-- 66b2d86bd807f9fadd6b766e9c589f92
-- This hash is used for caching, delete to decompile the file again

require( "lua.Lobby.Process.LobbyProcess" )

Lobby.Core.AddProcessBack( LobbyData.UITargets.UI_ZMLOBBYLANGAME, LobbyData.UITargets.UI_MODESELECT, function ( f1_arg0, f1_arg1, f1_arg2 )
	return Lobby.ProcessNavigate.LeaveGameLobby( f1_arg0, f1_arg1, f1_arg2, LuaEnums.LEAVE_WITH_PARTY.WITHOUT, "" )
end )
Lobby.Core.AddProcessForward( LobbyData.UITargets.UI_ZMLOBBYONLINE, LobbyData.UITargets.UI_ZMLOBBYONLINECUSTOMGAME, function ( f2_arg0, f2_arg1, f2_arg2 )
	return Lobby.ProcessNavigate.ChangeToCustomGameLobby( f2_arg0, f2_arg1, f2_arg2 )
end )
Lobby.Core.AddProcessForward( LobbyData.UITargets.UI_ZMLOBBYONLINE, LobbyData.UITargets.UI_ZMLOBBYONLINEPUBLICGAME, function ( f3_arg0, f3_arg1, f3_arg2 )
	return Lobby.ProcessNavigate.ChangeToPublicGameLobby( f3_arg0, f3_arg1, f3_arg2 )
end )
Lobby.Core.AddProcessBack( LobbyData.UITargets.UI_ZMLOBBYONLINE, LobbyData.UITargets.UI_MODESELECT, function ( f4_arg0, f4_arg1, f4_arg2, f4_arg3 )
	return Lobby.ProcessNavigate.LeaveGameLobby( f4_arg0, f4_arg1, f4_arg2, f4_arg3, "" )
end )
Lobby.Core.AddProcessBack( LobbyData.UITargets.UI_ZMLOBBYONLINEPUBLICGAME, LobbyData.UITargets.UI_ZMLOBBYONLINE, function ( f5_arg0, f5_arg1, f5_arg2, f5_arg3 )
	return Lobby.ProcessNavigate.ChangeToPrivateGameLobby( f5_arg0, f5_arg1, f5_arg2, f5_arg3 )
end )
Lobby.Core.AddProcessBack( LobbyData.UITargets.UI_ZMLOBBYONLINECUSTOMGAME, LobbyData.UITargets.UI_ZMLOBBYONLINE, function ( f6_arg0, f6_arg1, f6_arg2, f6_arg3 )
	return Lobby.ProcessNavigate.ChangeToPrivateGameLobby( f6_arg0, f6_arg1, f6_arg2, f6_arg3 )
end )
Lobby.Core.AddProcessForward( LobbyData.UITargets.UI_ZMLOBBYONLINE, LobbyData.UITargets.UI_ZMLOBBYONLINETHEATER, function ( f7_arg0, f7_arg1, f7_arg2 )
	Lobby.Theater.OnSessionStart( f7_arg2 )
	return Lobby.ProcessNavigate.ChangeToCustomGameLobby( f7_arg0, f7_arg1, f7_arg2 )
end )
Lobby.Core.AddProcessBack( LobbyData.UITargets.UI_ZMLOBBYONLINETHEATER, LobbyData.UITargets.UI_ZMLOBBYONLINE, function ( f8_arg0, f8_arg1, f8_arg2, f8_arg3 )
	Lobby.Theater.OnSessionEnd( f8_arg1 )
	Lobby.ProcessNavigate.SetupLobbyMapAndGameType( f8_arg0, f8_arg2 )
	return Lobby.ProcessNavigate.ChangeToPrivateGameLobby( f8_arg0, f8_arg1, f8_arg2, f8_arg3 )
end )
