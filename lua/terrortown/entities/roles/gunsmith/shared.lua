if SERVER then

	AddCSLuaFile()

end

function ROLE:PreInitialize()
    self.color = Color(106, 183, 139, 255)

    self.abbr                       = "Gsmith"
    self.surviveBonus               = 0
    self.score.killsMultiplier      = 2
    self.score.teamKillsMultiplier  = -8
    self.preventFindCredits         = true
    self.preventKillCredits         = true
    self.preventTraitorAloneCredits = true
    self.preventWin                 = false
    self.unknownTeam                = false

    self.defaultTeam                = TEAM_INNOCENT

    self.conVarData = {
        pct          = 0.15, -- necessary: percentage of getting this role selected (per player)
        maximum      = 1, -- maximum amount of roles in a round
        minPlayers   = 6, -- minimum amount of players until this role is able to get selected
        credits      = 0, -- the starting credits of a specific role
        shopFallback = SHOP_FALLBACK_INNOCENT, -- granting the role access to the shop
        togglable    = true, -- option to toggle a role for a client if possible (F1 menu)
        random       = 33
    }
end

function ROLE:Initialize()
    roles.SetBaseRole(self, ROLE_INNOCENT)
end
