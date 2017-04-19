class String
  define_method(:scrabble) do
    letters_array = self.split("")
    final_score = 0
    letters_array.each() do |letter|
      uppercase_letter = letter.upcase()
      scores = {["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"] => 1,
                ["D", "G"] => 2, ["B","C","M","P"] => 3 , ["F","H","V","W","Y"] => 4,
                ["K"] => 5 , ["J","X"] => 8 , ["Q","Z"] => 10
               }
      if scores.key(1).include?(uppercase_letter)
        final_score += 1
      elsif scores.key(2).include?(uppercase_letter)
        final_score += 2
      elsif scores.key(3).include?(uppercase_letter)
        final_score += 3
      elsif scores.key(4).include?(uppercase_letter)
        final_score += 4
      elsif scores.key(5).include?(uppercase_letter)
        final_score += 5
      elsif scores.key(8).include?(uppercase_letter)
        final_score += 8
      elsif scores.key(10).include?(uppercase_letter)
        final_score += 10
      end
    end
    final_score
  end
end
