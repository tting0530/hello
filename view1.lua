-----------------------------------------------------------------------------------------
--
-- view1.lua
--
-----------------------------------------------------------------------------------------

local gameUI = {}

function scene:create( event )
   local sceneGroup = self.view
  
    background = display.newImageRect("Fruit/BG_Forest.png", display.comtentWidth, display.contentHeight)
   background.x, background.y = display.contentWidth/2, display.contentHeight/2
--hp
   gameUI[0]=display.newImageRect("Fruit/hp.png", 300, 100)
   gameUI[0].x, gameUI[0].y = display.contentWidth/2, display.contentHeight/2
--달력
   gameUI[1]=display.newImageRect("Fruit/calendar.png", 100, 100)
   gameUI[1].x, gameUI[0].y = display.contentWidth/2, display.contentHeight/2
--환경설정
   gameUI[2]=display.newImageRect("Fruit/setting.png", 100, 100)
   gameUI[2].x, gameUI[0].y = display.contentWidth/2, display.contentHeight/2

end

function scene:show( event )
   local sceneGroup = self.view
   local phase = event.phase
   
   if phase == "will" then
   elseif phase == "did" then
      -- e.g. start timers, begin animation, play audio, etc.
   end   
end

function scene:hide( event )
   local sceneGroup = self.view
   local phase = event.phase
   
   if event.phase == "will" then
      -- e.g. stop timers, stop animation, unload sounds, etc.)
   elseif phase == "did" then
   end
end

function scene:destroy( event )
   local sceneGroup = self.view
end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene
