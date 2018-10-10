# require modules here
require 'yaml'

def load_library(path)
  # code goes here
  library = YAML.load_file(path)
  em_lib = { 'get_meaning' => {}, 'get_emoticon' => {} }
  library.each do |meaning, em_arr|
    # em_arr e.g. [">:-(", "ヽ(ｏ`皿′ｏ)ﾉ"]
    em_lib['get_meaning'][em_arr[1]] = meaning
    em_lib['get_emoticon'][em_arr[0]] = [em_arr[1]]
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end