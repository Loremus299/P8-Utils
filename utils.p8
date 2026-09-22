pico-8 cartridge // http://www.pico-8.com
version 43
__lua__
-- Basic starter template --
function template()
  function _init()
  end

  function _update()
  end

  function _draw()
    cls(1)
  end
end

-- Copy Table --

-- o = any table
function copyTable(o)
  local copy = {}
  for key, value in pairs(o) do
    copy[key] = value
  end
  return copy
end

-- onDown function --

-- k = 0,1,2,3 4,5
-- f = function to run
function onDown(k, f)
  if btn(k) then
    f()
  end
end

-- Basic collision function between object and flag --

-- o = {x, y, w (tile), h (tile)}
-- f = flag number
function collide(o, f)
  local tx = flr(o.x / 8)
  local ty = flr(o.y / 8)
  local tw = flr((o.x + o.w * 8 - 1) / 8)
  local th = flr((o.y + o.h * 8 - 1) / 8)

  return fget(mget(tx, ty), f)
      or fget(mget(tw, ty), f)
      or fget(mget(tx, th), f)
      or fget(mget(tw, th), f)
end
