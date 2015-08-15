def prog_09
  str = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."
  random = Random.new
  arr = str.split(' ')
  arr.each_with_index do |e, k|
    if e.length > 4
      rnd = 0
      loop do
        rnd = random.rand(0...arr.length)
        break if arr[rnd].length > 4
      end
      arr[k] = arr[rnd]
      arr[rnd] = e
    else
      next
    end
  end
  arr.to_s.gsub(/\"|\[|\]/, '').gsub(',', '')
end

p prog_09
