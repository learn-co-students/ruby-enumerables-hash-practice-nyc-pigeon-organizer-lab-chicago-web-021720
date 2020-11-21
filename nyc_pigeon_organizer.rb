def nyc_pigeon_organizer(data)
  
  # Initialize a new hash
  new_hash = {}

  # Iterate over the data structure
  data.each do |key1, value1|

    # `value1`s are hashes
    value1.each do |key2, value2|

      # `value2`s are arrays of pigeon names
      i = 0
      while i < value2.length do 
        pigron_name = value2[i]

        # If the pigeon name is not already a top-level key, make it one
        if not new_hash[pigron_name]
          new_hash[pigron_name] = {:color => [], :gender => [], :lives => []}
        end
      
        # Update the new hash appropriately
        new_hash[pigron_name][key1] << key2.to_s

        i += 1
      
      end

    end

  end

  new_hash

end
