require "pry"

instructors = [
  {name: 'rob', hometown: 'washington, d.c.', mood: 'excited'},
  {name: 'andrew', hometown: 'los angeles, ca'},
  {name: 'niky', hometown: 'san francisco, ca'}
]

def get_names(people)
  # DON'T USE EACH
  # map or collect
  # just return the names
  array=[]
  for instructor in people
    array << instructor[:name]
  end
  puts array.inspect


  puts people.map {|person| person[:name]}.inspect

end



def get_people_from_a_place(people, place)
  # DON'T USE EACH
  # select
  # return a list of people from place
  people.select do |person|
    if person[:place]==place
      puts person[:place]
    end
    binding.pry

  end




end

def get_person_by_name(people, name)
  # DON'T USE EACH
  # find or detect
  # return the first person hash by name
end

def get_tally_of_moods(people)
  # DON'T USE EACH
  # return a hash whose keys are the moods and whose values are the number of times that mood appears
end

get_names(instructors)
get_people_from_a_place(instructors, 'rob')
