require "yaml"

def load_library(filepath)
  YAML.load_file(filepath)
end
  


def get_japanese_emoticon(emot)
    lib = load_library('./data.yml')
    i = 0
    while i < lib.keys.length
        if lib[lib.keys[i]].include? emot
            return lib[lib.keys[i]][2]
        end
        i+= 1
    end
end
def get_english_meaning(jemot)
  
end