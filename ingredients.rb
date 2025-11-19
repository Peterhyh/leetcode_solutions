def cakes(recipe, available)
  recipe.map do |ingredient, amount_needed|
    if available[ingredient].nil? || available[ingredient] < amount_needed
      return 0
    else
      available[ingredient]/amount_needed
    end
  end.min
end

recipe = {"flour"=>500, "sugar"=>200, "eggs"=>1}
ingredients = {"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}
#should return 2

puts cakes(recipe, ingredients)