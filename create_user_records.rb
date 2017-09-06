#!/usr/bin/ruby 
# Program 01 
# Riyan Bryant
# CIT 383-003 Fall 2017
# 9/13/2017 

puts "Enter the user's employee id:"
employee_id = gets.to_i

puts "Enter the user's first name:"
first_name = gets.chomp

puts "Enter the user's last name:"
last_name = gets.chomp

puts "Enter the user's department number:"
dep_number = gets.chomp

puts "Enter the user's supervisor (full name):"
sup_name = gets.chomp

puts "Enter the user's Linux account ID:"
linux_id = gets.chomp

puts "Enter the user's temporary password:"
temp_pass = gets.chomp

puts "Would you like to create another record? (Type yes or Y to continue):"
continue_prog = gets.chomp 


user_info = Hash.new
user_info = {
  "employee_id" => employee_id, 
  "first_name" => first_name, 
  "last_name" => last_name, 
  "dep_number" => dep_number, 
  "sup_name" => sup_name, 
  "linux_id" => linux_id, 
  "temp_pass" => temp_pass
}

user_info.each do |key,value|
  if value.respond_to? (:capitalize)
    puts "Your #{key.to_s} is #{value.capitalize}"
  else
    puts "Your #{key.to_s} is #{value}"
  end
end 


