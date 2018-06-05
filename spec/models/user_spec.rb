require 'rails_helper'

RSpec.describe User, type: :model do
  it "valid atribute" do
    @user = create(:user, username:"username" ,email:"something@some.dot",password:"1234567890")
    expect(@user).to be_valid
  end
  it "unique username" do
    @user=create(:user, username:"tienenmasde20letras")
    @user2 = build(:user)
    expect(@user2).to_not be_valid
  end
  it "unique email" do
    @user=create(:user,email:"something@some.dot")
    @user3 = build(:user)
    expect(@user3).to_not be_valid
  end
  it "username valid length" do
    @user=create(:user, username: "tienenmasde20letras")
    @user4 = build(:user)
    expect(@user4).to be_valid
  end
end

