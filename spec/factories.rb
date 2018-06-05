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

  factory :User do
    username "VicenteLucero"
    email "vjlucero@miuandes.cl"
    password "1234567890"
  end

  factory :Message do
    user_id 1
    date Date.new(2019,5,5)
    content "hola, ¿como estas?"
  end

# Add other factories in here
end