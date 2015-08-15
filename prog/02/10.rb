def prog_10
  path = `pwd`.chomp + '/data/txt/hightemp.txt'
  result = `wc -l #{path}`
  result.chomp.split(' ')[0].to_i
end
