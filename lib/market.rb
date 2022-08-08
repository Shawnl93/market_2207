class Market

  attr_reader :name, :vendors
  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    names = []
    @vendors.each do |vendor|
      names << vendor.name
    end
    names
  end

  def vendors_that_sell(item)
    stocked_vendor = []
    @vendors.each do |vendor|
      vendor.inventory.each do |invent|
        if invent[0].name == item.name
          stocked_vendor << vendor
        end
      end
    end
    stocked_vendor
  end

  def total_inventory

  end
end
