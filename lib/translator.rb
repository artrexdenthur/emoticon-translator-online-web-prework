# require modules here
require 'yaml'

def load_library(path)
  # code goes here
  YAML.load_file(path)
  { 'get_meaning' => 0, 'get_emoticon' => 0 }
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end