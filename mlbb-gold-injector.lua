-- for Mobile Legends (or MLBB) 
-- As of October 28, 2026, the script is working.

local function goldInjector()
    gg.clearResults()
    gg.searchNumber("300", gg.TYPE_DWORD)

    gg.sleep(5000)

    gg.refineNumber("50", gg.TYPE_DWORD)
    gg.editAll("20000", gg.TYPE_DWORD)
    gg.clearResults()
end


local function mainMenu()
    local menu = gg.choice({
        "[ 🪙 ] Gold Injector",
        "[ ❌ ] Exit"
    }, nil, "👤 Script Made by E.")

    if menu == 1 then
        goldInjector()
    elseif menu == 2 then
        exitScript()
    end
end

while true do
    if gg.isVisible(true) then
        gg.setVisible(false)
        mainMenu()
    end

    gg.sleep(100)
end
