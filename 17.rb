array_1 = [4,3,3,5,4,5,4,6,6,6,11,10,10,12,10,11,10,12,12]
array_3 = [8,8,5,9,10,9,11,9]
array_4 = [3,6,6,9,7,8,7,9,9]
a = 0
for i in 0...1000 do
  if i % 100 > 19 & i % 100 != 0 then 
    a = a + array_3[(i % 100 / 10) - 2] + array_1[(i % 10) - 1]
  else 
    a = a + array_1[(i % 100) - 1]
  end
  if i / 100 != 0 then 
    a = a + array_4[i/100-1]
  end

end
a += 6
puts a