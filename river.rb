class River

attr_reader :name
attr_accessor :fish_stock

  def initialize(name)
    @name = name
    @fish_stock = []
  end

  def number_of_fish(fish)
    @fish_stock << fish
  end


end
