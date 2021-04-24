MERRIAM_WEBSTER = {
                    name: 'merriam_webster',
                    word_url: 'https://www.merriam-webster.com/word-of-the-day/',
                    word_css: 'div.word-and-pronunciation > h1',
                    definition_url: 'https://www.merriam-webster.com/dictionary/'
                  }

DICTIONARY = {
              name: 'dictionary',
              word_url: 'https://www.dictionary.com/e/word-of-the-day/',
              word_css: 'div.otd-item-headword__word:first-of-type > h1',
              definition_url: 'https://www.dictionary.com/browse/'
            }

Site.create([
  MERRIAM_WEBSTER,
  DICTIONARY
  ])