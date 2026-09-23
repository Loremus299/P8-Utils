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

sd = {
  mapX = 0,
  mapY = 0
}
