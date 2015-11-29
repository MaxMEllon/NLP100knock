def prog_17
  line = File.read(Dir.pwd << '/data/txt/hightemp.txt').lines[0].chomp
  ans = []
  line.split("\t").each do |char|
    ans << char unless ans.include?(char)
  end
  ans.to_s.gsub(/\[|\]|"|\ /, '').tr(',', "\t") << "\n"
end
