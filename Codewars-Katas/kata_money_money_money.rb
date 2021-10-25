# Mr. Scrooge has a sum of money 'P' that he wants to invest. Before he does, he wants to know how many years 'Y' this sum 'P' has to be kept in the bank in order for it to amount to a desired sum of money 'D'.

# The sum is kept for 'Y' years in the bank where interest 'I' is paid yearly. After paying taxes 'T' for the year the new sum is re-invested.

# Note to Tax: not the invested principal is taxed, but only the year's accrued interest

# Example:

#   Let P be the Principal = 1000.00
#   Let I be the Interest Rate = 0.05
#   Let T be the Tax Rate = 0.18
#   Let D be the Desired Sum = 1100.00

# After 1st Year -->
#   P = 1041.00
# After 2nd Year -->
#   P = 1083.86
# After 3rd Year -->
#   P = 1128.30

def calculate_years(principal, interest, tax, desired)
  year = 0
  total = principal
  while total < desired
    year += 1
    total = total * (1 + interest - interest * tax)
  end
  year
end

#  Alternative Solution
# def calculate_years(principal, interest, tax, desired)
#   return 0 if principal >= desired
#   Math::log(desired.to_f / principal, 1 + interest * (1 - tax)).ceil
# end

calculate_years(1000, 0.05, 0.18, 1100)
# => 3
calculate_years(1000, 0.01625, 0.18, 1200)
# => 14
calculate_years(1000, 0.05, 0.18, 1000)
# => 0
