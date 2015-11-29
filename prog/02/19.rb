class Prog19
  def initialize
    @lines = File.read(Dir.pwd << '/data/txt/hightemp.txt').lines
  end

  def frequency
    freq = Hash.new 0
    @lines.each { |line| freq[line.split("\t")[0]] += 1 }
    ans = []
    freq.sort { |a, b| b[1] <=> a[1] }.each { |e| ans.push e[0] }
    ans.join("\n") << "\n"
  end
end

prog19 = Prog19.new
puts prog19.frequency
# cut -f1 data/txt/hightemp.txt | sort | uniq -c | sort -r | cut -c6-
