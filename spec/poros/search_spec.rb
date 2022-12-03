require 'rails_helper'

RSpec.describe Search do 
  it "exists and has attributes" do
    data = {activity: "Jumping jacks", participants: 2, price: 0}
    search = Search.new(data)

    expect(search).to be_a(Search)
    expect(data[:activity]).to eq("Jumping jacks")
    expect(data[:participants]).to eq(2)
    expect(data[:price]).to eq(0)
  end
end