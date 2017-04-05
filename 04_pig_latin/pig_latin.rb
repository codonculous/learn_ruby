
def translate(str)
  array = str.split
  puts array
  vowel = ["a","e","i","o"]
  new_array =[]

  array.each do |a|

    if vowel.include?(a[0]) == false
      v_index = []
      puts "a: #{a}"
      vowel.each do |v|
        v_index.push(a.index(v))
      end
      sliced = a.slice!(0,v_index.compact.min)
      puts "sliced: #{sliced}"
      puts "a:#{a}"
      a = "#{a}#{sliced}"
    end
    new_array.push("#{a}ay")
  end
  puts new_array
  new_array.join(" ")
end
