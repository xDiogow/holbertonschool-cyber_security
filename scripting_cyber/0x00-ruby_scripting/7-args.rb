def print_arguments
  if ARGV.empty?
    puts "No arguments provided."
    return
  end

  ARGV.each.with_index(1) do |arg, i|
    puts "#{i}. #{arg}"
  end
end
