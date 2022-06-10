# create a madlibs program that reads some text and 
# plugs in a selections of a randomized noun verb adjective or adverb
# build your own nouns verbs etc but the text if external

ADJECTIVES = %w(quick lazy sleepy ugly).freeze
NOUNS = %w(fox dog head leg).freeze
VERBS = %w(jumps lifts bite licks).freeze
ADVERBS = %w(easily lazily nosily excitedly).freeze

File.open('madlibs.txt') do |file|
  file.each do |line|
    puts format(line, noun:      NOUNS.sample,
                      verb:      VERBS.sample,
                      adjective: ADJECTIVES.sample,
                      adverb:    ADVERBS.sample)
  end
end
  