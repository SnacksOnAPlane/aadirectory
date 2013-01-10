namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		50.times do |n|
			last_name = Faker::Name.last_name
			first_name = Faker::Name.first_name
			address = Faker::Address.street_address + "\n" + Faker::Address.city + ", " + Faker::Address.state_abbr + " " + Faker::Address.zip_code
			home_phone = Faker::PhoneNumber.phone_number
			cell_phone = Faker::PhoneNumber.cell_phone
			Member.create!(last_name: last_name,
										 first_name: first_name,
										 address: address,
										 home_phone: home_phone,
										 cell_phone: cell_phone)
		end
	end
end
