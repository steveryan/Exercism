class HighScores
  attr_reader :scores
  def initialize(score)
    @scores = score
  end
  
  def personal_top_three
    scores.max(3)
  end
  
  def latest
    scores.last
  end

  def personal_best
    scores.max
  end
end

