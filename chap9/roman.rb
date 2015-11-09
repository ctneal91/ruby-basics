def old_roman_numeral integer
  if (integer >= 4000) || (integer < 1)
    puts "This program only works for a integers between than 4,000 and 1."
  end

  thousands_place = integer/1000
  if thousands_place > 0
    integer = integer%1000
  end

  five_hundreds_place = integer/500
  if five_hundreds_place > 0
    integer = integer%500
  end

  hundreds_place = integer/100
  if hundreds_place > 0
    integer = integer%100
  end

  fifties_place = integer/50
  if fifties_place > 0
    integer = integer%50
  end

  tens_place = integer/10
  if tens_place > 0
    integer = integer%10
  end

  fives_place = integer/5
  if fives_place > 0
    integer = integer%5
  end

  ones_place = integer/1

  puts 'M'*thousands_place + 'D'*five_hundreds_place + 'C'*hundreds_place + 'L'*fifties_place + 'X'*tens_place + 'V'*fives_place + 'I'*ones_place

end

def roman_numeral integer
  numeral = []

  if (integer >= 4000) || (integer < 1)
    puts "This program only works for a integers between than 4,000 and 1."
  end

  thousands_place = integer/1000
  if thousands_place > 0
    ms = 'M'*thousands_place
    integer = integer%1000
  end

  five_hundreds_place = integer/500
  if five_hundreds_place > 0
    if integer%500 >= 400
      ds = 'CM'
    else
      ds = 'D'*five_hundreds_place
    end
    integer = integer%500
  end

  hundreds_place = integer/100
  if hundreds_place > 0
    if ds == 'CM'
      cs = ''
    elsif hundreds_place == 4
      cs = 'CD'
    else
      cs = 'C'*hundreds_place
    end
    integer = integer%100
  end

  fifties_place = integer/50
  if fifties_place > 0
    if integer%50 >= 40
      ls = 'XC'
    else
      ls = 'L'*fifties_place
    end
    integer = integer%50
  end

  tens_place = integer/10
  if tens_place > 0
    if ls == 'XC'
      xs = ''
    elsif tens_place == 4
      xs = 'XL'
    else
      xs = 'X'*tens_place
    end
    integer = integer%10
  end

  fives_place = integer/5
  if fives_place > 0
    if integer%5 >= 4
      vs = 'IX'
    else
      vs = 'V'*fives_place
    end
    integer = integer%5
  end

  if vs == 'IX'
    is = ''
  elsif integer == 4
    is = 'IV'
  else
    is = 'I'*integer
  end

  numeral << ms
  numeral << ds
  numeral << cs
  numeral << ls
  numeral << xs
  numeral << vs
  numeral << is

  puts numeral.join('')
end

old_roman_numeral 1992
roman_numeral 1992
