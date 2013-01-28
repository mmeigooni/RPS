class InvalidChoiceError < StandardError; end

class Choice
  RESULTS = {
    rock: { paper: :loss, scissors: :win },
    paper: { rock: :win, scissors: :loss },
    scissors: { rock: :loss, paper: :win }
  }

  def self.compare(c1, c2)
    c1 == c2 ? :tie : RESULTS[c1].try(:[], c2)
  end
end