function love.load()
   player = {}
   player.x = 500
   player.y = 500
   
   player.sprite = love.graphics.newImage('sprites/Phillip Ray Lester.png')
end

function love.update()

end

function love.draw()
    love.graphics.draw(player.sprite, player.x, player.y)
end
