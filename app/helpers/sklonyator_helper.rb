module SklonyatorHelper
	def sklonenie(skolko, негритенок, негритенка, негритят)
		ostatok = skolko % 10

		if (ostatok == 1)
			return негритенок
		end

		if (ostatok >= 2 && ostatok <= 4)
			return негритенка
		end
		
		if (ostatok > 4 || ostatok == 0)
			return негритят
		end	
	end
end