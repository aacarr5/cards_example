require 'pry'

class Hand

	attr_accessor :cards

	def initialize
		@cards = Array.new(5) {Card.new}
	end


	def pair_match? 
		card_rank = cards.map {|card| card.rank}
		card_rank.uniq.length == card_rank.length ?  false : true
	end

	def straight?
		sorted = cards.sort_by {|card| card.rank}
		sorted[-1].rank + sorted[0].rank == cards.length + 1 && pair_match? == false
	end


end


Card = Struct.new(:suit,:color,:value)

# class Card
# 	SUITS = %w(hearts diamonds spades clubes)
# 	RANK = %w(2 3 4 5 6 7 8 9 10 11 12 13 14)

# 	attr_accessor :suit, :rank


# 	def initialize(rank = nil,suit = nil)
# 		@suit = suit ? suit : SUITS.sample
# 		@rank = rank ? rank : RANK.sample
# 	end
# end