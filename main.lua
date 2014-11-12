function explore()
   if #c_state.desired_items > 0 then
    --
  elseif c_state.explored() then
    command('G>')
  else
    command('o')
  end
end

function start_turn()
  crawl.mpr(map.knowlege[10][10].seen)
  if (#c_state.enemies() == 0) then
    explore()
  else
    crawl.mpr("Watch out!\n")
    hit_closest()
  end
end
  
