function love.load()
        player = { x=200, 
                   y=200,
                   yspeed=4,
                   xspeed=4,
                   dim=20,
                   direction='none'} -- player table
        player.img = love.graphics.newImage('img/troll_m.png')
        room = {}
        room.tile = love.graphics.newImage('img/cobble_blood1.png')
        music = love.audio.newSource("music/shemsa.mp3", "stream")
        music:play()
        love.graphics.setBackgroundColor(1,1,1,1)
--        map = make_map()
end


--[[function make_map()
    map = {}
    for y = 0, 640/32, 1 do
        local tmp = {}
        for x = 0, 480/32, 1 do
            table.insert(tmp, love.math.random(0,2))
        end
        table.insert(map, tmp)
    end
    return map
end
]]--

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
    -- crtamo pod
    for y = 0, 480/32, 1 do
        for x = 0, 640/32, 1 do
            love.graphics.draw(room.tile, x*32, y*32, 0, 1, 1, 1)
        end
    end
    love.graphics.draw(player.img, player.x, player.y, 0, 1, 1, 1)
end
