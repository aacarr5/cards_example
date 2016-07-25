require 'rspec'
require_relative 'cards'

describe 'poker_hand' do

	context 'initiailizaiton' do 

		it 'should be a hand' do
			hand = Hand.new
			expect(hand).to be_a Hand 
		end

		it 'should have cards' do 
			hand = Hand.new
			expect(hand.cards.length).to eq 5
		end

	end

end


describe 'cards' do

	let(:card) { Card.new }

	it 'should be a card' do 
		expect(card).to be_a Card
	end

end