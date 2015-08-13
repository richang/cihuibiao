class HomeController < ApplicationController
  def home
  	@column_headers = Entry.column_headers
  	@default_number_rows = Entry.default_number_rows
  end

  def autofill
  	chars = params[:chars].chars
  	compounds = []
  	j = 0
  	i = 1
  	while j < chars.length
  		if i >= chars.length || !Entry.find_by(params[:orig_col] => chars[j..i].join)
  			compounds << chars[j..i-1].join
  			j = i
  		end
  		i = i + 1
  	end

  	entries = compounds.map { |c| Entry.find_by(params[:orig_col] => c) }
  	new_chars = entries.map { |e| if e then e.send(params[:col_to_fill]) else "" end }
  	pinyin = entries.map { |e| if e then e.formatted_pinyin else "" end }
  	render :json => {"chars": new_chars.join,
  					 "pinyin": pinyin.join(' ')}
  end

end
