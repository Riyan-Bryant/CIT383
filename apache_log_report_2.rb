#!/usr/bin/ruby
# Program 04
#i Riyan Bryant
# CIT 383-003 Fall 2017
# 11/17/2017

  # Initialize the filename variable and assign it to ARGV.
  filename = ARGV

  # Raise an exception if there is no file name provided. 
  if ARGV.empty?
    raise ArgumentError.new(" A file name must be provided" ) 
  exit 
  end 


  # Create a begin > rescue clause that catches exceptions raised when reading
  # ARGV 
 begin 
    line_array = File.readlines(ARGV[0])
    line_array.size
 rescue Errno::ENOENT => e
    puts "Exception Type:" + " " + e.class.to_s
    puts "Message:" + " " +  e.message
  exit
  rescue Errno::EACCES => e
    puts "Exception Type:" + " " + e.class.to_s
    puts "Message:" + " " + e.message
  exit 
  end     

  # Initialize the arrays
  ipArray = Array.new(0)
  urlArray = Array.new(0)
  codeArray = Array.new(0)
 
  # Iterate over the array and parse the lines we want, split the lines up,  then push them onto the array.
  line_array.each do |line|
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
 

 
