class HomeController < ApplicationController

  def index
    get_words
  end

  private

  def get_words
    @words = [
      WordScraperService.call('merriam_webster'),
      WordScraperService.call('dictionary')
    ]
  end
end
