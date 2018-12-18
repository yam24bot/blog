open('input.txt', 'r') do |f|
  @map = f.gets.split(' ')
end

n = @map[0].to_i
k = @map[1].to_i

open('output.txt', 'w') do |f|
  f.puts 
end