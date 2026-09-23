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

renderable = {
  spr = 0,

  x = 0, y = 0,
  w = 1, h = 1,
  fx = false, fy = false,

  animState = "",
  animIndex = 1,

  anims = {
    animName = {
      sprs = { 0, 1, 2 }
    }
  }
}

physicsBody = {
  x = 0, y = 0,
  w = 1, h = 1,
  dx = 0, dy = 0,
  mdx = 1, mdy = 1
}

playerBody = {
  x = 0, y = 0,
  w = 1, h = 1,
  dx = 0, dy = 0,
  ax = 0, ay = 0,
  mdx = 1, mdy = 1
}
