SWEP.Base = "arccw_mw2_abase"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - MW2" -- edit this if you like
SWEP.AdminOnly = false
SWEP.WeaponCamBone = tag_camera

SWEP.PrintName = "Barrett .50cal"
SWEP.Trivia_Class = "Sniper Rifle"
SWEP.Trivia_Desc = "Semi-automatic (single fire)"

if CLIENT and GetConVar("arccw_mw2cl_trivia"):GetBool() then
SWEP.Trivia_Manufacturer = "Barrett Firearms Manufacturing"
SWEP.Trivia_Calibre = ".50 BMG"
SWEP.Trivia_Mechanism = "Recoil-Operated"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1980
end

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/fesiugmw2/c_barrett_1.mdl"
SWEP.MirrorVMWM = false
SWEP.WorldModel = "models/weapons/w_snip_sg550.mdl"
SWEP.ViewModelFOV = 65

SWEP.Damage = 105
SWEP.DamageMin = 105 -- damage done at maximum range
SWEP.Range = 4000 * 0.025 -- in METRES
SWEP.Penetration = 22

SWEP.ChamberSize = 1 * GetConVar("arccw_mw2_chambering"):GetInt()
SWEP.Primary.ClipSize = 10 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 15
SWEP.ReducedClipSize = 5

SWEP.VisualRecoilMult = 0
SWEP.Recoil = 2
SWEP.RecoilSide = 5

SWEP.AccuracyMOA = 0.06 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 777 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 267

SWEP.Delay = 0.05 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_annabelle", "weapon_shotgun"}
SWEP.NPCWeight = 100

SWEP.Primary.Ammo = "SniperPenetratedRound" -- what ammo type the gun uses

SWEP.ShootVol = 140 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound =			"weapons/fesiugmw2/fire/barrett.wav"
--SWEP.DistantShootSound =	"weapons/fesiugmw2/fire_distant/cheytac_mp.wav"
SWEP.ShootSoundSilenced =	"weapons/fesiugmw2/fire/sniper_sil.wav"

SWEP.MuzzleEffect = "muzzleflash_6"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 80
SWEP.ShellScale = 1.5
SWEP.ShellRotateAngle = Angle(0, 90, 0)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.40
SWEP.SightTime = 0.4 / 1.25

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.778, -3, 1.1),
    Ang = Angle(2.7, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(3, 0, 0)
SWEP.HolsterAng = Angle(-10, 25, 0)

SWEP.SprintPos = Vector(0, 0, 1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(9.824, 2, -2.897)
SWEP.CustomizeAng = Angle(12.149, 30.547, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.AttachmentElements = {
    ["wepcamo-desert"]		= { VMSkin = 1 },
    ["wepcamo-arctic"]		= { VMSkin = 2 },
    ["wepcamo-woodland"]	= { VMSkin = 3 },
    ["wepcamo-digital"]		= { VMSkin = 4 },
    ["wepcamo-urban"]		= { VMSkin = 5 },
    ["wepcamo-bluetiger"]	= { VMSkin = 6 },
    ["wepcamo-redtiger"]	= { VMSkin = 7 },
    ["wepcamo-fall"]		= { VMSkin = 8 },
    ["wepcamo-whiteout"]	= { VMSkin = 9 },
    ["wepcamo-blackout"]        = { VMSkin = 10 },
    ["wepcamo-bushdweller"]     = { VMSkin = 11 },
    ["wepcamo-thunderstorm"]    = { VMSkin = 12 },
}

SWEP.BarrelLength = 50

SWEP.ExtraSightDist = 5
SWEP.Bipod_Integral = false

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic_sniper","optic"}, -- what kind of attachments can fit here, can be string or table
        Bone = "tag_weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(3, 0, 4.3), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
        },      
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(33, 0, 1.6),
            vang = Angle(0, 0, 0),
            wpos = Vector(26.648, 0.782, -8.042),
            wang = Angle(-9.79, 0, 180)
        },
		VMScale = Vector(2, 1.25, 1.25)
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(18, 0, 2.6), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 180),
            wpos = Vector(15.625, -0.253, -6.298),
            wang = Angle(-8.829, -0.556, 90)
        },
        InstalledEles = {"nolaser"},
    },
    {
        PrintName = "Fire Group",
        Slot = "fcg",
        DefaultAttName = "Standard FCG"
    },
    {
        PrintName = "Ammo Type",
        Slot = "ammo_bullet"
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
    {
        PrintName = "Charm", -- print name
        DefaultAttName = "None",
        Slot = "charm", -- what kind of attachments can fit here, can be string or table
        Bone = "tag_weapon", -- relevant bone any attachments will be mostly referring to
        FreeSlot = true,
        Offset = {
			vpos = Vector(3.7, -0.5, 0.75),
            vang = Angle(0, 0, 0),
            wang = Angle(-9.738, 0, 180)
        },
    },
    {
        PrintName = "Camouflage", -- print name
        DefaultAttName = "None",
        Slot = "mw2_wepcamo", -- what kind of attachments can fit here, can be string or table
        FreeSlot = true,
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 101/30
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
        Time = 10/30
    },
    ["idle_sprint"] = {
        Source = "sprint_loop",
        Time = 30/40
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
        Time = 10/30
    },
    ["draw"] = {
        Source = "pullout",
        Time = 40/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
    },
    ["holster"] = {
        Source = "putaway",
        Time = 36/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = "fire",
        Time = 11/30,
    },
    ["fire_iron"] = {
        Source = "fire_ads",
        Time = 5/30,
    },
    ["reload"] = {
        Source = "reload",
        Time = 94/24,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_m82_reload_lift_v1.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_m82_reload_clipout_v1.wav", 	t = 18/24},
						{s = "weapons/fesiugmw2/foley/wpfoly_m82_reload_clipin_v1.wav", 	t = 67/24},
					},
        Checkpoints = {18, 47},
        FrameRate = 30,
        LHIK = false,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 102/24,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_m82_reload_lift_v1.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_m82_reload_clipout_v1.wav", 	t = 18/24},
						{s = "weapons/fesiugmw2/foley/wpfoly_m82_reload_clipin_v1.wav", 	t = 64/24},
						{s = "weapons/fesiugmw2/foley/wpfoly_m82_reload_chamber_v1.wav", 	t = 87/24},
					},
        Checkpoints = {18, 54, 81, 99},
        FrameRate = 30,
        LHIK = false,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}