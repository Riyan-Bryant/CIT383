#!/usr/bin/ruby
# Program 03
# Riyan Bryant
# CIT 383-003 Fall 2017
# 10/31/2017

  #Initialize a global variable and create the report heading.  
  @filename = "access_log"
 
  
  # Read the log file and create arrays.
  @line_array = File.readlines(@filename)
  @line_array.size
  ipArray = Array.new(0)
  urlArray = Array.new(0)
  codeArray = Array.new(0)
  
  # Iterate over the array and parse the lines we want, split the lines up,  then push them onto the array.
  @line_array.each do |line|
    md = line.match(/^([:\d\.]+) .*\[.*\].*\"[A-Z]+ *(.+) HTTP \s(\d+)/)
    md2 = line.match(/\s(\d+)/)
    ip = line.split[0]
    url = line.split[6]
    code = line.split[8]
    ipArray.push(ip)
    urlArray.push(url)
    codeArray.push(code)
  end
  # Create the report header
  puts " ------------------------------------------------ "
  puts " Statistics for the Apache log file access_log "
  puts " -------------------------------------------------\n "
  puts 

  puts "Frequency of Client IP Addresses:"
   
 
  # Create a counting hash that stores the array and then creates the IP histogram. 
  iph = Hash.new(0)
  ipArray.each{ |address| iph[address] += 1 }
  iph.each { |address, result| puts address + ":" + " " + "*" * result} 
  puts   
  puts "Frequency of URLs Accessed:\n"

# Create a counting hash that stores the array and then creates the URL report.
  urlh = Hash.new(0)
  urlArray.each{ |url| urlh[url] +=1 }
  urlh.each { |url, count| puts "%-50s" % url  + count.to_s}
  puts
  puts "HTTP Status Codes Summary:"

  # Create a counting hash that stores the array and then creates the HTTP status code report. 
  codeh = Hash.new(0)
  codeArray.each{ |code| codeh[code] += 1 }
  codeh.each { |code, count| puts code + ":" + "" + "%8s" % count.to_s}
 

 
