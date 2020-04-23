def primfacs(n)
  i = 2
  primfac = []
  while i * i <= n do
      while n % i == 0 do 
          primfac.append(i)
          n = n / i
      end
      i = i + 1
      
  end
  if n > 1
      primfac.append(n)
  end
  return primfac
end

num_mass = []
number = 1
count = 0
boolname = true
while boolname do
  if primfacs(number).uniq.count == 4
    count += 1
    num_mass.append(number)
  else
    count = 0
    num_mass.clear
  end
  if count == 4
    puts(num_mass)
    boolname = false
  end
  number+=1
end
