require "yaml"


def load_library(path)
  hash = {}
  hash[:get_meaning] = {}
  hash[:get_emoticon] = {}
  
  emoticons_list = YAML.load_file(path)
  emoticons_list.each { |k,v|
    jp_emoticon = emoticons_list[k][1]
    eng_emoticon = emoticons_list[k][0]
    hash[:get_meaning][jp_emoticon] = k
    hash[:get_emoticon][eng_emoticon] = jp_emoticon
  }
  hash
end

def get_japanese_emoticon(path,emoticon)
  load_library(path)
  
  
end

def get_english_meaning(path, emoticon)
  # code goes here
end