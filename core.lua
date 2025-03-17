local function RunDisableAddonProfilingCvarCmds()
    local ret, err = pcall(function()
        C_CVar.RegisterCVar("addonProfilerEnabled", "1")
        C_CVar.SetCVar("addonProfilerEnabled", "0")
    end)

    if ret then
        print("[DAP] Addon profiling disabled.")
    else
        print("[DAP] Failed to disable addon profiling: " .. err)
    end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", RunDisableAddonProfilingCvarCmds)
