class String
  define_method(:scrabble) do

    score_table = Hash.new()
    one_point_letters = ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"]
    two_point_letters = ["D", "G"]
    three_point_letters = ["B", "C", "M", "P"]
    four_point_letters = ["F", "H", "V", "W", "Y"]
    five_point_letters = ["K"]
    eight_point_letters = ["J", "X"]
    ten_point_letters = ["Q", "Z"]
    scores_available = [1, 2, 3, 4, 5, 8, 10]
    master_array = [one_point_letters, two_point_letters, three_point_letters, four_point_letters, five_point_letters, eight_point_letters, ten_point_letters]

    scores_available.each_index() do |index|
      master_array[index].each() do |letter|
        score_table.store(letter, scores_available[index])
      end
    end

    score = 0
    word = self.split("")
    word.each() do |letter|
      score = score.+(score_table.fetch(letter.upcase()))
    end

    score
  end
end
