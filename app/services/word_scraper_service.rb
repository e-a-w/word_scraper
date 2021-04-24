require 'open-uri'

class WordScraperService < ApplicationService
  def initialize(source)
    @source = source
    @site = Site.find_by(name: @source)
    @text = get_text
    @definition_url = get_definition_url
    @source_url = get_source_url
  end

  def get_text
    body = Nokogiri::HTML(URI.open(@site.word_url).read)
    body.css(@site.word_css).map(&:text).first
  end

  def get_definition_url
    @site.definition_url + @text
  end

  def get_source_url
    split_url = @definition_url.split('.')
    split_url[1] + '.' + split_url[2][0...3]
  end

  def call
    return unless @site && @text

    { text: @text, definition_url: @definition_url, source: @source_url }
  end
end