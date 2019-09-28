
require 'pry'
def nyc_pigeon_organizer(pigeon_data)
  
    new_pigeon_hash = {}
    pigeon_data.each do |attribute, attribute_hash|
      attribute_hash.each do |att_type, att_value_array|
        att_value_array.each do |pigeon_name|
          #binding.pry
          if !new_pigeon_hash[pigeon_name]
             new_pigeon_hash[pigeon_name] = {}
          end #e.g. Theo exists
            
            if !new_pigeon_hash[pigeon_name][attribute]  #:color does not exist
                new_pigeon_hash[pigeon_name][attribute] = []
            end #:color exists
            new_pigeon_hash[pigeon_name][attribute].push(att_type.to_s)
            
          else #: Theo exists
            new_pigeon_hash[pigeon_name] = {
          end
        end #loop thru array of pigeon names
      end #loop thru attribute color,gender,lives
    end #loop thru each input element
  binding.pry
  return new_pigeon_hash  
  end
