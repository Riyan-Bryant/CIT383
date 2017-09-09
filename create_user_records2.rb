#!/usr/bin/ruby 
# Program 01 
# Riyan Bryant
# CIT 383-003 Fall 2017
# 9/13/2017 

  #Initializing variabls and creates empty arrays for the user response to be stored in. 
  employee_id = []
  first_name = []
  last_name = []
  dep_num = []
  sup_name = []
  linux_id = []
  temp_pass = []
  cont_prog = 'Y'
  
  # A loop that gathers the users response until the last question is answered with anything other than yes or Y.
  while cont_prog == 'Y' || cont_prog == 'yes'
 
    puts "Enter the user's employee id:"
    employee_id = gets.chomp.to_i
  
    puts "Enter the user's first name:"
    first_name = gets.chomp

    puts "Enter the user's last name:"
    last_name =  gets.chomp

    puts "Enter the user's department number:"
    dep_num = gets.chomp
 
    puts "Enter the user's supervisor (full name):"
    sup_name = gets.chomp

    puts "Enter the user's linux id:"
    linux_id = gets.chomp

    puts "Enter the user's temporary password:"
    temp_pass = gets.chomp 

    puts "Would you like to create another record? (Type yes or Y to continue):"
    cont_prog = gets.chomp
    
end    
  
    
  # Creates a hash to store the user's responses where the employee id is the key. 
  user_info = Hash.new
  user_info = Hash.new
  user_info[employee_id] = []
  user_info[employee_id] << first_name
  user_info[employee_id] << last_name
  user_info[employee_id] << dep_num
  user_info[employee_id] << sup_name
  user_info[employee_id] << linux_id
  user_info[employee_id] << temp_pass
 # Once the user exits the program, generate a records report. 
  if cont_prog != 'Y' || cont_prog != 'yes'
      
    puts "Summary"
    puts "========================="
    puts "Name: " + first_name.to_s + " " +  last_name.to_s
    puts "Employee ID: " + employee_id.to_s
    puts "Department: " + dep_num
    puts "Supervisor: " + sup_name
    puts "Username: " + linux_id
    puts "Password: " + temp_pass 
end    
  
  
 

 


  


