def all_names(data)
all_names = []
data.each do |key, value|
  value.each do |k,v|
    all_names << v
  end
end
names = all_names.flatten.uniq
names
end 

def get_gender(bird, data)
  if data[:gender][:male].include?(bird)
    gender = ["male"]
  else
    gender = ["female"]
  end 
  gender 
end 

def get_color(bird, data)
  colors = data[:color]
  right_colors = colors.reduce([]) do |memo, (key, value)|
    if value.include?(bird)
      memo << key.to_s
    end 
    memo
  end 
  right_colors
end 
 
def get_lives(bird, data)
  lives = data[:lives]
  right_lives = lives.reduce([]) do |memo, (key, value)|
    if value.include?(bird)
      memo << key
    end 
    memo
  end 
  right_lives
end 
 



def nyc_pigeon_organizer(data)
new_hash = {}
names = all_names(data)

i = 0 
while i < names.length do 
  bird = names[i]
  new_hash[bird] = {
    :color => get_color(bird, data),
    :gender => get_gender(bird, data),
    :lives => get_lives(bird, data)
  }
  i += 1 
end 

new_hash
end





# collect all the names and make them hashes 
# find the names and give the correct subcategories to them 
# names => "Theo", "Peter Jr.", "Lucky", "Ms. K", "Queenie", "Andrew", "Alex"
# color => purple, grey, white, brown
# gender => male, female 
# lives => "Subway", "Central Park", "Library" "City Hall"