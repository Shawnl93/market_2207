require './lib/item'
require './lib/vendor'

describe Vendor do
  before :each do
    @vendor = Vendor.new("Rocky Mountain Fresh")
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
end
