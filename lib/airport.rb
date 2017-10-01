class Airport

  attr_reader :capacity, :planes
  DEFAULT_CAPACITY = 10

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @planes = []
  end

  def full?
    @planes.length == @capacity
  end

  def land(plane)
    raise("Airport full -> can't accept planes!") if full?
    # using false as argument so that I can test reliably
    plane.land(false)
    @planes.push(plane)
  end

  def take_off
    # using false as argument so that I can test reliably
    plane = @planes.shift
    plane.take_off(false)
  end

end
