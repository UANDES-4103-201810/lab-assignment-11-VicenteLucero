require 'rails_helper'

RSpec.describe Message, type: :model do
  before(:all) do
    @user = create(:user)
  end
  it "valid attributtes" do
    @message=create(:message, user_id_id: 1, date: date.now, content:"message")
    expect(@message).to be_valid
  end
  it "nil user_id not valid" do
    @message=create(:message, user_id_id: nil)
    @message2=build(:message)
    expect(@message2).to_not be_valid
  end
  it "non existing user_id" do
    @message=create(:message, user_id_id: 10000000)
    @message3=build(:message)
    expect(@message3).to_not be_valid
  end
end