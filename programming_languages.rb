

def reformat_languages(languages)
    new_hash = {}
    languages.each do |category, language_list|
        language_list.each do |language, type_hash|
            type_hash.each do |type, info|
                if !new_hash.key?(language)
                new_hash[language] = {type => info, :style => [category]}
                else
                new_hash.each do |new_language, new_type_hash|
                    if new_language == language
                    new_type_hash.each do |key, value|
                        if key == :style
                            value << category
                        end
                    end
                    end
                end
                end
            end
        end
     end
    new_hash
end

