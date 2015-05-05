module Template_four

def Template_four.template_four()
  require "./gymnastics/gym_WOD" 
  require "./user_input"
  
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
  
  short_wod = Gym_WOD.new()
  medium_wod = Gym_WOD.new()
  long_wod = Gym_WOD.new()
  
  puts "pick three exercises to focus on! (pull-ups, push-ups, dips, toes to bar)"
  focus_1 = User_Input.focus_exercise()
  focus_2 = User_Input.focus_exercise()
  focus_3 = User_Input.focus_exercise()
    
  puts "pick a skill focus! (muscle-ups, handstand push-ups, pistols)"
  skill_focus = User_Input.focus_exercise()
  
  if exp_levels[0] == "beginner"
    focus_reps = ["3x5", "3x7-8", "3x10"]
	skill_reps = "5 minutes practice... work on progressions!"
  elsif exp_levels[0] == "intermediate"
    focus_reps = ["3x7-8", "3x10", "3x12-15"]
	skill_reps = "3x5"
  elsif exp_levels[0] == "pro"
    focus_reps = ["5x7-8", "5x10", "5x12-15"]
	skill_reps = "5x8"
  end 
  
  if exp_levels[1] == "beginner"
    oly_reps = ["technique practice", "technique practice", "technique_practice"]
  elsif exp_levels[1] == "intermediate"
    oly_reps = ["3x2 @ 80%", "3x2 @ 85%", "3x2 @ 90%"]
  elsif exp_levels[1] == "pro"
    oly_reps = ["3x2 @ 80%", "5x3 @ 85%", "5x3 @ 90%"]
  end
  
  if exp_levels[2] == "beginner"
    lift_reps = ["3x5", "1x5", "1x5"]
    lift_weight = ["70%,", "75%", "80%", "85%", "90%", "95%"]
  elsif exp_levels[2] == "intermediate"
    lift_reps = ["5x5", "1x5", "1x3"]
	lift_weight = ["75%", "80%", "85%", "85%", "90%", "95%"]
  elsif exp_levels[2] == "pro"
    lift_reps = ["5x5", "1x5", "1x3"]
	lift_weight = ["80%", "85%", "85%", "90%", "90%", "95%"]
  end 
    
 
  #need to find a way to not allow static exercises like squats in the generated WOD on the same day
   
  puts "Week 1"
  puts "-" * 10
  puts " "
  puts "Monday: #{oly_reps[0]} snatches and #{skill_reps} #{skill_focus}"
  puts " "
  short_1 = short_wod.generate("short") 
  puts " "
  puts "Tuesday: #{lift_reps[0]} squats at #{lift_weight[0]} and #{focus_reps[0]} #{focus_1} and #{focus_3}"
  puts " " 
  puts "Wednesday: #{oly_reps[0]} cleans and #{skill_reps} #{skill_focus}"
  puts " "
  long_1 = long_wod.generate("long")
  puts " "
  puts "Friday: #{lift_reps[1]} squats at #{lift_weight[3]}, #{focus_reps[0]} #{focus_2}"
  puts " "
  medium_1 = medium_wod.generate("medium")
  puts " "
  
  puts "Week 2"
  puts "-" * 10
  puts " "
  puts "Monday: #{oly_reps[1]} snatches and #{skill_reps} #{skill_focus}"
  puts " "
  short_1 = short_wod.generate("short") 
  puts " "
  puts "Tuesday: #{lift_reps[0]} squats at #{lift_weight[1]} and #{focus_reps[1]} #{focus_1} and #{focus_3}"
  puts " " 
  puts "Wednesday: #{oly_reps[1]} cleans and #{skill_reps} #{skill_focus}"
  puts " "
  long_1 = long_wod.generate("long")
  puts " "
  puts "Friday: #{lift_reps[1]} squats at #{lift_weight[4]}, #{focus_reps[1]} #{focus_2}"
  puts " "
  
  puts "Week 3"
  puts "-" * 10
  puts " "
  puts "Monday: #{oly_reps[2]} snatches and #{skill_reps} #{skill_focus}"
  puts " "
  short_1 = short_wod.generate("short") 
  puts " "
  puts "Tuesday: #{lift_reps[0]} squats at #{lift_weight[2]} and #{focus_reps[2]} #{focus_1} and #{focus_3}"
  puts " " 
  puts "Wednesday: #{oly_reps[2]} cleans and #{skill_reps} #{skill_focus}"
  puts " "
  long_1 = long_wod.generate("long")
  puts " "
  puts "Friday: #{lift_reps[2]} squats at #{lift_weight[5]}, #{focus_reps[2]} #{focus_2}"
  puts " "
  
  puts "Week 4"
  puts "-" * 10
  puts " "
  puts "Monday: #{oly_reps[0]} snatches and #{skill_reps} #{skill_focus}"
  puts " "
  short_1 = short_wod.generate("short") 
  puts " "
  puts "Tuesday: #{lift_reps[0]} squats at #{lift_weight[0]} and #{focus_reps[0]} #{focus_1} and #{focus_3}"
  puts " "
  short_1 = short_wod.generate("short") 
  puts " "
  puts "Wednesday: #{oly_reps[0]} cleans and #{skill_reps} #{skill_focus}"
  puts " "
  long_1 = long_wod.generate("long")
  puts " "
  puts "Friday: #{lift_reps[0]} squats at #{lift_weight[1]}, #{focus_reps[1]} #{focus_1}"
  puts " "
end
end