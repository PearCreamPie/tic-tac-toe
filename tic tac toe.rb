
pos = {'x1' => 1, 'x2' => 2, 'x3' => 3, 'y1' => 4, 'y2' => 5, 'y3' => 6, 'z1' => 7, 'z2' => 8, 'z3' => 9}
puts "Укажите цифру на поле, куда будет совершён ход. "
chocopie = Proc.new do |x|
  if pos['x1'] == 'X' && pos['x2'] == 'X' && pos['x3'].class == Integer
  pos['x3'] = '0'
elsif pos['x3'] == 'X' && pos['x2'] == 'X' && pos['x1'].class == Integer
  pos['x1'] = '0'
elsif pos['x1'] == 'X' && pos['x3'] == 'X' && pos['x2'].class == Integer
  pos['x2'] = '0'
elsif pos['x1'] == 'X' && pos['y1'] == 'X' && pos['z1'].class == Integer
  pos['z1'] = '0'
elsif pos['z1'] == 'X' && pos['y1'] == 'X' && pos['x1'].class == Integer
  pos['x1'] = '0'
elsif pos['x1'] == 'X' && pos['z1'] == 'X' && pos['y1'].class == Integer
  pos['y1'] = '0'
elsif pos['x2'] == 'X' && pos['y2'] == 'X' && pos['z2'].class == Integer
  pos['z2'] = '0'
elsif pos['x2'] == 'X' && pos['z2'] == 'X' && pos['y2'].class == Integer
  pos['y2'] = '0'
elsif pos['z2'] == 'X' && pos['y2'] == 'X' && pos['x2'].class == Integer
  pos['x2'] = '0'
elsif pos['y1'] == 'X' && pos['y3'] == 'X' && pos['y2'].class == Integer
  pos['y2'] = '0'
elsif pos['y1'] == 'X' && pos['y2'] == 'X' && pos['y3'].class == Integer
  pos['y3'] = '0'
elsif pos['y2'] == 'X' && pos['y3'] == 'X' && pos['y1'].class == Integer
  pos['y1'] = '0'
elsif pos['z2'] == 'X' && pos['z1'] == 'X' && pos['z3'].class == Integer
pos['z3'] = '0'
elsif pos['z2'] == 'X' && pos['z3'] == 'X' && pos['z1'].class == Integer
pos['z1'] = '0'
elsif pos['x3'] == 'X' && pos['y2'] == 'X' && pos['z1'].class == Integer
pos['z1'] = '0'
elsif pos['z3'] == 'X' && pos['z1'] == 'X' && pos['z2'].class == Integer
pos['z2'] = '0'
elsif pos['x3'] == 'X' && pos['y3'] == 'X' && pos['z3'].class == Integer
pos['z3'] = '0'
elsif pos['x3'] == 'X' && pos['z3'] == 'X' && pos['y3'].class == Integer
pos['y3'] = '0'
elsif pos['z3'] == 'X' && pos['y3'] == 'X' && pos['x3'].class == Integer
pos['x3'] = '0'
elsif pos['z1'] == 'X' && pos['y2'] == 'X' && pos['x3'].class == Integer
pos['x3'] = '0'
else
  arr = []
  pos.each do |key, val|
    if val.class == Integer
    arr << key
    end
  end
  eptik = rand(0..arr.length)
  if eptik != 1
    arra = arr[eptik]
  else
    arra = arr[0]
  end
  if pos[arra].class == Integer
  pos[arra] = '0'
  end
end
end
9.times do |i|
vertline1=["| #{pos['x1']} | #{pos['x2']} | #{pos['x3']} |"]
vertline2=["| #{pos['y1']} | #{pos['y2']} | #{pos['y3']} |"]
vertline3=["| #{pos['z1']} | #{pos['z2']} | #{pos['z3']} |"]
gorline=[" ___ ___ ___"]
puts vertline1
puts gorline
puts vertline2
puts gorline
puts vertline3
human = gets.to_i
  if pos.value?(human)
  pos[pos.key(human)] = 'X'
  end
  if i == 0 && pos['y2'] != 'X'
    pos['y2'] = '0'
  elsif i == 0 && pos['y2'] == 'X'
    pos['x1'] = '0'
  else
    chocopie.call
  end
end
