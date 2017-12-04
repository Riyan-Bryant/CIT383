#!/usr/bin/ruby
# Program 05
# Riyan Bryant
# CIT 383-003 Fall 2017
# 12/04/2017

  require 'optparse'
  
  result = IO.popen( "last")
  puts result.readlines

 
  puts "ARGV before option processing: #{ARGV}"
 
  # Initialize the optparser and set all flags to false. 
  user_opt = ip_opt = file_opt = out_opt = cmd_summ_opt = false
  optparser = OptionParser.new
  
  # Include all options in the banner message and if an option is used, set it to true. 
  optparser.banner = "USAGE: #{$0}[-w][-i][-f][-o][-h]"

  optparser.on('-w', "--fullname") { puts "w option passed"; user_opt = true}
  
  optparser.on('-i', "--ip") { puts "i option passed"; ip_opt = true}
  
  optparser.on('-f INFILE', "--file INFILE") { puts "f option passed"; file_opt = true}
  optparser.on('-o', "--output") { puts "o option passed"; out_opt = true}
  optparser.on('-h', "--cmdsumm") { puts "h option passed"; cmd_summ_opt = true}

  # Initialize a rescue clause to handle exceptions thrown by the optparser.
  begin
  optparser.parse! 
rescue => e 
  puts e.class
  puts optparser
  exit
end

 
 
