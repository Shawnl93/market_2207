class Item

attr_reader :name
  def initialize(product)
    @name = product[:name]
  end
end
