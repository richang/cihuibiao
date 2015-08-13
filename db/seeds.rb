File.foreach('cedict_ts.u8') { |line| 
    entry = Entry.create!(traditional: line.split(' ')[0], 
                          simplified: line.split(' ')[1], 
                          pinyin: line.split(/[\[\]]/)[1],
                          count: 0)
    defs = line.split("/")[1..-1]
    defs.each { |d| 
        entry.definitions.create!(definition: d, count: 0)
    }
}
