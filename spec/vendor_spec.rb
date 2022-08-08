require './lib/item'
require './lib/vendor'

describe Vendor do
  before :each do
    @vendor = Vendor.new("Rocky Mountain Fresh")
  end

  it "exists" do
    expect(@vendor).to be_instance_of(Vendor)
  end
end
