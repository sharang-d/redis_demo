class Place
  attr_accessor :name, :location

  def initialize values = {}
    @name = values[:name]
    @location = values[:location]
  end

  def find

  end

  def self.all
    @places = []
    $redis.keys.each do |key|      
      @places << Place.new(name: key, location: $redis.get(key))
    end
    @places
  end

end