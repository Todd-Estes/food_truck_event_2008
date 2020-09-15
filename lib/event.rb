class Event
  attr_reader :name,  :food_trucks
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck_obj)
    @food_trucks << food_truck_obj
  end

  def food_truck_names
    @food_trucks.map do |truck|
      truck.name
    end
  end

  def food_trucks_that_sell(item_obj)
    trucks = []
    @food_trucks.find_all do |truck|
      if truck.inventory.keys.include?(item_obj)
        trucks << truck
      end
    end
    trucks
  end

end
