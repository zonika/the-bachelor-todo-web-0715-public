require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  name=""
  data[season].each do |person|
    if person["status"]=="Winner"
      name=person["name"]
    end
  end
  name=name.split(" ")
  name[0]
end

def get_contestant_name(data, occupation)
  # code here
  name=""
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"]==occupation
        name=contestant["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  total=0
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"]==hometown
        total+=1
      end
    end
  end
  total
end

def get_occupation(data, hometown)
  # code here
  job=""
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"]==hometown
        job=contestant["occupation"]
        break
      end
    end
  end
  job
end

def get_average_age_for_season(data, season)
  # code here
  count=0
  ages=0
  data[season].each do |contestant|
    ages += contestant["age"].to_i
    count += 1
  end
  avg=ages/count.to_f
  avg.round
end
