require "yaml"

def load_library(filepath)
  file = YAML.load_file(filepath)
  hash = {
    'get_meaning' => {
      file
    },
    'get_emoticon' => {
      
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