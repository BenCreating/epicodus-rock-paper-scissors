require 'rspec'
require './lib/rps.rb'

describe '' do
  # Rock tests
  it 'returns false if rock is the object and rock is the argument' do
    game = RPS.new
    expect(game.wins?("rock", "rock")).to eq(false)
  end

  it 'returns false if rock is the object and paper is the argument' do
    game = RPS.new
    expect(game.wins?("rock", "paper")).to eq(false)
  end

  it 'returns true if rock is the object and scissors is the argument' do
    game = RPS.new
    expect(game.wins?("rock", "scissors")).to eq(true)
  end

  # Paper tests
  it 'returns true if paper is the object and rock is the argument' do
    game = RPS.new
    expect(game.wins?("paper", "rock")).to eq(true)
  end

  it 'returns false if paper is the object and paper is the argument' do
    game = RPS.new
    expect(game.wins?("paper", "paper")).to eq(false)
  end

  it 'returns false if paper is the object and scissors is the argument' do
    game = RPS.new
    expect(game.wins?("paper", "scissors")).to eq(false)
  end

  # Scissors tests
  it 'returns false if scissors is the object and rock is the argument' do
    game = RPS.new
    expect(game.wins?("scissors", "rock")).to eq(false)
  end

  it 'returns true if scissors is the object and paper is the argument' do
    game = RPS.new
    expect(game.wins?("scissors", "paper")).to eq(true)
  end

  it 'returns false if scissors is the object and scissors is the argument' do
    game = RPS.new
    expect(game.wins?("scissors", "scissors")).to eq(false)
  end

  # Pick a random move
  it 'returns any move' do
    game = RPS.new
    expect(game.random_move).not_to eq(nil)
  end

  # Error correction
  it 'return true because rock is a valid move' do
    game = RPS.new
    expect(game.valid?("rock")).to eq(true)
  end

  it 'return true because paper is a valid move' do
    game = RPS.new
    expect(game.valid?("paper")).to eq(true)
  end

  it 'return true because scissors is a valid move' do
    game = RPS.new
    expect(game.valid?("scissors")).to eq(true)
  end

  it 'return false because spock is not a valid move' do
    game = RPS.new
    expect(game.valid?("spock")).to eq(false)
  end
end
