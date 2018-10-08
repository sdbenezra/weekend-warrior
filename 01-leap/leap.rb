# My solution
def leap_year?(year)
  if year % 400 == 0
    return true
  elsif year % 4 == 0
    unless year % 100 == 0
      return true
    else
      return false
    end
  end
end

# Alternate solution
# def leap_year?(year)
#   return year % 4 == 0 && year % 100 != 0 || year % 400 == 0 ? true : false
# end
