class HomeController < ApplicationController
  def home
  	@column_headers = Entry.column_headers
  	@default_number_rows = Entry.default_number_rows
  end

  def autofill
    if params[:chars] == ""
      autofill_data = [[{col_to_fill:"",pinyin:"",definition:""}]]
    else
    	chars = params[:chars].chars
    	compounds = []
    	j = 0
    	i = chars.length - 1
    	while j < chars.length
    		if i == j || Entry.find_by(params[:orig_col] => chars[j..i].join)
    			compounds << chars[j..i].join
    			j = i + 1
          i = chars.length - 1
        else
          i = i - 1
    		end
    	end

    	entries = compounds.map { |c| Entry.where(params[:orig_col] => c) }
    	# autofill_data = entries.map { |e| e.map { |entry| { col_to_fill: entry.send(params[:col_to_fill]), 
     #                                                      pinyin: entry.formatted_pinyin, 
     #                                                      definition: entry.definitions, 
     #                                                      freq_rank: entry.freq_rank } 
     #                                          }.sort {|a,b| a.freq_rank != -1 && b.freq_rank != -1 ? a.freq_rank <=> b.freq_rank 
     #                                                                                               : a.freq_rank != -1 ? -1 : 1}
     #                              }
      autofill_data = entries.map { |e| e.map { |entry| { col_to_fill: entry.send(params[:col_to_fill]), 
                                                          pinyin: entry.formatted_pinyin, 
                                                          definition: entry.definitions, 
                                                          freq_count: entry.freq_count } 
                                              }.sort_by {|e| -e[:freq_count]}
                                  }
  	end
    render :json => autofill_data.to_json
  end

end
