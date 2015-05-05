
require "./user_input"

days_per_week = User_Input.days_per_week()

gymnastics_experience = User_Input.gymnastics_experience()
oly_experience = User_Input.oly_experience()
endurance_experience = User_Input.endurance_experience()
strength_experience = User_Input.strength_experience()

# combines exp levels
exp_levels = []
exp_levels.push(gymnastics_experience)
exp_levels.push(oly_experience)
exp_levels.push(strength_experience)
exp_levels.push(endurance_experience)


def template_three(exp_levels)
  require "./strength_WOD"
  
  short_wod = Strength_WOD.new()
  medium_wod = Strength_WOD.new()
  long_wod = Strength_WOD.new()
    
  #need to get lift % based on strength/oly exp somehow
  #need to find a way to not allow static exercises like squats in the generated WOD on the same day
  puts "working"
  
end

def template_four(gymnastic_generator, exp_levels)

  puts "Week 1"
  puts "et cetera"

end

def template_five(gymnastic_generator, exp_levels)

  puts "Week 1"
  puts "et cetera"
  puts exp_levels
  
end
  
  
def template_select(exp_levels, days_per_week)
  if days_per_week == "three"
    template_three(exp_levels)
  elsif days_per_week == "four"
    template_four(exp_levels)
  elsif days_per_week == "five"
    template_five(exp_levels)
  else
    puts "invalid entry"
end  
end

template = template_select(exp_levels, days_per_week)
puts template