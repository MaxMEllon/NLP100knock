def prog_11
  path = Dir.pwd + '/data/txt/hightemp.txt'
  swp = File.read(path).tr("\t", ' ')
  swp
end
