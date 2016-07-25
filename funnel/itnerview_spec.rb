require 'rspec'
require_relative 'interview'

describe 'poker_hand' do

	let (:hand) {Hand.new}

	let (:card) {Card.new}


	it 'should be a hand' do
		expect(hand).to be_a Hand
		expect(hand.cards.length).to eq(5)
	end 

	it 'should be a card' do
		expect(card).to be_a Card 
		expect(card.suit).to be_a String
		expect(card.rank).to be_a String
	end


	context 'finding matches' do
		it 'should be able to find a pair' do 
			card_a = Card.new
			card_b = Card.new
			card_a.rank = 2
			card_b.rank = 2 

			hand.cards[0..1] = [card_a,card_b]

			expect(hand.pair_match?).to eq true
		end

		it 'should not find a pair when not present' do 
			card_a = Card.new(1)
			card_b = Card.new(2)
			card_c = Card.new(3)
			card_d = Card.new(4)
			card_e = Card.new(5)

			hand.cards[0..-1] = [card_a,card_b,card_c,card_d,card_e]

			expect(hand.pair_match?).to eq false
		end

		it 'should be able to find a stright' do
			card_a = Card.new(1)
			card_b = Card.new(2)
			card_c = Card.new(3)
			card_d = Card.new(4)
			card_e = Card.new(5)
			hand.cards[0..-1] = [card_a,card_b,card_c,card_d,card_e]

			expect(hand.straight?).to eq(true) 
		end

		it 'should return false when no straight' do 
			card_a = Card.new(3)
			card_b = Card.new(3)
			card_c = Card.new(3)
			card_d = Card.new(4)
			card_e = Card.new(5)
			hand.cards[0..-1] = [card_a,card_b,card_c,card_d,card_e]

			expect(hand.straight?).to eq(false)
		end

	end

end