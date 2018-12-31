def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    language.each do |language_name, type|
      if new_hash[language_name] == nil
          new_hash[language_name] = type
      end
      new_hash[language_name][:style] = []
      new_hash[language_name][:style] << style
    end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
end
