def attackrole(attack)
  puts "Die roll #{attack}"
end

def critorfail?(attack)
  if attack == 20
      return true
  else false
  end
end

#def levelbonus(level,attack)
#  if level >=9
#    attack += 4
#  elsif level >= 5
#    attack += 3
#  elsif level >= 1
#    attack += 2
#  end
#end

def attackbonus(level,ability,attack,modattack)
  if level >=9
    modattack = attack + 4
  elsif level >= 5
    modattack = attack + 3
  elsif level >= 1
    modattack = attack + 2
  end
  if ability >=19
    modattack = attack + 5
  elsif ability >=17
    modattack = attack + 4
  elsif ability >=15
    modattack = attack + 3
  elsif ability >=13
    modattack = attack + 2
  elsif ability >=11
    modattack = attack + 1
  end
  puts "Total Attack roll #{attack}"
end

def profbonus(level,attack,modattack,damage,ability,moddamage,totaldamage)
  #levelbonus(level,attack)
    #if level >=9
    #  levelattack = attack + 4
    #elsif level >= 5
    #  levelattack = attack + 3
    #elsif level >= 1
    #  levelattack = attack + 2
    #end
  hitmonster?(attack,damage,moddamage,totaldamage)
  attackbonus(level,ability,attack,modattack)
  #  if ability >=19
  #    modattack = 5
  #  elsif ability >=17
  #    modattack =4
  #  elsif ability >=15
  #    modattack =3
  #  elsif ability >=13
  #    modattack =2
  #  elsif ability >=11
  #    modattack =1
  #  end
    #fullattack = modattack + attack
    #puts "Total Attack roll #{attack}"
    #hitmonster?(attack,damage,moddamage,totaldamage)
  end


def hitmonster?(attack,damage,moddamage,totaldamage)
  if critorfail?(attack)
    moddamage = (damage*2) + attack
      puts "CRIT!! You hit for #{moddamage} damage!"
  elsif attack >= 15 && !critorfail?(attack)
    moddamage = damage + attack
      puts "You hit for #{moddamage} damage."
  elsif puts "You miss"
  end
    totaldamage = totaldamage - moddamage
  puts"-----HP Remaining-- #{totaldamage}"
end

#1.times do
  puts "Please enter character level:"
  level = gets.to_i
  puts "Please enter Attack Ability score"
  ability = gets.to_i
  moddamage = 0
  totaldamage = 50
5.times do
  attack = rand(16..20)
  damage = rand(1..8)
  attackrole(attack)
  #levelbonus(level,attack)
  profbonus(level,attack,damage,ability,moddamage,totaldamage)
end
