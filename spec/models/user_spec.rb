require 'rails_helper'

RSpec.describe User, type: :model do
  it "valid atribute" do
    @user = create(:user, username:"username" ,email:"something@some.dot",password:"1234567890")
    expect(@user).to be_valid
  end
  it "unique username" do
    @user2=build(:user, username:"tienenmasde20letras")
    expect(@user2).to be_valid
  end
  it "unique email" do
    @user3=build(:user,email:"something@some.dot")
    expect(@user3).to be_valid
  end
  it "username valid length" do
    @user4=build(:user, username: "tienenmasde20letras")
    expect(@user4).to be_valid
  end
end

