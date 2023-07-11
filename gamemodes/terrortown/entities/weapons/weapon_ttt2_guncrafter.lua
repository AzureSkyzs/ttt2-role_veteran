-- Set up for ttt2 settings

SWEP.Base = 'weapon_tttbase'

SWEP.Spawnable = true
SWEP.AutoSpawnable = false
SWEP.AdminSpawnable = true

SWEP.HoldType = 'pistol'

SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false

-- makes so the gunsmith cant drop the guncraft and it does not drop on death
if SERVER then
	AddCSLuaFile()

	resource.AddFile('')
else
	hook.Add('Initialize', 'TTTInitGuncrafterLang', function()
		LANG.AddToLanguage('English', 'ttt2_weapon_guncrafter_desc', 'Left click to open the crafting menu')
	end)

	SWEP.PrintName = "Guncrafter"
	SWEP.Author = "AzureSkys"

	SWEP.Slot = 7

	SWEP.ViewModelFOV = 54
	SWEP.ViewModelFlip = false

	SWEP.Category = "Other"
	SWEP.Icon = ''
	SWEP.EquipMenuData = {
		type = 'item_weapon',
		desc = 'ttt2_weapon_guncrafter_desc'
	}
end

SWEP.AllowDrop = false

SWEP.ViewModelFOV = 54
SWEP.ViewModelFlip = false


SWEP.AdminOnly = false
SWEP.InLoadoutFor = nil
SWEP.IsSilent = false
SWEP.NoSights = false
SWEP.UseHands = true
SWEP.Kind = WEAPON_EXTRA
SWEP.CanBuy = nil
SWEP.notBuyable = true
SWEP.LimitedStock = true
SWEP.globalLimited = true
SWEP.NoRandom = true


SWEP.Primary.Delay = 1
SWEP.Primary.Recoil = 6
SWEP.Primary.Automatic = false
SWEP.Primary.NumShots = 1
SWEP.Primary.Cone = 0.00001
SWEP.Primary.Ammo = ''
SWEP.Primary.ClipSize = 1
SWEP.Primary.ClipMax = 1
SWEP.Primary.DefaultClip = 1


SWEP.Weight = 5
SWEP.AutoSwitchTo = false
SWEP.AutoSwitchfrom = false

SWEP.DrawAmmo = true
SWEP.DrawCrosshair = true


SWEP.ViewModel = 'models/weapons/cstrike/c_pist_deagle.mdl'
SWEP.WorldModel = 'models/weapons/w_pist_deagle.mdl'
SWEP.Weight = 5
SWEP.EmitSound = Sound('Weapon_Deagle.Single')

SWEP.IronSightsPos = Vector(-6.361, -3.701, 2.15)
SWEP.IronSightsAng = Vector(0, 0, 0)

-- Functions for the attacks

function SWEP:PrimaryAttack()
	if CLIENT then
	
		if not self:CanPrimaryAttack() then
			return
		end

	end
	self:SetNextPrimaryFire(CurTime() + 0.01)	
	self:ShootBullet(15, 1, 0.1)
	self:EmitSound(self.ShootSound)
	self:TakePrimaryAmmo(1)

end

function SWEP:SecondaryAttack()

end
	
