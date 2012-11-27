module Webgrind
  module Helpers
    def camelize
      # Capitalize each word except the first.
      return self.split('_').each_with_index.map {|word, i| i == 0 ? word : word.capitalize }.join
    end

    def write_config_line(key, item)
      output = "static $#{key.camelize} = "
      # Wrap only strings in quotes.
      output += item.kind_of?(String) ? "'#{item}'" : item.to_s
      output += ";"
      return output
    end
  end
end
