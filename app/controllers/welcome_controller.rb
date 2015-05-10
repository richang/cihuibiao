class WelcomeController < ApplicationController
  def home
  end

  def fill
  	entry = Entry.find_by(traditional: params[:traditional])
  	render :json => {"simplified": entry.simplified,
  					 "pinyin": entry.pinyin}
  end

end
