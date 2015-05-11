File.foreach('cedict_ts.u8') { |line| 
	Entry.create!(traditional: line.split(' ')[0], 
				  simplified: line.split(' ')[1], 
				  pinyin: line.split(/[\[\]]/)[1])
	}
