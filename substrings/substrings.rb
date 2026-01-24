def substrings(text, array)
  text_downcase = text.downcase
  array
  .reduce(Hash.new(0)) do |result, substring| 
    times_found = text_downcase.scan(substring.downcase).length
    result[substring] += times_found if times_found > 0
    result
  end
end