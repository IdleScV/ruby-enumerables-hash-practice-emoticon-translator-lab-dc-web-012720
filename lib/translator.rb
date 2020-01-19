require "yaml"

def load_library(filepath)
  file = YAML.load_file(filepath)
  hash = {
    'get_meaning' => {  
      japanes emoticons1 => meaning1
      japanese emoticons2 => meaning2
    },
    'get_emoticon' => {
      english emoticons1 => japanese emoticons1
      english emoticons2 => japanese emoticons2
    }
  }
  return hash
end
  


def get_japanese_emoticon(emot)
    lib = load_library('./data.yml')
    i = 0
    while i < lib.keys.length
        if lib[lib.keys[i]][0] == emot
            return lib[lib.keys[i]][1]
        end
        i+= 1
    end
end

def get_english_meaning(jemot)
  
end