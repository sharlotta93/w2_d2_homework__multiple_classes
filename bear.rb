class Bear

attr_reader :name, :type
attr_accessor :food

  def initialize(name, type)
    @name = name
    @type = type
    @food = []
  end

  def food_count
    @food.length
  end

  def hunt_fish(river)
     fish = river.fish_stock.pop
      @food << fish
  end

end
