MERRIAM_WEBSTER = {
                    name: 'merriam_webster',
                    url: 'https://www.merriam-webster.com/word-of-the-day/',
                    css: 'div.word-and-pronunciation > h1'
                  }

DICTIONARY = {
              name: 'dictionary',
              url: 'https://www.dictionary.com/e/word-of-the-day/',
              css: 'div.otd-item-headword__word:first-of-type > h1'
            }

Site.create([
  MERRIAM_WEBSTER,
  DICTIONARY
  ])