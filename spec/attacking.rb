#attack = rand(1..20)

def attackrole(attack)
  puts "Die roll #{attack}"
end

def critorfail?(attack)
  if attack == 20
      return true
  else false
  end
end

def profbonus(level,attack,fullattack,damage,ability,moddamage,totaldamage)
    if level >=9
      levelattack = attack + 4
    elsif level >= 5
      levelattack = attack + 3
    elsif level >= 1
      levelattack = attack + 2
    end
    if ability >=19
      modattack = 5
    elsif ability >=17
      modattack =4
    elsif ability >=15
      modattack =3
    elsif ability >=13
      modattack =2
    elsif ability >=11
      modattack =1
    end
    fullattack = modattack + levelattack
    puts "Total Attack roll #{fullattack}"
    hitmonster?(attack,fullattack,damage,modattack,moddamage,totaldamage)
  end


def hitmonster?(attack,fullattack,damage,modattack,moddamage,totaldamage)
  if critorfail?(attack)
    moddamage = (damage*2) + modattack
      puts "CRIT!! You hit for #{moddamage} damage!"
  elsif fullattack >= 15 && !critorfail?(attack)
    moddamage = damage + modattack
      puts "You hit for #{moddamage} damage."
  elsif puts "You miss"
  end
    totaldamage = totaldamage - moddamage
  puts"----------------- #{totaldamage}"
end

#1.times do
  puts "Please enter character level:"
  level = gets.to_i
  puts "Please enter Attack Ability score"
  ability = gets.to_i
  moddamage = 0
  totaldamage = 50
  attack = rand(16..20)
  damage = rand(1..8)
  attackrole(attack)
  profbonus(level,attack,fullattack,damage,ability,moddamage,totaldamage)
  #attackrole(attack)
5.times do
  #attack = rand(16..20)
  #damage = rand(1..8)
  #attackrole(attack)
  #fullattack = modattack + levelattack
  #profbonus(level,attack,damage,ability,moddamage,totaldamage)
  hitmonster?(attack,fullattack,damage,modattack,moddamage,totaldamage)
end
