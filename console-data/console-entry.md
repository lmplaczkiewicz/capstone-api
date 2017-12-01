PlayerClass.create(:name => "Fighter", :str => 16, :dex => 14, :con => 14, :wis => 10, :int => 10, :cha => 10)

PlayerClass.create(:name => "Barbarian", :str => 18, :dex => 16, :con => 16, :wis => 8, :int => 8, :cha => 8)
PlayerClass.create(:name => "Ranger", :str => 10, :dex => 18, :con => 12, :wis => 14, :int => 16, :cha => 14)
PlayerClass.create(:name => "DefaultMonster", :str => 10, :dex => 10, :con => 10, :wis => 10, :int => 10, :cha => 10)

Weapon.create(:name => "Greatsword", :dice => 2, :sides => 6)
Weapon.create(:name => "Longbow", :dice => 1, :sides => 8)
Weapon.create(:name => "Shortsword and Shield", :dice => 1, :sides => 6)

Weapon.create(:name => "Bite", :dice => 1, :sides => 4)
Weapon.create(:name => "Scimitar", :dice => 1, :sides => 6)
Weapon.create(:name => "Greataxe", :dice => 1, :sides => 12)
Weapon.create(:name => "Tusk", :dice => 1, :sides => 6)

Quest.create(:story =>  "Hey you! Yeah you! Standing over there taking up space in the tavern! Come over here and put yourself to use. There is a large rat in the basement. Clear it out for me and you can stand there looking dumb some more.", :reward => 10, :renown => 5)

Quest.create(:story =>  "There is a goblin taking chickens from the coop outside the tavern. Anyone that deals with it will get a reward from Old Grog Nog.", :reward => 10, :renown => 5)

Quest.create(:story =>  "We got a special show for the tavern tonight! A full blooded Orc captured and ready to take on all comers! Step into the ring and get ready for the fight of your life!", :reward => 25, :renown => 10)

Quest.create(:story =>  "Old Grog Nog wants to put on a feast for us. One of you louts go out and bring us a boar", :reward => 25, :renown => 10)

QuestMonster.create(:quest_id => 1, :monster_id => 1)
QuestMonster.create(:quest_id => 2, :monster_id => 2)
QuestMonster.create(:quest_id => 3, :monster_id => 3)
QuestMonster.create(:quest_id => 4, :monster_id => 4)

Monster.create(:name => "Rodent of Unusual Size", :health => 12, :armor => 12, :xp => 10, :player_class_id => 4, :weapon_id => 4)
Monster.create(:name => "Goblin", :health => 12, :armor => 15, :xp => 25, :player_class_id => 4, :weapon_id => 5)
Monster.create(:name => "Orc", :health => 21, :armor => 13, :xp => 100, :player_class_id => 4, :weapon_id => 6)
Monster.create(:name => "Boar", :health => 18, :armor => 11, :xp => 50, :player_class_id => 4, :weapon_id => 7)
