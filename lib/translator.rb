# require modules here
require 'yaml'
require 'pry'
def load_library(file)
  # code goes here
  data = YAML.load_file(file)

  hash = {
      "get_emoticon" => {},
      "get_meaning" => {}
    }
  data.each do |k,v|
    hash["get_emoticon"][v[0]] = v[1]
    hash["get_meaning"][v[1]] = k
  end
  hash
end

def get_japanese_emoticon(file, emo)
  # code goes here
  get = load_library(file)
  if get["get_emoticon"][emo]
    get["get_emoticon"][emo]
  else
    "Sorry, that emoticon was not found"
  end

end

def get_english_meaning(file, emo)
  # code goes here
  get = load_library(file)
  if get["get_meaning"][emo]
    get["get_meaning"][emo]
  else
    "Sorry, that emoticon was not found"
  end
end
