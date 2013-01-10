FactoryGirl.define do
	factory :member do
		last_name     "User"
		first_name    "Sample"
		child_names   "Adam, Amy"
		address       "1111 Fake Street\nAtlanta, GA 30328"
		home_phone    "404-555-5555"
		cell_phone    "404-111-1111"
	end
end