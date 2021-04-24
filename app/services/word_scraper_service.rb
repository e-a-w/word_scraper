class WordScraperService < ApplicationService
  def initialize(source)
    @source = source
    @url = 'https://www.merriam-webster.com/word-of-the-day/'
    @css = 'div.word-and-pronunciation > h1'
  end

  def call
    body = Nokogiri::HTML(open(@url))
    word = body.css(@css).text
  end
end