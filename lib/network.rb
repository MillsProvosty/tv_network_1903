class Network
  attr_reader :name,
              :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    characters = @shows.map do |show|
      show.characters
    end.flatten

    salary = characters.max_by do |char|
      char.salary
    end
    salary.actor
  end
end
