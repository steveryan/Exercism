class SpaceAge
  EARTH_YEAR_IN_SECONDS = 31557600.00
  def initialize(seconds)
   @age= seconds
  end

  def on_mercury
    @age/(EARTH_YEAR_IN_SECONDS*0.2408467)
  end

  def on_venus
    @age/(EARTH_YEAR_IN_SECONDS*0.61519726)
  end

  def on_earth
    @age/EARTH_YEAR_IN_SECONDS
  end

  def on_mars
    @age/(EARTH_YEAR_IN_SECONDS*1.8808158)
  end

  def on_jupiter
    @age/(EARTH_YEAR_IN_SECONDS*11.862615)
  end

  def on_saturn
    @age/(EARTH_YEAR_IN_SECONDS*29.447498)
  end

  def on_uranus
    @age/(EARTH_YEAR_IN_SECONDS*84.016846)
  end

  def on_neptune
    @age/(EARTH_YEAR_IN_SECONDS*164.79132)
  end
end
