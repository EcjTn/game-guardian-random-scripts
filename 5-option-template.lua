

local function option1()
   -- Your code here
end


local function option2()
   -- Your code here
end


local function option3()
   -- Your code here
end


local function option4()
   -- Your code here
end


local function option5()
   -- Your code here
end


local function exitScript()
   os.exit()
end




local function mainMenu()

   local menu = gg.choice({

      "[ 💍 ]  Option 1",
      "[ ⚡ ]  Option 2",
      "[ 🧊 ]  Option 3",
      "[ 🐉 ]  Option 4",
      "[ 🔮 ]  Option 5",
      "[ ❌ ]  Exit"

   }, nil, "👤  Script Made by E.")


   if menu == 1 then

      option1()

   elseif menu == 2 then

      option2()

   elseif menu == 3 then

      option3()

   elseif menu == 4 then

      option4()

   elseif menu == 5 then

      option5()

   elseif menu == 6 then

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

