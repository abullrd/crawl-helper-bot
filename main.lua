function explore()
   if #crawl_state.desired_items > 0 then
    --
  elseif crawl_state.explored() then
    command('G>')
  else
    command('o')
  end
end

function start_turn()
  if (#crawl_state.enemies() == 0) then
    explore()
  else
    crawl.mpr("Watch out!\n")
    hit_closest()
  end
end
  
