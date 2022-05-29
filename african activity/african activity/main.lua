function love.load()
   local tween = require 'tween'

   player = {}
   player.sprite = love.graphics.newImage('sprites/Phillip Ray Lester.png')
   player.x = 500
   player.y = 500
   
   speed = 1 

   bat = {}
   bat.sprite = love.graphics.newImage('sprites/bat.png')
   toggled = false
end

function love.update(dt)
    if love.keyboard.isDown("right") then
        player.x = player.x + speed
    end
  
    if love.keyboard.isDown("left") then
         player.x = player.x - speed
    end
    
    if love.keyboard.isDown("down") then
      player.y = player.y + speed
    end
    
    if love.keyboard.isDown("up") then
        player.y = player.y - speed
    end
  end

function love.draw()
    love.graphics.draw(player.sprite, player.x, player.y)
    if toggled == true then
        love.graphics.draw(bat.sprite)
    end
end
