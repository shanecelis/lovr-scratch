function lovr.load()
  model = lovr.graphics.newModel('models/pooh.obj')
  -- pal = lovr.graphics.newTexture('pooh.png')
end

function lovr.draw(pass)
  pass:text('Hello World!', 0, 1.7, -3, .5)
  pass:draw(model, 0, 1.7, -3)

 for _, hand in ipairs({ 'left', 'right' }) do
    for _, joint in ipairs(lovr.headset.getSkeleton(hand) or {}) do
      pass:points(unpack(joint, 1, 3))
    end
  end
end
