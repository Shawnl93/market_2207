require './lib/item'
require './lib/vendor'

describe Vendor do
  before :each do
    @vendor = Vendor.new("Rocky Mountain Fresh")
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: '$0.50'})
    @item3 = Item.new({name: "Peach-Raspberry Nice Cream", price: "$5.30"})
    @item4 = Item.new({name: "Banana Nice Cream", price: "$4.25"})
    @vendor2 = Vendor.new("Ba-Nom-a-Nom")
    @vendor3 = Vendor.new("Palisade Peach Shack")
  end

  it "exists" do
    expect(@vendor).to be_instance_of(Vendor)
  end

  it "has a name" do
    expect(@vendor.name).to eq("Rocky Mountain Fresh")
  end

  it "has a inventory" do
    expect(@vendor.inventory).to eq({})
  end

  it "can check stock" do
    expect(@vendor.check_stock(@item1)).to eq(0)
  end

  it "can stock items" do
    @vendor.stock(@item1, 30)
    expect(@vendor.inventory).to eq({@item1 => 30})
  end

  it "can check stock after being stocked" do
    @vendor.stock(@item1, 30)
    expect(@vendor.check_stock(@item1)).to eq(30)
  end

  it "can add more stock" do
    @vendor.stock(@item1, 30)
    @vendor.stock(@item1, 25)
    expect(@vendor.check_stock(@item1)).to eq(55)
  end

  it "can stock multiple items" do
    @vendor.stock(@item1, 30)
    @vendor.stock(@item1, 25)
    @vendor.stock(@item2, 12)
    expect(@vendor.inventory).to eq({@item1 => 55, @item2 =>12})
  end

  it "can calculate " do
    @vendor.stock(@item1, 35) #26.25
    @vendor.stock(@item2, 7) #3.5
    @vendor2.stock(@item4, 50) #212.50
    @vendor2.stock(@item3, 25) #132.50
    @vendor3.stock(@item1, 65) #47.75
    expect(@vendor.potential_revenue).to eq(29.75)
    expect(@vendor2.potential_revenue).to eq(345.00)
    expect(@vendor3.potential_revenue).to eq(48.75)
  end

end
