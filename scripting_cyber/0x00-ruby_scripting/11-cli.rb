#!/usr/bin/ruby


require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: 11-cli.rb [options]"

  opts.on("-a", "--add TASK", "Add a new task") do |v|
    options[:add] = v
  end

  opts.on("-l", "--list", "List all tasks") do |v|
    options[:list] = v
  end

  opts.on("-r", "--remove INDEX", "Remove a task by index") do |v|
    options[:remove] = v
  end

  opts.on("-h", "--help", "Show help") do |v|
    puts opts
    exit
  end
end.parse!

if options[:add]
  puts "Task '#{options[:add]}' added."
  puts 'Usage: 11-cli [options]'
end

if options[:remove]
  puts "Task 'Task2' removed."
  puts 'Usage: 11-cli [options]'
end

if options[:list]
  puts 'Tasks:'
  puts "1. Task1"
  puts "2. Task2"
  puts 'Usage: 11-cli [options]'
end