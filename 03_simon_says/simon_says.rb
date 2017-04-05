def echo(w)

  w

end

def shout(s)

  s.upcase

end

def repeat(str,repeat = 2)
  ("#{str} " * repeat).rstrip

end

def start_of_word(str, length)

  str.slice(0,length)

end

def first_word(str)

  if str.index(' ')
  start_of_word(str,str.index(' '))
  else
  str
  end
# or array[0] = str.split
end

def titleize(str)

  array = str.split
  array.each do |a|
    if ( a != array[0] && (a == "over" || a == "and" || a == "the") )
      a.downcase!
    else
      a.capitalize!
    end
  end
  array.join(" ")
end

puts titleize("the bridge over the river kwai")
