
require "./user_input"

days_per_week = User_Input.days_per_week()



  
def template_select(days_per_week)
  if days_per_week == "three"
    require "./gymnastics/gym_template_three.rb"
	template = Template_three.template_three()
  elsif days_per_week == "four"
    require "./gymnastics/gym_template_four.rb"
	template = Template_four.template_four()
  elsif days_per_week == "five"
    require "./gymnastics/gym_template_five.rb"
	template = Template_five.template_five()
  else
    puts "invalid entry"
end  
end

template = template_select(days_per_week)

