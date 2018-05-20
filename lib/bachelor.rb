def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  occupation = []
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        occupation << contestant_hash["occupation"]
      end
    end
  end
  occupation[0]
end

def get_average_age_for_season(data, season)
  total_age = 0
  total_contestants = 0
  data[season].each do |contestant_hash|
    total_age += contestant_hash["age"].to_i
    total_contestants += 1
  end
  (total_age / total_contestants.to_f).round
end
