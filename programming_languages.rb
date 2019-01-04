def reformat_languages(languages)
  new_hash = {}
  languages[:oo].each do |language, type|
    if language == :ruby 
      new_hash[:ruby] = {
        type: "interpreted",
        style: [:oo]
      }
    elsif language == :javascript 
      new_hash[:javascript] = {
        type: "interpreted",
        style: [:oo, :functional]
      }
    elsif language == :python 
      new_hash[:python] = {
        type: "interpreted",
        style: [:oo]
      }
    elsif language == :java 
      new_hash[:java] = {
        type: "compiled",
        style: [:oo]
      }
    end 
  end 
  languages[:functional].each do |language, type|    
    if language == :clojure
      new_hash[:clojure] = {
        type: "compiled",
        style: [:functional]
      }
    elsif language == :erlang 
      new_hash[:erlang] = {
        type: "compiled",
        style: [:functional]
      }
    elsif language == :scala
      new_hash[:scala] = {
        type: "compiled",
        style: [:functional]
      }
    end 
  end
  new_hash
end




