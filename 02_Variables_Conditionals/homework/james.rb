puts "\nWelcome to Secret Number!\n"
puts "Created by Jimmy Page for BWD at GA\n\n\n"
puts "What is Your Name? "

# Ask user to define the variable for name
name = gets

# If they input name say hi!
def welcome(name)
   puts "howdy #{name}\n\n"  
end
welcome(name)

puts "Ok #{name} you must guess a number between 1 and 10 and you only have 3 tries to do so \n\n"


 puts "The magic number is between 0 and 10.\n\n"
 magic_number = 5

 print "What is your guess? "
 guess = gets.chomp

 tries = 0

 while guess =~ /\d/
        case guess.to_i
         when 0...magic_number
             puts "Too Low, try again.\n\n"
         when magic_number
             puts "\nYou guessed it!!!\nThe magic number was #{magic_number}.\n\n\n"
             print "Press the 'enter' key to continue."
             gets
             exit
         else
             puts "Too High, try again.\n\n"
         end
     print "What is your guess? "
     guess = gets.chomp
     
 end

 puts "Invalid entry, you lose."