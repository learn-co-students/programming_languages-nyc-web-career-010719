def reformat_languages(languages)

  new_hash = {}

  languages.each do |style, language|
    language.each do |name, data|
      new_hash[name] = data
      new_hash[name][:style] = []
    end
  end

  languages.each do |style, language|
    language.each do |name, data|
      new_hash[name][:style].push(style)
    end
  end

  return new_hash

end
