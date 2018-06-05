require 'rails_helper'

RSpec.describe Message, type: :model do
  before(:all) do
    @user = create(:user)
  end
  it "valid attributtes" do
    @message=create(:message, user_id: 1)
    expect(@message).to be_valid
  end
  it "nil user_id not valid" do
    @message2=build(:message, user_id: nil)
    expect(@message2).to_not be_valid
  end
  it "non existing user_id" do
    @message3=build(:message, user_id: 10000000)
    expect(@message3).to_not be_valid
  end
end