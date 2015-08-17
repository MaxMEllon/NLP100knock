def prog_15
  ans = []
  lines = File.read(Dir.pwd + '/data/txt/hightemp.txt').lines.reverse
  (0...ARGV[0].to_i).each { |k| ans.push lines[k] }
  ans.reverse.join
end

puts prog_15
