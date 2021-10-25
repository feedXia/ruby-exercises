# Character recognition software is widely used to digitise printed texts. Thus the texts can be edited, searched and stored on a computer.

# When documents (especially pretty old ones written with a typewriter), are digitised character recognition softwares often make mistakes.

# Your task is correct the errors in the digitised text. You only have to handle the following mistakes:

# S is misinterpreted as 5
# O is misinterpreted as 0
# I is misinterpreted as 1
# The test cases contain numbers only by mistake.

def correct(string)
  p string.tr("501", "SOI")
end

# Tests
correct("L0ND0N")
#  => "LONDON"
correct("DUBL1N")
#  => "DUBLIN"
correct("51NGAP0RE")
#  => "SINGAPORE"
correct("BUDAPE5T")
#  => "BUDAPEST"
correct("PAR15")
#  => "PARIS"

# Alternative solutions

# def correct(string)
#   p string.gsub("5", "S").gsub("0", "O").gsub("1", "I")
# end
