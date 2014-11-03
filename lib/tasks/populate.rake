namespace :db do
	desc "Create 100 users with random names and descriptions"
	task :populate => :environment do
		require 'populator'
		require 'faker'
			Restaurant.populate 100 do |r|
				r.name = Faker::Company.name
				r.address = Faker::Address.street_address
				r.phone = Faker::PhoneNumber.cell_phone
				r.website = Faker::Internet.url
				r.image = Faker::Avatar.image("my-own-slug", "50x50")
			end
			puts 'All done'
	end
end