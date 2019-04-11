class Butler
  attr_reader :castle
  def initialize(castle, name)
    @castle = castle
    @name = name # We want @castle to store an instance of castle
  end

  def clean_castle
    puts "#{@name} cleaned #{@castle.name}"
  end
end
