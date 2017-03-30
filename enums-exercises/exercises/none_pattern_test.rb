gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class NonePatternTest < Minitest::Test

  def test_none_are_broken
    things = ["functional", "working", "works", "fixed", "good"]
    none_broken = true
    things.each do |thing|
      none_broken = false if thing == "broken"
    end
    assert none_broken
  end

  def test_double_negative
    numbers = [9, 3, 3, 7, 6, -5, 1]
    not_none_negative = true
    numbers.each do |number|
      not_none_negative = false if number < 0
    end
    refute not_none_negative
  end

  def test_none_are_negative
    numbers = [9, 3, 1, 8, 3, 3, 5]
    none_negative = true
    numbers.each do |number|
      none_negative = false unless number > 0
    end
    assert none_negative
  end

  def test_none_shall_pass
    skip
    critters = ["elf", "hobbit", "dwarf", "wizard", "human"]
    none_shall_pass = true
    critters.each do |critter|
    none_shall_pass = false
  end
    assert none_shall_pass
  end

  def test_one_or_more_shall_pass
    skip
    phrases = ["go", "left", "can cross", "shall pass", "must stay", "tarried"]
    # Your code goes here
    refute none_shall_pass
  end

  def test_none_even
    skip
    numbers = [3, 9, 15, 21, 19]
    none_even = true
    numbers.each do |number|
      none_even = false unless number.even? == true
    end
    assert none_even
  end

end
