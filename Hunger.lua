local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V1/Source.lua"))()

---====== Create entity ======---

local entity = Spawner.createEntity({
    CustomName = "Hunger",
    Model = "https://github.com/catminetry/Hunger-V1/blob/main/Hunger.rbxm?raw=true", -- Your entity's model url here ("rbxassetid://1234567890" or GitHub raw url)
    Speed = 1000,
    MoveDelay = 1,
    HeightOffset = 0,
    CanKill = true,
    KillRange = 10000,
    SpawnInFront = true,
    ShatterLights = true,
    FlickerLights = {
        Enabled = false,
        Duration = 1
    },
    Cycles = {
        Min = 1,
        Max = 7,
        Delay = 1
    },
    CamShake = {
        Enabled = false,
        Values = {1.5, 20, 0.1, 1},
        Range = 100
    },
    ResistCrucifix = false,
    BreakCrucifix = true,
    DeathMessage = {"You die to Hunger", "if you meet it", "please hide", "when it going,", "you can continund..."},
    IsCuriousLight = false
})

---====== Debug ======---

entity.Debug.OnEntitySpawned = function()
    local cue2 = Instance.new("Sound")
	cue2.Parent = game.Workspace
	Instance.new = "Spawn"
	cue2.SoundId = "rbxassetid://9125713501"
	cue2.Volume = 999999998999
	cue2.PlaybackSpeed = 0.5
	cue2:Play()
    wait(2) 
    print("Entity has spawned")
end

entity.Debug.OnEntityDespawned = function()
    wait(2)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Drop56796/Hunger-Achievement/main/Hunger%20Achievement.lua"))()
end

entity.Debug.OnEntityStartMoving = function()
    print("Entity started moving")
end

entity.Debug.OnEntityFinishedRebound = function()
    print("Entity finished rebound")
end

entity.Debug.OnEntityEnteredRoom = function(room)
    print("Entity entered room:", room)
end

entity.Debug.OnLookAtEntity = function()
    print("Player looking at entity")
end

entity.Debug.OnDeath = function()
    print("Player has died")
end
---====== Run entity ======---
Spawner.runEntity(entity)
