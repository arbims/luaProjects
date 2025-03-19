function love.load()
    x = 300
    y = 300
    dt = 6
end

function love.update()
    x = x + (1 * dt)
end

function love.draw()
    love.graphics.rectangle("line", 10, 10, 50, 80)
    love.graphics.rectangle("line", x, y, 50, 50)
end