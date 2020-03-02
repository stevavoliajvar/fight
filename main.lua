function love.load()
        player = { x=200, 
                   y=200,
                   yspeed=4,
                   xspeed=4,
                   dim=20,
                   direction='none'} -- player table
        player.img = love.graphics.newImage('troll_m.png')
        love.graphics.setBackgroundColor(1,1,1,1)
end

function love.update(dt)
    if love.keyboard.isDown('up') then
        player.direction = 'up'
        player.y = player.y - player.yspeed
    elseif love.keyboard.isDown('down') then
        player.direction = 'down'
        player.y = player.y + player.yspeed
    elseif love.keyboard.isDown('right') then
        player.direction = 'right'
        player.x = player.x + player.xspeed
    elseif love.keyboard.isDown('left') then
        player.direction = 'left'
        player.x = player.x - player.xspeed
    elseif love.keyboard.isDown( 'escape') then
        love.event.quit()
    end
end

function love.keypressed(key)
    print(key)
end

function love.draw()
    love.graphics.draw(player.img, player.x, player.y, 0, 1, 1, 1)
    love.graphics.circle("fill", player.x+50, player.y+50, 20)
end
