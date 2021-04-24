require 'open-uri'

class WordScraperService < ApplicationService
  def initialize(source)
    @source = source
    @url = get_url
    @css = get_css
  end

  def get_url 
    @url = Site.find_by(name: @source).url
  end

  def get_css
    @css = Site.find_by(name: @source).css
  end

  def call
    return unless @url && @css

    body = Nokogiri::HTML(open(@url).read)
    body.css(@css).map(&:text).first
  end
end