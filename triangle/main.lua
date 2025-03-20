function love.load()
    x = 300
    y = 300
    x2 = 2
    y2 = 20
    speed = 200
    drX = 1
    drY = 1
    screenWidth = 800
    screenHeight = 600
    rectWidth = 50
end

function love.update(dt)
    x = x + speed * dt * drX

    if x + rectWidth >= screenWidth or x <= 0 then
        drX = drX * -1
    end

    y = y + speed * dt * drY

    if y + rectWidth >= screenHeight or y <= 0 then
        drY = drY * -1
    end

    if love.keyboard.isDown("right") then
        x2 = x2 + speed * dt
    end

    if love.keyboard.isDown("left") then
        x2 = x2 - speed * dt
    end
end

function love.draw()
    love.graphics.rectangle("line", x2, y2, 100, 100)
    love.graphics.rectangle("line", x, y, rectWidth, rectWidth)
end