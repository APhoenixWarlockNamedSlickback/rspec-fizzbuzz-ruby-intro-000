def attackrole(attack)
  puts "Die roll #{attack}"
end

def critorfail?(attack)
  if attack == 20
      return true
  else false
  end
end

def levelbonus(level,attack)
  if level >=9
    attack += 4
  elsif level >= 5
    attack += 3
  elsif level >= 1
    attack += 2
  end
end

def abilitybonus(ability,attack)
  if ability >=19
    attack += 5
  elsif ability >=17
    attack += 4
  elsif ability >=15
    attack += 3
  elsif ability >=13
    attack += 2
  elsif ability >=11
    attack += 1
  end
end

def profbonus(level,attack,damage,ability,moddamage,totaldamage)
  levelbonus(level,attack)
    #if level >=9
    #  levelattack = attack + 4
    #elsif level >= 5
    #  levelattack = attack + 3
    #elsif level >= 1
    #  levelattack = attack + 2
    #end
  abilitybonus(ability,attack)
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
    puts "Total Attack roll #{attack}"
    hitmonster?(attack,damage,moddamage,totaldamage)
  end


def hitmonster?(attack,damage,moddamage,totaldamage)
  if critorfail?(attack)
    damage = (damage*2) + attack
      puts "CRIT!! You hit for #{moddamage} damage!"
  elsif fullattack >= 15 && !critorfail?(attack)
    damage = damage + attack
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
