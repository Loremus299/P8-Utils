pico-8 cartridge // http://www.pico-8.com
version 43
__lua__
sceneManager = {
  title = {
    init = function() end,
    update = function() end,
    draw = function() end,

    transition = false,
    transitionFun = function() end
  },
  cur = "title"
}

SceneData = {
  mapX = 0,
  mapY = 0
}

visibleObject = {
  spr = 0,

  x = 0, y = 0,
  w = 1, h = 1,
  fx = false, fy = false,

  animState = "",
  animIndex = 1,

  anims = {
    animName = { 1, 2, 3 }
  }
}

PhysicsObject = {
  dx = 0, dy = 0,
  mdx = 1, mdy = 1
}

interactiveObject = {
  ax = 0, ay = 0
}
