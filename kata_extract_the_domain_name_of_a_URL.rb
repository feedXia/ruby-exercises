# Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:

# domain_name("http://github.com/carbonfive/raygun") == "github"
# domain_name("http://www.zombie-bites.com") == "zombie-bites"
# domain_name("https://www.cnet.com") == "cnet"

def domain_name(url)
  if url.include? "www."
    p url.partition("w.").last.partition(".").first
  elsif url.include? "http"
    p url.partition("//").last.partition(".").first
  else
    p url.partition(".").first
  end
  # url.chars.first == "w" ?
end

#  Tests
domain_name("http://google.com")
#  => "google"
domain_name("http://google.co.jp")
#  => "google"
domain_name("www.xakep.ru")
#  => "xakep"
domain_name("https://youtube.com")
#  => "youtube"
domain_name("https://www.codewars.com")
#  => "codewars"
domain_name("icann.org")
#  => "icann"
