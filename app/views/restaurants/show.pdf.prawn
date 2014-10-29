pdf.text "Retaurants on Yelp.com are", :size => 30, :style => :bold

pdf.move_down 20

restaurant = @restaurants.map do |r| 
	[
		r.name,
		r.address,
		r.phone,
	]
	end

pdf.table restaurant

pdf.text "Total: #{}"