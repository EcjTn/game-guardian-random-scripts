local function coinInjector()
    gg.searchNumber("300", gg.TYPE_DWORD)
    gg.sleep(4000) -- Buy first item to adjust coin to 50
    gg.refineNumber("50", gg.TYPE_DWORD)
    gg.editAll("20000", gg.TYPE_DWORD)
end

local function mainMenu()
    local menu = gg.choice({
        "[ 🪙 ] Coin Injector",
        "[ ❌ ] Exit"
    }, nil, "👤 Script Made by E.")

    if menu == 1 then
        coinInjector()
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