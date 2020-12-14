SWEP.Base = "arccw_mw2_abase"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - MW2" -- edit this if you like
SWEP.AdminOnly = false
SWEP.WeaponCamBone = tag_camera

SWEP.PrintName = "AUG"
SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "Fully automatic, all purpose weapon."

if CLIENT and GetConVar("arccw_mw2cl_trivia"):GetBool() then
SWEP.Trivia_Manufacturer = "FN Herstal"
SWEP.Trivia_Calibre = "5.56x45mm NATO"
SWEP.Trivia_Mechanism = "Gas-Operated"
SWEP.Trivia_Country = "Austria"
SWEP.Trivia_Year = 1978
end

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/fesiugmw2/c_steyr.mdl"
SWEP.MirrorVMWM = false
SWEP.WorldModel = "models/weapons/w_rif_aug.mdl"
SWEP.ViewModelFOV = 65

SWEP.DefaultBodygroups = "100000"

SWEP.Damage = 30 * GetConVar("arccw_mw2_bal_dmgmul"):GetFloat()
SWEP.DamageMin = 20 * GetConVar("arccw_mw2_bal_dmgmul"):GetFloat() -- damage done at maximum range
SWEP.Range = 1300 * 0.025  -- GAME UNITS * 0.025 = METRES
SWEP.Penetration = 7
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any


SWEP.ChamberSize = 1 * GetConVar("arccw_mw2_chambering"):GetInt()
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 45
SWEP.ReducedClipSize = 15

SWEP.VisualRecoilMult = 0
SWEP.Recoil = 0.5
SWEP.RecoilSide = 0.4
SWEP.RecoilRise = 0

SWEP.Delay = 0.065 -- lazy, fix this l8r btich -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0,
    },
}

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_smg1"}
SWEP.NPCWeight = 150

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250

SWEP.Primary.Ammo = "smg1" -- what ammo type the gun uses

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 105 -- pitch of shoot sound

SWEP.ShootSound =			"weapons/fesiugmw2/fire/aug.wav"
--SWEP.DistantShootSound =	"weapons/fesiugmw2/fire_distant/aug.wav"
SWEP.ShootDrySound =        "weapons/fesiugmw2/fire/dryfire_rifle.wav"
SWEP.ShootSoundSilenced =	"weapons/fesiugmw2/fire/m4_sil.wav"

SWEP.MuzzleEffect = "muzzleflash_4"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 95
SWEP.ShellScale = 1.5
SWEP.ShellRotateAngle = Angle(0, 90, 0)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.875
SWEP.SightedSpeedMult = 0.35
SWEP.SightTime = 0.350

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.04, -6.026, 0.68),
    Ang = Angle(0.203, 0, 0),
    Magnification = 1.3,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(10.479, 0, -1.321)
SWEP.CustomizeAng = Angle(18.2, 39.4, 14.8)

SWEP.HolsterPos = Vector(3, 0, 0)
SWEP.HolsterAng = Angle(-10, 25, 0)

SWEP.SprintPos = Vector(0, 0, 1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 27

SWEP.AttachmentElements = {
    ["norail"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
    ["nors"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["optic_mw2_mp5krearsight"] = { VMBodygroups = {{ind = 2, bg = 0}} },
    ["grip"] = { VMBodygroups = {{ind = 1, bg = 1}} },
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

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic","mw2_steyrrearsight"}, -- what kind of attachments can fit here, can be string or table
        Bone = "tag_weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(6.972, 0, 4.018), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wang = Angle(-9.738, 0, 180)
        },
        SlideAmount = {
            vmin = Vector(0, 0, 3.5),
            vmax = Vector(3, 0, 3.5),
        },
        InstalledEles = {"nors"},
        MergeSlots = {2},
    },
    {
        Slot = "mw2_augscope",
        Bone = "tag_weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(1.6, 0, 2.3), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(0, 0, 0),
            wang = Angle(0, 0, 0)
        },
        Hidden = true,
        InstalledEles = {"norail", "nors"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(13.7, 0, 1.7),
            vang = Angle(0, 0, 0),
            wpos = Vector(33.719, -2.122, -5.573),
            wang = Angle(0, 6.034, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "bipod", "foregrip_mw2exclusive"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(6, 0, 0.4),
            vang = Angle(0, 0, 0),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-2.461, -6.525, 176.662)
        },
        Installed = "foregrip_exclusive",
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(12.5, -1, 2.25), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 90),
            wpos = Vector(15.625, -0.253, -6.298),
            wang = Angle(-8.829, -0.556, 90)
        },
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
            vpos = Vector(-2, -0.6, 1.8),
            vang = Angle(0, 0, 0),
            wpos = Vector(5.36, 0.739, -5.401),
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

SWEP.Hook_TranslateAnimation = function(wep, anim)
	local attached = wep.Attachments[4].Installed
	
	-- m203 is 1, masterkey is 2, fgrip is 3
	local attthing
		if 		attached 							then attthing = 3
		else 											 attthing = 0
	end
	
    if attthing == 3 then
        return anim .. "_fgrip"
    end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1/30
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
        Time = 11/30
    },
    ["idle_sprint"] = {
        Source = "sprint_loop",
        Time = 31/40
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
        Time = 11/30
    },
    ["draw"] = {
        Source = "pullout",
        Time = 26/30,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.9,
    },
    ["holster"] = {
        Source = "putaway",
        Time = 16/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.9,
    },
    ["ready"] = {
        Source = "pullout_first",
        Time = 36/30,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_styaug_reload_chamber_v1.wav", 	t = 9/30},
					},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = "fire",
        Time = 6/30,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_ads",
        Time = 6/30,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 102/35,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_styaug_reload_lift_v1.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_styaug_reload_clipout_v1.wav", 	t = 30/35},
						{s = "weapons/fesiugmw2/foley/wpfoly_styaug_reload_clipin_v1.wav", 		t = 71/35},
					},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 121/35,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_styaug_reload_lift_v1.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_styaug_reload_clipout_v1.wav", 	t = 30/35},
						{s = "weapons/fesiugmw2/foley/wpfoly_styaug_reload_clipin_v1.wav", 		t = 71/35},
						{s = "weapons/fesiugmw2/foley/wpfoly_styaug_reload_chamber_v1.wav",		t = 89/35},
					},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.6,
    },
------------------------------------------------
------ Here lies foregrip animations. awesome --
------------------------------------------------
    ["idle_fgrip"] = {
        Source = "idle_fgrip",
        Time = 1/30
    },
    ["enter_sprint_fgrip"] = {
        Source = "sprint_in_fgrip",
        Time = 11/30
    },
    ["idle_sprint_fgrip"] = {
        Source = "sprint_loop_fgrip",
        Time = 31/40
    },
    ["exit_sprint_fgrip"] = {
        Source = "sprint_out_fgrip",
        Time = 11/30
    },
    ["draw_fgrip"] = {
        Source = "pullout_fgrip",
        Time = 26/30,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.9,
    },
    ["holster_fgrip"] = {
        Source = "putaway_fgrip",
        Time = 16/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.9,
    },
    ["ready_fgrip"] = {
        Source = "pullout_first_fgrip",
        Time = 36/30,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_styaug_reload_chamber_v1.wav", 	t = 13/30},
					},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire_fgrip"] = {
        Source = "fire_fgrip",
        Time = 6/30,
        ShellEjectAt = 0,
    },
    ["fire_iron_fgrip"] = {
        Source = "fire_ads_fgrip",
        Time = 6/30,
        ShellEjectAt = 0,
    },
    ["reload_fgrip"] = {
        Source = "reload_fgrip",
        Time = 102/35,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_styaug_reload_lift_v1.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_styaug_reload_clipout_v1.wav", 	t = 30/35},
						{s = "weapons/fesiugmw2/foley/wpfoly_styaug_reload_clipin_v1.wav", 		t = 71/35},
					},
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.7,
    },
    ["reload_empty_fgrip"] = {
        Source = "reload_empty_fgrip",
        Time = 121/35,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_styaug_reload_lift_v1.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_styaug_reload_clipout_v1.wav", 	t = 30/35},
						{s = "weapons/fesiugmw2/foley/wpfoly_styaug_reload_clipin_v1.wav", 		t = 71/35},
						{s = "weapons/fesiugmw2/foley/wpfoly_styaug_reload_chamber_v1.wav",		t = 89/35},
					},
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.7,
    },
}