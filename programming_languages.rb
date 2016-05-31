require 'Pry'

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, language_hash|
    language_hash.each do |language, type|
      new_hash[language] = {:type => type[:type], :style => []}

    end
  end

  languages.each do |style, language_hash|
    language_hash.each do |language, type|
      new_hash.each do |name, info|
        new_hash[name][:style] << style if language == name
      end
    end
  end
  new_hash
end
