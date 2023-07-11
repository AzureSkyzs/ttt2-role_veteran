if SERVER then

    AddCSLuaFile()

    resource.AddFile("materials/vgui/ttt/dynamic/roles/icon_veteran.vmt")

end



function ROLE:PreInitialize()
    self.color = Color(29, 33, 13, 255)

    self.abbr                       = "vet"
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
        shopFallback = SHOP_DISABLED, -- granting the role access to the shop
        togglable    = true, -- option to toggle a role for a client if possible (F1 menu)
        random       = 33
    }
end

function ROLE:Initialize()
    roles.SetBaseRole(self, ROLE_INNOCENT)
end

if SERVER then
    -- Give Loadout on respawn and rolechange
    function ROLE:GiveRoleLoadout(ply, isRoleChange)
        ply:GiveEquipmentWeapon("weapon_ttt2_guncrafter")

    end

    -- Remove Loadout on death and rolechange
    function ROLE:RemoveRoleLoadout(ply, isRoleChange)
        ply:StripWeapon("weapon_ttt2_guncrafter")

    end
end

