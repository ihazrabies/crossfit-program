require "./user_input"

focus = User_Input.focus()

if focus == "gymnastics"
  require "./gymnastics/gymnastictemplate" 
elsif focus == "strength"
  require "./strengthtemplate"
      
end


