class Plane

  attr_reader :at_airport

  def land(stormy = false)
    raise("Weather stormy -> can't land!") if stormy
  end

  def take_off(stormy = false)
    stormy ? raise("Weather stormy -> can't take off!") : @at_airport = false
  end

end
