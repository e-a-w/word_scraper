class HomeController < ApplicationController

  def index
    get_word
  end

  private

  def get_word
    @word = WordScraperService.call('merriam_webster')
  end
end
