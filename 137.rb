n = 1
x = (-(n+1) + Math.sqrt((n+1)*(n+1) + 4*n*n)) / (2*n)
puts(x)
puts(Math.sqrt((n+1)*(n+1) + 4*n*n))
puts Math.sqrt((n+1)*(n+1) + 4*n*n).to_i
puts Math.sqrt((n+1)*(n+1) + 4*n*n).to_i == Math.sqrt((n+1)*(n+1) + 4*n*n)
num_gold = 1
while true do
  check = Math.sqrt((n+1)*(n+1) + 4*n*n)
  
  if check == check.to_i 
    x = (-(n+1) + check) / (2*n)
    puts(x)
    puts(n)
    puts(num_gold)
    if num_gold == 16 
      break
    end
    num_gold += 1    
  end
  n += 1
end