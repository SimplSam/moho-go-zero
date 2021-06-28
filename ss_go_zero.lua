-- **************************************************
-- Tool to emulate Design mode keyboard toggle
-- Go to frame 0 and back
-- **************************************************

ScriptName = "SS_GoZero"

-- **************************************************
-- General information about this script #510628
-- **************************************************

SS_GoZero = {}

function SS_GoZero:Name()
    return 'Go to Frame Zero'
end

function SS_GoZero:Version()
    return '1.0'
end

function SS_GoZero:UILabel()
    return 'Go to Frame Zero'
end

function SS_GoZero:Creator()
    return 'SimplSam'
end

function SS_GoZero:Description()
    return "Toggle timeline to Frame 0 (Design mode) and back"
end


-- **************************************************
-- Is Relevant / Is Enabled
-- **************************************************

function SS_GoZero:IsRelevant(moho)
    return true
end

function SS_GoZero:IsEnabled(moho)
    return true
end

-- **************************************************
-- The guts of this script
-- **************************************************

function SS_GoZero:Run(moho)
    if (moho.frame ~= 0) then
        SS_GoZero.lastFrame = moho.frame
        moho:SetCurFrame(0)
    else
        if (SS_GoZero.lastFrame) then
            moho:SetCurFrame(SS_GoZero.lastFrame)
        end
    end
end
