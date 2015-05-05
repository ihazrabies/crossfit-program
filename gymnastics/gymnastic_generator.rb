
exercises = {
	"gymnastic_exercises" => ["pull-ups", "push-ups", "toes to bar", "dips"],
	"special_exercises" => ["muscle-ups", "pistols", "handstand pushups", "chest to bar"],
	"stock_exercises" => ["kb swings (1.5p/1p)", "box jumps", "thrusters", "burpees"],
	"conditioning" => ["row", "run"],
	"cond_lifts" => ["deadlifts", "power cleans", "front squats", "push-press"],
}

def WOD_alt(exercises)
  alt = rand(1..2)
  if alt == 1
    ex_alt = exercises["cond_lifts".sample]
  else
    ex_alt = exercises["special_exercises".sample]
  return ex_alt
  end 
  return ex_alt
end 
  
def get_length()
  puts "Long, Medium or Short WOD?"
  puts "> "
  length = $stdin.gets.chomp.downcase
  return length
end

def generate(length, ex_alt, exercises)
  
  if length == "long"
      rounds = 5
      gymnastic_reps = 15
      alt_reps = 5
      stock_reps = 20
    elsif length == "medium"
      rounds = 3
	  gymnastic_reps = 15
	  alt_reps = 5
	  stock_reps = 15
    elsif length == "short"
      rounds = 3
	  gymnastic_reps = 10
	  alt_reps = 5
	  stock_reps = 10
  end

  puts "#{rounds} rounds of: "
  puts "#{alt_reps} #{ex_alt}"
  puts "#{gymnastic_reps} #{exercises[gymnastic_exercises.sample]}"
  puts "#{stock_reps} #{[stock_exercises.sample]}"

end  


length = get_length()
ex_alt = WOD_alt(exercises)
generate(get_length, ex_alt, exercises)