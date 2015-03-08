class Game

def initialize
  @rolls = []
end

def roll(pins)
  @rolls << pins
end

def overall_score
  total = 0
  throw_number = 0
  10.times do
    if strike?(throw_number)
      total += strike_score(throw_number)
      throw_number +=1
    elsif spare?(throw_number)
      total += spare_score(throw_number)
      throw_number +=2
    else 
      total += regular_score(throw_number)
      throw_number +=2
    end
  end
  total
end  

def strike?(throw_number)
  @rolls[throw_number] == 10
end

def strike_score(throw_number)
  10 + @rolls[throw_number + 1] + @rolls[throw_number + 2]
end

def spare?(throw_number)
  @rolls[throw_number] + @rolls[throw_number + 1] == 10
end

def spare_score(throw_number)
  10 + @rolls[throw_number + 2]
end

def regular_score(throw_number)
  @rolls[throw_number] + @rolls[throw_number + 1]
end

end