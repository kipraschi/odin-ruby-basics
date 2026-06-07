def fibs(number)
  return [0] if number == 1
  sequence = [0, 1]
  (2...number).each do |index|
    sequence << sequence[index - 1] + sequence[index - 2]
  end
  sequence
end

def fibs_rec(number)
  return [] if number == 0
  return [0] if number == 1
  return [0, 1] if number == 2
  sequence = fibs_rec(number - 1)
  sequence << sequence[-1] + sequence[-2]
end