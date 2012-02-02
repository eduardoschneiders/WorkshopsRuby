rx =  /<b>(.+)<\/b>/
sub = '<i>\1</i>'
puts "<b>Hello world</b>".gsub(rx, sub)