puts "頂点の数を入力"
n = gets.to_i
puts "辺の数を入力"
m = gets.to_i


g = Array.new(n).map { Array.new(n, 0) }
puts "#{m}回入力"
m.times do |i|
  puts "#{i+1}回目"
  puts "両端の頂点の数を入力"
  a = gets.to_i
  b = gets.to_i
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