class Entry < ActiveRecord::Base

	has_many :definitions

	def self.column_headers 
		['Traditional','Simplified','Pinyin','Definition']
	end

	def self.default_number_rows
		15
	end

	def formatted_pinyin
		car = self.pinyin.downcase
		car = car.gsub(/a5/, "a") 
		car = car.gsub(/e5/, "e") 
		car = car.gsub(/i5/, "i") 
		car = car.gsub(/o5/, "o") 
		car = car.gsub(/u5/, "u") 
		car = car.gsub(/u:5/, "ü") 
		car = car.gsub(/a1/, "ā") 
		car = car.gsub(/a2/, "á") 
		car = car.gsub(/a3/, "ǎ") 
		car = car.gsub(/a4/, "à")  
		car = car.gsub(/e1/, "ē") 
		car = car.gsub(/e2/, "é") 
		car = car.gsub(/e3/, "ě") 
		car = car.gsub(/e4/, "è")  
		car = car.gsub(/i1/, "ī") 
		car = car.gsub(/i2/, "í") 
		car = car.gsub(/i3/, "ǐ") 
		car = car.gsub(/i4/, "ì")  
		car = car.gsub(/o1/, "ō")  
		car = car.gsub(/o2/, "ó") 
		car = car.gsub(/o3/, "ǒ") 
		car = car.gsub(/o4/, "ò") 
		car = car.gsub(/u1/, "ū") 
		car = car.gsub(/u2/, "ú") 
		car = car.gsub(/u3/, "ǔ") 
		car = car.gsub(/u4/, "ù")  
		car = car.gsub(/u:1/, "ǖ")  
		car = car.gsub(/u:2/, "ǘ") 
		car = car.gsub(/u:3/, "ǚ") 
		car = car.gsub(/u:4/, "ǜ")  
		car = car.gsub(/an1/, "ān") 
		car = car.gsub(/an2/, "án") 
		car = car.gsub(/an3/, "ǎn") 
		car = car.gsub(/an4/, "àn") 
		car = car.gsub(/ang1/, "āng") 
		car = car.gsub(/ang2/, "áng") 
		car = car.gsub(/ang3/, "ǎng") 
		car = car.gsub(/ang4/, "àng") 
		car = car.gsub(/en1/, "ēn") 
		car = car.gsub(/en2/, "én") 
		car = car.gsub(/en3/, "ěn") 
		car = car.gsub(/en4/, "èn") 
		car = car.gsub(/eng1/, "ēng") 
		car = car.gsub(/eng2/, "éng") 
		car = car.gsub(/eng3/, "ěng") 
		car = car.gsub(/eng4/, "èng") 
		car = car.gsub(/in1/, "īn") 
		car = car.gsub(/in2/, "ín") 
		car = car.gsub(/in3/, "ǐn") 
		car = car.gsub(/in4/, "ìn")  
		car = car.gsub(/ing1/, "īng") 
		car = car.gsub(/ing2/, "íng") 
		car = car.gsub(/ing3/, "ǐng") 
		car = car.gsub(/ing4/, "ìng") 
		car = car.gsub(/ong1/, "ōng") 
		car = car.gsub(/ong2/, "óng") 
		car = car.gsub(/ong3/, "ǒng") 
		car = car.gsub(/ong4/, "òng") 
		car = car.gsub(/un1/, "ūn") 
		car = car.gsub(/un2/, "ún") 
		car = car.gsub(/un3/, "ǔn") 
		car = car.gsub(/un4/, "ùn")  
		car = car.gsub(/er2/, "ér") 
		car = car.gsub(/er3/, "ěr") 
		car = car.gsub(/er4/, "èr") 
		car = car.gsub(/aō/, "āo")  
		car = car.gsub(/aó/, "áo") 
		car = car.gsub(/aǒ/, "ǎo") 
		car = car.gsub(/aò/, "ào") 
		car = car.gsub(/oū/, "ōu")  
		car = car.gsub(/oú/, "óu") 
		car = car.gsub(/oǔ/, "ǒu") 
		car = car.gsub(/où/, "òu") 
		car = car.gsub(/aī/, "āi") 
		car = car.gsub(/aí/, "ái") 
		car = car.gsub(/aǐ/, "ǎi") 
		car = car.gsub(/aì/, "ài")  
		car = car.gsub(/eī/, "ēi") 
		car = car.gsub(/eí/, "éi") 
		car = car.gsub(/eǐ/, "ěi") 
		car = car.gsub(/eì/, "èi") 
	end

end
