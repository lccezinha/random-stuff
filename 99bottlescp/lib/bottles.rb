class Bottles
  def song
    verses(99, 0)
  end

  def verses(start, ending)
    start.downto(ending).collect { |number| verse(number) }.join("\n")
  end

  def verse(number)
    <<-VERSE
#{container(number).capitalize} #{singular(number)} of beer on the wall, #{container(number)} #{singular(number)} of beer.
#{action(number)}, #{container(next_number(number))} #{singular(number - 1)} of beer on the wall.
VERSE
  end

  private

  def next_number(number)
    return 99 if number.zero?
    number - 1
  end

  def action(number)
    if number.zero?
      'Go to the store and buy some more'
    else
      "Take #{pronoum(number)} down and pass it around"
    end
  end

  def container(number)
    number.zero? ? 'no more' : number.to_s
  end

  def singular(number)
    number == 1 ? 'bottle' : 'bottles'
  end

  def pronoum(number)
    number == 1 ? 'it' : 'one'
  end
end
