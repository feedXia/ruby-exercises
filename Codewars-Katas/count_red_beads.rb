# Two red beads are placed between every two blue beads. There are N blue beads. After looking at the arrangement below work out the number of red beads.

# @ @@ @ @@ @ @@ @ @@ @ @@ @

# Implement count_red_beads(n) so that it returns the number of red beads.
# If there are less than 2 blue beads return 0.

def count_red_beads n 
    n > 1 ? (n - 1) * 2 : 0
end 

count_red_beads(0)
# => 0
count_red_beads(1)
# => 0
count_red_beads(3)
# => 4
count_red_beads(5)
# => 8