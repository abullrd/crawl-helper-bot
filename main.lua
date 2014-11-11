return {
  explore = function()
    if #crawl_state.desired_items() > 0 then
      --
    elseif crawl_state.explored() then
      command('G>')
    else
      command('o')
    end
  end,
  
  start_turn = function ()
    if (#crawl_state.enemies() == 0) then
      explore()
    else
      crawl.mpr("Watch out!\n")
      hit_closest()
    end
  end
}
