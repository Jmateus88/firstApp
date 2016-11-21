FactoryGirl.define do
	sequence(:email) { |n| "user#{n}@example.com" }
	factory :user do
		factory :user do
    		email 
    		password "123456"
		    first_name "Peter"
		    last_name "Example"
		    admin false
  		end
  	end
end

factory :admin, class: User do
  email 
  password "qwertyuiop"
  admin true
  first_name "Admin"
  last_name "User"
end