def nyc_pigeon_organizer(data)
  # write your code here!
  
  result = {}
  data.each{ |k1, v1|
    v1.each{ |k2, v2|
      v2.each{ |item|
        if result[item]
          if result[item][k1]
            result[item][k1].push(k2.to_s)
          else
            result[item][k1] = [k2.to_s]
          end
        else
          result[item] = {}
          result[item][k1] = [k2.to_s]
        end
      }
    }
  }
  
  result
  
end