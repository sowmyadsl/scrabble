require ('rspec')
require ('./lib/scrabble')

  describe("String#scrabble") do

  it("returns a scrabble score for a letter") do
  expect("a".scrabble()).to(eq(1))
  end

  it("returns a scrabble score for a letter d or g") do
  expect("g".scrabble()).to(eq(2))
  end

  it("returns a scrabble score for any b, c, m and p") do
  expect("b".scrabble()).to(eq(3))
  end

  it("returns a scrabble score for letters f, h, v ,w and y") do
  expect("f".scrabble()).to(eq(4))
  end

  it("returns a scrabble score for letter 'k' ") do
  expect("k".scrabble()).to(eq(5))
  end

  it("returns a scrabble score for letters 'j' and 'x'") do
  expect("j".scrabble()).to(eq(8))
  end

  it("returns a scrabble score for letters 'q' and 'z'") do
  expect("q".scrabble()).to(eq(10))
  end


end
