# (first tier) giant hash of 'The Bachelor':
 # (second tier) season's as KEYS and it's VALUES(array of constestants):
  # (third tier) contestants' name, age, hometown, occupation, status as KEYS; it's corresponding info as VALUES



def get_first_name_of_season_winner(data, season)
  # find season - iterate array to find the hash, hash will consist "status"
    # if status matches "winner" then return first word of "name" string
  data[season].each do |contestants|
    if contestants["status"].downcase == "winner"
      return contestants["name"].split(" ").first
    end
  end

end

def get_contestant_name(data, occupation)
  # search through
  data.each do |season, contestant_array|
    contestant_array.map do |contestant_hash|
      # since we are in hash
      # we can now find the values using the keys of the hash
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end

    end

  end


end

def count_contestants_by_hometown(data, hometown)
  # get down to contestant_array
  # collect into an array all hometowns that match the 'hometown' given
  # then find length
  same_hometown = []
  data.each do |season, contestant_array|
    contestant_array.map do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        same_hometown << hometown
      end
    end
  end
  same_hometown.length
end

def get_occupation(data, hometown)
  # within contestant_hash key make 'hometown' = 'occupation'
  data.each do |season, contestant_array|
    contestant_array.map do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
      end

    end

  end
end

def get_average_age_for_season(data, season)
  # add up all 'age' values for given season
  total_contestants = []
  total_age = 0
  data[season].each do |contestant_hash|

       total_age += (contestant_hash["age"]).to_i
       total_contestants << contestant_hash["age"].to_i
      end


    number_of_contestants = total_contestants.length

    # sum of all "age" values / number_of_contestants
    (total_age/number_of_contestants.to_f).round(0)


end

def find_season(data)
  data.keys
end
