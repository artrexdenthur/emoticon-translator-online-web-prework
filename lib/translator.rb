# require modules here
require 'yaml'
require 'pry'

def load_library(path)
  # code goes here
  library = YAML.load_file(path)
  em_lib = { 'get_meaning' => {}, 'get_emoticon' => {} }
  library.each do |meaning, em_arr|
    # em_arr e.g. [">:-(", "ヽ(ｏ`皿′ｏ)ﾉ"]
    em_lib['get_meaning'][em_arr[1]] = meaning
    em_lib['get_emoticon'][em_arr[0]] = em_arr[1]
  end
  em_lib
end

def get_japanese_emoticon(path, em_eng)
  # code goes here
  em_lib = load_library(path)
  if em_lib.fetch('get_emoticon').has_key?(em_eng)
    em_lib.fetch('get_emoticon')[em_eng]
  else
    'Sorry, that emoticon was not found'
  end
end

def get_english_meaning(path, em_jap)
  # code goes here
  em_lib = load_library(path)
  # binding.pry
  if em_lib.fetch('get_meaning').has_key?(em_jap)
    em_lib.fetch('get_meaning')[em_jap]
  else
    'Sorry, that emoticon was not found'
  end
end