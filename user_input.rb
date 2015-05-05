
module User_Input

  def self.focus()

    puts "Crossfit is all about working your weaknesses."
    puts "What do you suck at? Choose from: gymnastics, endurance, oly, strength."
    puts "> "

    focus = $stdin.gets.chomp
    return focus
  end
  
  def self.oly_experience()
    
	puts "How experienced are you at olympic lifting? (beginner, intermediate, pro)"
	oly_exp = $stdin.gets.chomp
	return oly_exp
	
  end 
  
  def self.strength_experience()
    
	puts "How strong are you? (beginner, intermediate, pro)"
	strength_exp = $stdin.gets.chomp
	return strength_exp
		
  end 
  
  def self.gymnastics_experience()    
  
	puts "How experienced are you at bodyweight exercises? (beginner, intermediate, pro)"	
	gymnastics_exp = $stdin.gets.chomp	
	return gymnastics_exp
	
  end 
  
  def self.endurance_experience()
    
	puts "How hard can you go? (beginner, intermediate, pro)"
	endurance_exp = $stdin.gets.chomp	
	return endurance_exp
	
  end 
  
  
  def self.days_per_week()
    puts "how many days per week can you train? (three, four or five)"
	days_per_week = $stdin.gets.chomp
	return days_per_week
  end 
  
  def self.focus_exercise()
  puts "pick an exercise to focus on!"
  focus_exercise = $stdin.gets.chomp
  return focus_exercise
  end

end