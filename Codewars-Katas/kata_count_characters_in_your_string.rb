# The main idea is to count all the occurring characters in a string. If you have a string like aba, then the result should be {'a': 2, 'b': 1}.

# What if the string is empty? Then the result should be empty object literal, {}.

def count_chars(s)
  char_group = s.split("").group_by { |char, count| char }
  p char_group.each { |key, value| char_group[key] = value.count }
end

#  Alternative Solutions
# def count_chars(s)
#   s.chars.group_by(&:itself).transform_values(&:count)
# end

# def count_chars(s)
#   s.chars.group_by { |x| x }.map { |k,v| [k, v.size]}.to_h
# end

# def count_chars(s)
#   s.chars.map {|c| [c, s.chars.count(c)] }.to_h
# end

# def count_chars(s)
#   s.chars.uniq.each_with_object({}) { |c, h| h[c] = s.count(c) }
# end

# Tests
count_chars("aba")
# => {"a" => 2, "b" => 1}
count_chars("")
# => {}
