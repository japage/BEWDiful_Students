puts "\nWelcome to Secret Number!\n"
puts "Created by Jimmy Page for BWD at GA\n\n"
puts "What is Your Name?\n\n"

# Ask user to define the variable for name
name = gets

# If they input name say hi!
def welcome(name)
   puts "\nHowdy #{name}" 
end
welcome(name)

puts "\nYou have 3 tries to guess the magic number."
puts "The magic number is between 0 and 10.\n\n"

puts "Are you ready to play?"
print "Press the 'enter' key to continue.\n\n"
gets

print "What is your guess? "

3.downto(1) do |count|
  num = gets
  num = num.chomp
  num = num.to_i

  if num == 4
    puts "\nYou guessed it!!!\nThe magic number was #{num}.\n\n\n"
    print "Press the 'enter' key to continue."
    gets
    exit
  elsif num < 4 then
    count -= 1
    puts "Too Low, try again.\n\n" 
    puts "You have #{count} guesses left"
  elsif num > 5 then
    count -= 1
    puts "Too High, try again.\n\n" 
    puts "You have #{count} guesses left"
  end

end

puts "\n\nSorry you have used all your guesses and lost the game.\n"
print "Press the 'enter' key to continue.\n\n"
gets
exit