class HomeController < ApplicationController
  before_action :get_words

  def index
    @words
  end

  private

  def get_words
    @words = Site.all.map { |site| WordScraperService.call(site.name) }
  end
end
