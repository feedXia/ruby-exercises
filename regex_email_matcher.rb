regex = /[a-zA-Z0-9.-]+@[a-zA-Z-]+\.(com|edu|net)/

# OR
regex = /[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+/

# Tests
p (regex =~ "CoreyMSchafer@gmail.com") == 0
p (regex =~ "corey.schafer@university.edu") == 0
p (regex =~ "corey-321-schafer@my-work.net") == 0
