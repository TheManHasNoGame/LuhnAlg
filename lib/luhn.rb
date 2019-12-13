module Luhn
  def self.is_valid?(number)
    answer = []
    rev = number.to_s.reverse.split("").map(&:to_i)

    rev.each_with_index do |x, id|
      if id % 2 == 1
       dub = x * 2
        if dub >= 10
          answer << dub - 9
        else
          answer << dub
        end
      else
        answer << x
      end
    end
    amount = 0
    answer.each do |c|
      amount += c
    end
    amount % 10 == 0
  end
end


