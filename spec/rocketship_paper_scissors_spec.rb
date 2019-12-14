# frozen_string_literal: true

require_relative 'spec_helper'

describe 'rocketship_paper_scissors#play' do
    it 'returns 1 if p1 wins, -1 if p1 loses, or 0 for a draw'  do
        expect(RPS.play('rock', 'rock')).to eq(0)
        expect(RPS.play('rock', 'paper')).to eq(-1)
        expect(RPS.play('rock', 'scissors')).to eq(1)
        expect(RPS.play('paper', 'paper')).to eq(0)
        expect(RPS.play('paper', 'scissors')).to eq(-1)
        expect(RPS.play('paper', 'rock')).to eq(1)
        expect(RPS.play('scissors', 'scissors')).to eq(0)
        expect(RPS.play('scissors', 'rock')).to eq(-1)
        expect(RPS.play('scissors', 'paper')).to eq(1)
    end
end 
