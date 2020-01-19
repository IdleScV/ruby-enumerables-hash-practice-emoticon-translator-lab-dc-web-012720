require "yaml"

def load_library(filepath)
    file = YAML.load_file(filepath)

    count = 0
    hash1 = {}
    while count < file.keys.length do
        hash1[file[file.keys[count]][1]] = file.keys[count]
        count += 1
    end

    count = 0
    hash2 = {}
    while count < file.keys.length do
        hash2[file[file.keys[count]][0]] = file[file.keys[count]][1]
        count += 1
    end

    hash = {
      'get_meaning' => (hash1),
      'get_emoticon' => (hash2)
    }
    return hash
  end
  


def get_japanese_emoticon(emot, filepath)
    lib = load_library(filepath)
    return lib["get_emoticon"][emot]
end

def get_english_meaning(jemot)
  
end