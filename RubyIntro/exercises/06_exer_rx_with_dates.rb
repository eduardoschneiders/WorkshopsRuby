data = "2013/01/22"
rx =  /^(\d{4})[-|\/](\d{2})[-|\/](\d{2})$/

sub = '\3/\2/\1'
puts data.gsub(rx, sub)