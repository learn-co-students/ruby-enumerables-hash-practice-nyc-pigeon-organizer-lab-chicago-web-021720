def nyc_pigeon_organizer(data)
#  pp data
  pidgeon_colors = []
  pidgeon_genders = []
  pidgeon_homes = []
  pidgeon_names = []
  pp data.class()
  
   pidgy=Hash.new

  data.each do |key, value|
    value.each do |data, name|
      for i in name
      pidgy[i]={}
    end
  end
end
#pp pidgy

pidgy.each do |key, value|
  pidgeon_names.push(key)
  pidgeon_colors.push([])
  pidgeon_genders.push([])
  pidgeon_homes.push([])
end
#creates a list of pidgeon names and lists of lists for each data

for a in pidgeon_names
  for b in pidgeon_colors
    data.each do |key, value|
      value.each do |data, name|
        for x in name
          if a == x 
            pidgy[a][key]=[data.to_s()]
          end
        end
      end
    end
  end
end
#It's 1am and I just wrote this code five seconds ago and I don't even know if I can explain how it works. also I think I could have done it in the earlier loop.
#anyway I have all the data I need figured out, except color, which needs to be an array and is instead a string. 
#also I don't know why I made so many arrays of arrays earlier, or why I decided to include "for b in pidgeon colors," so maybe I should go to sleep before I break what I have.
#pp pidgy
  


data.each do |key, value|
  if key == :color
    value.each do |color, name|
      for b in pidgeon_names
        for a in name
          if b == a
            pidgeon_colors[pidgeon_names.index(b)].push(color.to_s)
          end
        end
      end
    end
  end
end
pp pidgeon_colors

for a in pidgeon_names
  pidgy[a][:color]=pidgeon_colors[pidgeon_names.index(a)]
end
pp pidgy
return pidgy
end

#saving my tentatively working code in comment mode so I can  copy and paste it if I destroy it later as I edit:


#  pidgy = Hash.new
#  data.each do |key, value|
#    for i in key
#    pidgy[i]={}
#  end
#end
#pp pidgy



#pidgeon_colors[pidgeon_names.index(a)].push(data)