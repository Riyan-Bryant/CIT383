#!/usr/bin/ruby
# Program 02
# Riyan Bryant
# CIT 383-003 Fall 2017
# 10/5/2017



# Create the variables QUOTA and count
  QUOTA = 32
  count = 0 
  
# Prompt the user for a response. Loop the response if the user inputs an incorect number. 

  puts "Enter a number between 10 and 35 to represent the number of users:\n"
  userInput= gets.chomp().to_i

  while userInput <= 10 || userInput >= 35
 
    if userInput <= 10 || userInput >= 35
      puts "I said between 10 and 35. Try again:\n"
      puts "Enter a number between 10 and 35 to represent the number of users:\n"
      userInput= gets.chomp().to_i
    end 
  end 


 # Output for the histogram
  puts "User Name and Directory sizes (* = 1 MB)"
  puts "==========================================\n"
   
  # Takes the number of users the user entered, converts to symbol, and uses the symbol as the key
  # for the hash.

  1.upto(userInput) do |i|
    s = ("User" + i.to_s).to_sym
    h = { User: rand(20..55) }
   
  # Iterates over the hash, increments the count and prints the *'s for the histogram
  h.each do |key, value|
    puts "#{key}" + i.to_s + "\t"
    
 
    for i in (1...rand(20..55))
      print "*"
      count += 1  
    end
 end  
end 
 
