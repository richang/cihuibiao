class WelcomeController < ApplicationController
  def home
  end

  def fill
  	chars = params[:traditional].chars
  	entries = chars.map { |ch| Entry.find_by(traditional: ch) }
  	simplified = entries.map { |e| if e then e.simplified else "" end }
  	pinyin = entries.map { |e| if e then e.pinyin else "" end }
  	render :json => {"simplified": simplified.join,
  					 "pinyin": pinyin.join(' ')}
  end

end
