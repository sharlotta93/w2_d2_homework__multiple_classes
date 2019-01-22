class River

attr_reader :name
attr_accessor :fish_stock

  def initialize(name)
    @name = name
    @fish_stock = []
  end

  def add_fish(fish)
    @fish_stock << fish
  end

  def fish_count
    @fish_stock.length
  end

end
