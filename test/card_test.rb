require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test
  def test_it_exists
    card = Card.new("Ace", "Spades")
    assert_instance_of Card, card
  end

  def test_it_has_a_value
    card = Card.new("Ace", "Spades")
    assert_equal "Ace", card.value
  end

  def test_it_has_a_suit
    card = Card.new("Ace", "Spades")
    assert_equal "Spades", card.suit
  end

  def test_it_can_be_represented_as_a_string
    card = Card.new("Ace", "Spades")
    assert_equal "Ace of Spades", card.to_s
  end
end
