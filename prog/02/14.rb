def prog_14
  ans = []
  File.read(Dir.pwd + '/data/txt/hightemp.txt').lines.each_with_index do |line, k|
    break if ARGV[0].to_i <= k
    ans.push line
  end
  ans.join
end

puts prog_14
