class HighScores
  attr_accessor :scores
  def initialize(score)
    self.scores = score
  end
  
  def personal_top_three
    self.scores.max(3)
  end
  
  def latest
    self.scores.last
  end

  def personal_best
    self.scores.max
  end
end

