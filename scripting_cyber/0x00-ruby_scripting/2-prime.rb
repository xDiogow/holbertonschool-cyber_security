#2-prime.rb
def prime(number)
  if (number <= 1)
    return false
  end

  for i in 2..number-1
    if (number % i == 0)
      return false
    end
  end

  return true
end
