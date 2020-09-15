class FoodTruck
  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item_obj)
      @inventory[item_obj]
  end

  def stock(item_obj, quantity)
    @inventory[item_obj] += quantity
  end

end
