module RecipesHelper
	def round_to(value, precision)
		if value.is_a? Float
			value.round(precision)
		else
			return value
		end
	end

	def go_on(from)
		from = "#{from.to_i + 10}"
		return from
	end

	def go_back(from)
		from = "#{from.to_i - 10}"
		return from
	end

end
