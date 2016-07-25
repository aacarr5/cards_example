class Hand

	attr_reader :cards

	def initialize
		@cards = Array.new(5) {Card.new}
	end


end

class Card

	RANKS = [*1..13].shuffle
	COLORS = (%w(red black)*26).shuffle
	SUITE = (%w(spades diamonds hearts clubs)*13).shuffle

	def initialize(params = {})
		@rank = params[:rank] ||= RANKS.sample
		@suite = params[:suite] ||= SUITE.sample
		@color = params[:color] ||= COLORS.sample
	end

end