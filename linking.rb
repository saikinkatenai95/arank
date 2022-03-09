puts "連結を判定"
n, m = gets.split.map(&:to_i)


g = Array.new(n).map { Array.new(n, 0) }
m.times do
  a, b = gets.split.map(&:to_i)
  g[a - 1][b - 1] = 1
  g[b - 1][a - 1] = 1
end

link = true
g.each do |row|
  isolation = true
  row.each do |val|
    if val != 0
      isolation = false
      break
    end
  end
  if isolation
    link = false
    break
  end
end

if link
  puts 'YES'
else
  puts 'NO'
end