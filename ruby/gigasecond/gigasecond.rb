class Gigasecond
  def self.from (start_time)
    start_time_seconds = start_time.to_i
    end_time_seconds = start_time_seconds+1000000000
    end_time = Time.at(end_time_seconds)
    return end_time
  end
end
