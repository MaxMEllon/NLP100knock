def prog_11
  path = Dir.pwd + '/data/txt/hightemp.txt'
  swp = File.read(path).gsub("\t", ' ')
  swp
end
