ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

# 1st place is worth 3 points
# 2nd place is worth 2 points
# 3rd place is worth 1 point

def changed(place)
  if place == 1
    return 3
  elsif place == 2
   return 2
  elsif place == 3
    return 1
  end
end
#hash of person and points
people_points = {}
  ballots.each do |ballot|
    ballot.each do |place,name|

      if !people_points.has_key?(name) #because we want the ke                                #to be the name
       people_points[name] = 0
      end
      people_points[name] += changed(place)
    end
  end


puts people_points
