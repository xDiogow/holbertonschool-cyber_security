require 'json'

def count_user_ids(path)
  file = File.read(path)
  data = JSON.parse(file)
  
  user_count = Hash.new(0)

  data.each do |post|
    user_count[post['userId']] += 1
  end

  user_count.sort.each do |user_id, count|
    puts "#{user_id}: #{count}"
  end
end
