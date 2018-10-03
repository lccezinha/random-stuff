class CustomFlatten
  def initialize(argument)
    raise "Invalid argument, must give an array as argument" unless argument.is_a?(Array)
    @array = argument
  end

  def flatten
    do_flatten(array)
  end

  private

  attr_reader :array

  def do_flatten(array)
    accumulator = []

    array.each do |item|
      if item.is_a?(Array)
        accumulator += do_flatten(item)
      else
        accumulator.push(item)
      end
    end

    accumulator
  end
end