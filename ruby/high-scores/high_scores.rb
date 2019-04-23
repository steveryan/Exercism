class HighScores
  def initialize(score)
    @scores = score
  end
  
  def scores
   @scores
  end

  def personal_top_three
    @scores.sort.reverse[0..2]
  end
  
  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end
end

