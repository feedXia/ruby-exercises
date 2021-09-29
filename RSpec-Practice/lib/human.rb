class Human
  def initialize(emotional_checkin: 10)
    @emotional_checkin = emotional_checkin
  end

  def meditate
    @emotional_checkin = 10
  end

  def happy?
    @emotional_checkin > 5
  end
end
