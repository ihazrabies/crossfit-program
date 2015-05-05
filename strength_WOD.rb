
class Strength_WOD  
  def intialize()
    @duration = duration
    @generate
  end 
  
  def generate(duration)
    special_exercises = ["muscle-ups", "pistols", "handstand pushups"]
	gymnastic_exercises = ["c2b pull-ups", "push-ups", "toes to bar", "dips"]
    stock_exercises = ["kb swings (1.5p/1p)", "box jumps 24/20", "thrusters 95/65", "burpees"]
    conditioning = ["row", "run"]
    cond_lifts = ["deadlifts 185/135", "power cleans 135/95", "front squats 155/115", "push-press 135/95"]
	
    #selects one of three templates
    @WOD_tag = rand(1..3)
    if duration == "short"
      if @WOD_tag == 1
	    puts "3 rounds of: "
        puts "5 #{special_exercises.sample}"
        puts "15 #{stock_exercises.sample}"	  
	    puts "250m #{conditioning.sample}"
	    puts "for time"
	  
      elsif @WOD_tag == 2
        puts "AMRAP 10 minutes: "
        puts "5 #{special_exercises.sample}"	 
        puts "5 #{cond_lifts.sample}"	  
	    puts "15 #{stock_exercises.sample}"
	  
      elsif @WOD_tag == 3
	    puts "3 rounds of: "
	    puts "10 #{special_exercises.sample}"
	    puts "20 #{stock_exercises.sample}"
	    puts "for time"
      end   
     
  
    elsif duration == "medium"
      if @WOD_tag == 1
	    puts "3 rounds of: "
		puts "10 #{gymnastic_exercises.sample}"
        puts "15 #{cond_lifts.sample}"	  
	    puts "20 #{stock_exercises.sample}"
		
      elsif @WOD_tag == 2
        puts "AMRAP 15 minutes: "
        puts "5 #{special_exercises.sample}"	 
        puts "20 #{cond_lifts.sample}"	  
	    puts "500m #{conditioning.sample}"
	  
      elsif @WOD_tag == 3
	    puts "5 rounds of: "
	    puts "20 #{gymnastic_exercises.sample}"
	    puts "20 #{stock_exercises.sample}"
	    puts "for time"
      end   
  
    elsif duration == "long"
      if @WOD_tag == 1
	    puts "5 rounds of: "
		puts "10 #{gymnastic_exercises.sample}"
        puts "15 #{cond_lifts.sample}"	  
	    puts "500m #{conditioning.sample}"
		
      elsif @WOD_tag == 2
        puts "AMRAP 20 minutes: "
        puts "5 #{special_exercises.sample}"	 
        puts "10 #{gymnastic_exercises.sample}"	  
	    puts "15 #{stock_exercises.sample}"
	  
      elsif @WOD_tag == 3
	    puts "10 rounds of: "
	    puts "20 #{gymnastic_exercises.sample}"
	    puts "20 #{stock_exercises.sample}"
	    puts "for time"
	  end
    end
  end 
end