#!/usr/bin/env ruby
require 'optparse'
require 'fileutils'

TASK_FILE = "tasks.txt"

# Ensure file exists
FileUtils.touch(TASK_FILE) unless File.exist?(TASK_FILE)

options = {}
parser = OptionParser.new do |opts|
  opts.banner = "Usage: cli.rb [options]"

  opts.on("-a", "--add TASK", "Add a new task") do |task|
    options[:add] = task
  end

  opts.on("-l", "--list", "List all tasks") do
    options[:list] = true
  end

  opts.on("-r", "--remove INDEX", Integer, "Remove a task by index") do |index|
    options[:remove] = index
  end

  opts.on("-h", "--help", "Show help") do
    puts opts
    exit
  end
end

begin
  parser.parse!
rescue OptionParser::InvalidOption => e
  puts e.message
  puts parser
  exit 1
end

# Add task
if options[:add]
  File.open(TASK_FILE, "a") { |f| f.puts(options[:add]) }
  puts "Task '#{options[:add]}' added."
end

# List tasks
if options[:list]
  tasks = File.readlines(TASK_FILE, chomp: true)
  if tasks.empty?
    puts "No tasks available."
  else
    tasks.each_with_index { |task, i| puts "#{i + 1}. #{task}" }
  end
end

# Remove task
if options[:remove]
  tasks = File.readlines(TASK_FILE, chomp: true)
  index = options[:remove] - 1
  if index < 0 || index >= tasks.size
    puts "Invalid index."
    exit 1
  end
  removed = tasks.delete_at(index)
  File.open(TASK_FILE, "w") { |f| f.puts(tasks) }
  puts "Task '#{removed}' removed."
end
