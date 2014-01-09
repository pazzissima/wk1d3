smoothie_ingredients = {
"flax seeds" => "1 tbsp",
"chia seeds" => "1 tbsp",
"coconut flakes" => "1 tbsp",
"spirulina" => "1 tsp",
"pumpkin seeds" => "1 tbsp",
"oatmeal" => "1/4 cup",
"coco powder" => "1 tbsp",
"peanut butter" => "1 tbsp",
"almonds" => "1/4 cup",
"walnuts" => "1/4 cup",
"spinach" => "1/4 cup",
"greek yogurt" => "1/4 cup",
"nutritional yeast" => "1 tbsp",
"brussel sprouts" => "1/4 cup",
"asparagus" => "1/4 cup",
"kale" => "1/4 cup",
"broccoli rabe"	=> "1/4 cup",
"blue berries" => "1/4 cup",
"chopped banana" => "1/2 cup",
"straw berries" => "1/4 cup",
"mango" => "1/4 cup",
"hemp milk" => "1 cup"
}


class Blender

	attr_accessor:on
	def initialize(smoothie_ingredients)
		@on = false
		@smoothie_ingredients = smoothie_ingredients
	end


def blend
	if @on
		ingredients = @smoothie_ingredients.keys.sample(5)
		ingredients = ingredients.join.delete " "
		ingredients = ingredients.split("").shuffle.join
		puts ingredients
	else
		puts "Turn me on"
	end
end
def switch_on
	@on = true
end
end


blender = Blender.new(smoothie_ingredients)
#blender.switch_on
blender.blend




