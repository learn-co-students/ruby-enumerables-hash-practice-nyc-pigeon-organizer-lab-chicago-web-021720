require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  emptyhash = {}
  colorhash = data[:color]
  genderhash = data[:gender]
  liveshash = data[:lives]
  colorhash.each do |key,value|
    value.each do |name|
      if emptyhash[name]
        if emptyhash[name][:color]
          emptyhash[name][:color].push(key.to_s)
        else
          emptyhash[name][:color] = [key.to_s]
        end
      else
        emptyhash[name] = {:color => [key.to_s]}
      end
    end
  end

  genderhash.each do |key,value|
    value.each do |name|
      if emptyhash[name]
        if emptyhash[name][:gender]
          emptyhash[name][:gender].push(key.to_s)
        else
          emptyhash[name][:gender] = [key.to_s]
        end
      else
        emptyhash[name] = {:gender => [key.to_s]}
      end
    end
  end

  liveshash.each do |key,value|
    value.each do |name|
      if emptyhash[name]
        if emptyhash[name][:lives]
          emptyhash[name][:lives].push(key.to_s)
        else
          emptyhash[name][:lives] = [key.to_s]
        end
      else
        emptyhash[name] = {:lives => [key.to_s]}
      end
    end
  end
  emptyhash
end
