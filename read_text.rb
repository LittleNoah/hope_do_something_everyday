filename =ARGV[0]
file = File.open(filename)
file.each_line { |line| print line}
file.close