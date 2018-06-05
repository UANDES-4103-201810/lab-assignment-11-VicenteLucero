FactoryBot.define do

  factory :message do
    user_id nil
    date "2018-06-05 13:52:33"
    content "MyString"
  end

  factory :user do
    username "MyString"
    email "MyString"
    password "MyString"
  end



# Add other factories in here
end