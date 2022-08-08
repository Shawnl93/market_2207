'./lib/item'

describe Item do
  before :each do
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: '$0.50'})
  end

  it "exists" do
    expect(@item1).to be_instance_of(Item)
    expect(@item2).to be_instance_of(Item)
  end
end