pico-8 cartridge // http://www.pico-8.com
version 43
__lua__
-- onDown function --
-- k = 0,1,2,3 4,5
-- f = function to run
function onDown(k, f)
  if btn(k) then
    f()
  end
end

-- onClick function --
-- k = 0,1,2,3 4,5
-- f = function to run
function onClick(k, f)
  if btnp(k) then
    f()
  end
end

-- Basic collision function between object and flag --
-- o = {x, y, w (tile), h (tile)}
-- sd = { mapX, mapY }
-- f = flag number
function collide(o, sd, f)
  local tx = flr(o.x / 8) + (sd.mapX * 16)
  local ty = flr(o.y / 8) + (sd.mapY * 16)
  local tw = flr((o.x + o.w * 8 - 1) / 8) + (sd.mapX * 16)
  local th = flr((o.y + o.h * 8 - 1) / 8) + (sd.mapY * 16)

  return fget(mget(tx, ty), f)
      or fget(mget(tw, ty), f)
      or fget(mget(tx, th), f)
      or fget(mget(tw, th), f)
end
