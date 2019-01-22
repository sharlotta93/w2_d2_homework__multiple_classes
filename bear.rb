class Bear

attr_reader :name, :type
attr_accessor :food

  def initialize(name, type)
    @name = name
    @type = type
    @food = []
  end

end
