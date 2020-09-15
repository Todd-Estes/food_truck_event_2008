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

  def potential_revenue
    quantities = 0
    total_rev = 0
    @inventory.each do |key, value|
      quantities += value
    end
    @inventory.each do |key, value|
      quantities +=  key.price.to_i
    end
    quantities
  end
  
end
