def pig_it text
  text.split.map do |word|
    if word =~ /\A[a-zA-Z]+\z/
      word[1..] + word[0] + 'ay'
    else
      word
    end
  end.join(" ")
end

# should print out 'igPay atinlay siay oolcay'
puts pig_it('Pig latin is cool')
# should print out 'hisTay siay ymay tringsay'
puts pig_it('This is my string')
