SWEP.Base = "arccw_mw2_abase"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - MW2" -- edit this if you like
SWEP.AdminOnly = false
SWEP.WeaponCamBone = tag_camera

SWEP.PrintName = "Fucket"
SWEP.Trivia_Class = "Sniper Rifle"
SWEP.Trivia_Desc = "Break-action double-barrel musket.\n\nAn 8Z moment."

if CLIENT and GetConVar("arccw_mw2cl_trivia"):GetBool() then
SWEP.Trivia_Manufacturer = "Musketeer with a time machine"
SWEP.Trivia_Calibre = "7.62x31mm NATO"
SWEP.Trivia_Mechanism = "Break-Action"
SWEP.Trivia_Country = "N/A"
SWEP.Trivia_Year = 2020
end

SWEP.Slot = 1

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/fesiugmw2/c_musket.mdl"
SWEP.MirrorVMWM = false
SWEP.WorldModel = "models/weapons/w_shotgun.mdl"
SWEP.ViewModelFOV = 80

SWEP.Damage = 80 * GetConVar("arccw_mw2_bal_dmgmul"):GetFloat()
SWEP.DamageMin = 120 * GetConVar("arccw_mw2_bal_dmgmul"):GetFloat() -- damage done at maximum range
SWEP.Range = 90 -- in METRES
SWEP.Penetration = 22

SWEP.ChamberSize = 0 * GetConVar("arccw_mw2_chambering"):GetInt()
SWEP.Primary.ClipSize = 2 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 4
SWEP.ReducedClipSize = 1

SWEP.VisualRecoilMult = 0
SWEP.Recoil = 4
SWEP.RecoilSide = 1.5

SWEP.AccuracyMOA = 8 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 100 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Delay = 60 / 400 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        PrintName = "SNGL",
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_annabelle", "weapon_shotgun"}
SWEP.NPCWeight = 100

SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses

SWEP.ShootVol = 120 -- volume of shoot sound
SWEP.ShootPitch = 70 -- pitch of shoot sound

SWEP.ShootSound =			"weapons/fesiugmw2/fire/fucket_u.wav"
--SWEP.DistantShootSound =	"weapons/arccw/nova/nova-1-distant.wav"
SWEP.ShootSoundSilenced =	"weapons/fesiugmw2/fleshymusket/musket_sil.wav"

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.ShellModel = "models/shells/shell_12gauge.mdl"
SWEP.ShellPitch = 100
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.40
SWEP.SightTime = 0.30

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.241, -3, 0.93),
    Ang = Angle(0.513, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.RevolverReload = true

SWEP.BulletBones = {
    [1] = "Weapon_Ammo1",
    [2] = "Weapon_Ammo"
}

SWEP.CaseBones = {
    [1] = "Weapon_Ammo1",
    [2] = "Weapon_Mag"
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.ActivePos = Vector(0, 2, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(3, 0, 0)
SWEP.HolsterAng = Angle(-10, 25, 0)

SWEP.SprintPos = Vector(0, 0, 1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.AttachmentElements = {
    ["nors"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {},
    },
    ["mount"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_rail.mdl",
                Bone = "Weapon_Break",
                Scale = Vector(1, 1, 1),
                Offset = {
                    pos = Vector(0, -2.2, -5),
                    ang = Angle(90, 0, -90)
                }
            }
        },
    }
}

SWEP.ShootVol = 130 -- volume of shoot sound

SWEP.BarrelLength = 20

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "ar2"

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp", "optic", "optic_sniper"}, -- what kind of attachments can fit here, can be string or table
        Bone = "Weapon_Break", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -2.2, -5), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(13.762, 0.832, -6.102),
            wang = Angle(-10.393, 0, 180)
        },
        InstalledEles = {"nors","mount"},		
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "Weapon_Break", 
        Offset = {
            vpos = Vector(0, -1.75, 12),
            vang = Angle(90, 0, -90),
            wpos = Vector(25, 0.825, -7.5),
            wang = Angle(-9.738, -1, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl", "bipod", "style_pistol"},
        Bone = "Weapon_Break",
        Offset = {
            vpos = Vector(0, -0.25, 3),
            vang = Angle(90, 0, -90),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-10.216, 0, 180)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "Weapon_Break",
        Offset = {
            vpos = Vector(-0.8, -2, 5), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, 180),
            wpos = Vector(19.625, 0.053, -6.298),
            wang = Angle(-8.829, -0.556, 90)
        },
    },
    {
        PrintName = "Fire Group",
        Slot = "fcg",
        DefaultAttName = "Standard FCG"
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },	
    {
        PrintName = "Ammo Type",
        Slot = "ammo_bullet"
    },
    {
        PrintName = "Charm", -- print name
        DefaultAttName = "None",
        Slot = "charm", -- what kind of attachments can fit here, can be string or table
        Bone = "Weapon_Main", -- relevant bone any attachments will be mostly referring to
        FreeSlot = true,
        Offset = {
            vang = Angle(90, 0, -90),
            wang = Angle(-9.738, 0, 180)
        },
        SlideAmount = { -- how far this attachment can slide in both directions.
            -- overrides Offset.
            vmin = Vector(0.8, -1.55, 2),
            vmax = Vector(0.8, -1.55, 6.9),
            wmin = Vector(5.36, 0.739, -5.401),
            wmax = Vector(5.36, 0.739, -5.401),
        },
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.5,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
    },
    ["ready"] = {
        Source = "deploy",
        Time = 50/60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
    },
    ["fire"] = {
        Source = "fire",
        Time = 0.4,
    },
    ["fire_iron"] = {
        Source = "iron",
        Time = 0.4,
    },
    ["reload"] = {
        Source = "wet",
        Time = 155/60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        Checkpoints = {20, 85, 117},
        FrameRate = 30,
        LHIK = false,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        LastClip1OutTime = 0.4,
    },
    ["reload_empty"] = {
        Source = "dry",
        Time = 155/60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        Checkpoints = {20, 85, 117},
        FrameRate = 30,
        LHIK = false,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        LastClip1OutTime = 0.4,
    },
}

sound.Add({
	name = 			"ArcCW_FML_MW2R_Musket_Open.1",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/fesiugmw2/fleshymusket/open.wav"
})

sound.Add({
	name = 			"ArcCW_FML_MW2R_Musket_In.1",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/fesiugmw2/fleshymusket/insert.wav"
})

sound.Add({
	name = 			"ArcCW_FML_MW2R_Musket_Close.1",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/fesiugmw2/fleshymusket/close.wav"
})