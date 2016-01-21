

class Bike
  def initialize
    @work = true
  end

  def working?
    @work
  end

  def report_broken
    @work = false
  end

  def report_fixed
    @work = true
  end


end
