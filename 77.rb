=begin

int target = 2;           
int[] primes = ESieve(2, 1000);
           
while (true) {
    int[] ways = new int[target+1];
    ways[0] = 1;
 
    for (int i = 0; i < primes.Length; i++) {                    
        for (int j = primes[i]; j <= target; j++) {
            ways[j] += ways[j - primes[i]];
        }
    }
                                 
    if (ways[target] > 5000) break;
    target++;
}
print "First value written as the sum of primes \nin over", L, "ways:", target
  
=end

primes = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79]
L  = 5000
target = 11

while true do
    ways = [1] + [0]*target
    
    primes.each do |p|
        
        for i in (p.to_i..(target))
            
            ways[i] += ways[i-p]
        end
    end
    if ways[target] > L
      break    
    end
    target += 1
    
end
puts target