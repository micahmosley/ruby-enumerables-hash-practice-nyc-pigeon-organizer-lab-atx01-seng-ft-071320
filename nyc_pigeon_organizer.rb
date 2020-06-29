require 'pry'

def nyc_pigeon_organizer(data)
  
  names=[]
  names=data[:color].map do |color, pigeon|
    pigeon
  end 
  names=names.flatten
  names=names.uniq!
  new_data={}
  i=0 
  while i<names.length do 
    new_data[names[i]]={color: [],
      gender: [],
      lives: []
    }
    i+=1 
  end 
  
  data[:color].each do |col, pigeon|
    puts pigeon 
  end
  
  
  data[:gender].each do |gend, pigeon|
    new_data[pigeon][:gender].push(gend.to_s)
  end
  
  data[:lives].each do |liv, pigeon|
    new_data[pigeon][:lives].push(liv.to_s)
  end
  
 
  new_data
  
  
  
  
  
  
end
