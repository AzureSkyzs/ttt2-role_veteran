-- Set up for ttt2 settings

SWEP.Base = "weapon_tttbase"
SWEP.Kind = WEAPON_ROLE --Makes in so that it goes in the special slot

SWEP.InLoadoutFor = ROLE_TRAITOR -- Make it so that it Auto spawns in the gunsmiths loadout

SWEP.AutoSpawnable = true-- Self explantory 

SWEP.CanBuy = { ROLE_TRAITOR }

--if ROLE_GUNSMITH then -- makes so the gunsmith cant drop the guncraft and it does not drop on death
--
--	SWEP.AllowDrop = false
--	SWEP:OnDrop = false
--
--else
--
--	SWEP.AllowDrop = true
--
--end

-- Basic Swep Stuff

SWEP.PrintName = "Guncrafter"
SWEP.Category = "Other"
SWEP.Author = "AzureSkys"
SWEP.Istructions = "A item used to craft guns"

SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.Dely = .5
SWEP.Primary.ClipSize = 10
SWEP.Primary.DefaultSize = 10
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "Pistol"

SWEP.Secondary.Ammo = "Pistol"
SWEP.Secondary.ClipSize = 10
SWEP.Secondary.DefaultSize = 10
SWEP.Secondary.Automatic = false


SWEP.Weight = 5
SWEP.AutoSwitchTo = false
SWEP.AutoSwitchfrom = false

SWEP.Slot = 1
SWEP.SlotPos = 2
SWEP.DrawAmmo = true
SWEP.DrawCrosshair = true


SWEP.ViewModel  = "models/weapons/c_pistol.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"

SWEP.UseHands = true

SWEP.ShootSound = Sound("weapons/pistol/pistol_fire1.wav")

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

	hook.Add( "CreateMove", "SecondaryAttack", function()
		if ( input.WasMousePressed( MOUSE_RIGHT ) ) then print( "Right mouse button was pressed" ) end
	end )

end
	
