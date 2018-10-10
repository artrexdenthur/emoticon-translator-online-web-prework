# require modules here
require 'yaml'

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
  em_lib.fetch('get_emoticon').fetch(em_eng)
end

def get_english_meaning(em_lib, em_jap)
  # code goes here
  em_lib.fetch('get_meaning').fetch(em_jap)
end