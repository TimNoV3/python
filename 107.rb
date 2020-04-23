matrix = []
fh = open '1.txt'
fh.each do |line|
  matrix.push(line.split(','))
end
n = matrix.count()
edges = []
m = 0
res1 = 0
for i in 0...n do 
  
  for j in 0..i do 
    
    if matrix[i][j] != '-' 
      m += 1
      res1 += matrix[i][j].to_i
      edges.push([matrix[i][j],i,j])
    end
  end
end
# print m
# edges.each do |line|
#   print line + "\n"
# end
# n, m = 7, 12
# edges = [[16,0,1],[12,0,2],[17,1,3],[18,3,4],[19,3,5],[11,4,6],
#          [21,0,3],[20,1,4],[28,2,3],[31,2,5],[23,3,6],[27,5,6]]


edges.sort()
res = []

comp = []
for i in 0..(n-1)
  comp.append(i)
end
ans = 0
for weight, start, end1 in edges do
    if comp[start] != comp[end1]
        res.append([start, end1])
        ans += weight.to_i
        a = comp[start.to_i]
        b = comp[end1.to_i]
        for i in 0...n
            if comp[i] == b
                comp[i] = a
            end
          end
       end
      end

puts(res1 - ans)
puts(ans)