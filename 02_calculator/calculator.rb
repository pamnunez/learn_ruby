def add(num1, num2)
   num1+num2
end

def subtract(num1, num2)
   num1-num2
end

def sum(nums)
   sum = 0
   nums.each do |num|
      sum += num
   end
   sum
end

def multiply(num1, num2)
   num1 * num2
end

def power(num1, num2)
   product = 1
   num2.times do product = product * num1 end
   product
end

def factorial(num)
   if (num < 2)
      return 1
   end
   product = num * factorial(num-1)
   return product
end

