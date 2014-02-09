class Dessert

    def initialize(name, calories)
        @name = name
		@calories = calories
		@delicious = true
    end

	#name setter
	def name=(name)
  		@name = name
	end
	#name getter
	def name
  		@name
	end
	#calories setter
	def calories=(calories)
  		@calories = calories
	end
	#calories getter
	def calories
  		@calories
	end

    def healthy?

        if @calories < 200
			true
		else
			false
		end

    end

    def delicious?
        @delicious
    end

end

class JellyBean < Dessert

    def initialize(name, calories, flavor)

        super(name,calories)
		@flavor = flavor
		if flavor == "black licorice"
			@delicious = false
		end

    end

 

    def delicious?

        @delicious
		#Why doesn't Jellybean inherit dessert's "delicious?" method?
    end

end

cake = Dessert.new("cake",400)
puts "true == " + cake.delicious?.to_s
cake.name = "yummy cake"
puts "yummy cake == " + cake.name

black_licorice = JellyBean.new("black licorice jellybean", 5, "black licorice")
puts "false == " + black_licorice.delicious?.to_s

