require "./scrabble"
require "rspec"


describe('Scrabble#letter_score') do
  let(:scrabble) { Scrabble.new }

  it("returns a scrabble score for letter 'a'") do
    expect(scrabble.letter_score("a")).to(eq(1))
  end
  it("returns a scrabble score for letter 'z'") do
    expect(scrabble.letter_score("z")).to(eq(10))
  end
  it("returns a scrabble score for a capital letter") do
    expect(scrabble.letter_score("K")).to(eq(5))
  end

end

describe('Scrabble#word_score') do
  let(:scrabble) {Scrabble.new}

  it("returns a total score sum of all letters") do
    expect(scrabble.word_score("dog")).to(eq(5))
  end

  it("returns at total score sum of all letters or the word 'challenging'") do
    expect(scrabble.word_score("challenging")).to(eq(18))
  end

  it("returns at total score sum of all letters or the word 'challenging'") do
    expect(scrabble.word_score("ChallenginG")).to(eq(18))
  end

  it("returns at total score sum of all letters or the word 'challenging'") do
    expect(scrabble.word_score("dog dog")).to(eq(10))
  end

  it("returns at total score sum of all letters or the word 'challenging'") do
    expect(scrabble.word_score("&$")).to(eq(0))
  end
end
