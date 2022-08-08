class Item

attr_reader :name, :price
  def initialize(product)
    @name = product[:name]
    @price = product[:price][1..4].to_f
  end
end
