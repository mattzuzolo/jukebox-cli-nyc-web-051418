require 'pry'

#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => 'home/mattzuzolo/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/home/mattzuzolo/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/home/mattzuzolo/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/home/mattzuzolo/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => '/home/mattzuzolo/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => '/home/mattzuzolo/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/home/mattzuzolo/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  
  my_songs_array = []
  
  my_songs.each do |song, file_location|
    my_songs_array << song
  end
  
  my_songs_array.each_with_index do |track, index|
    puts "#{index + 1}. #{track}"
  end
  
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  
  puts "Please enter a song name:"
  user_selection = gets.chomp
  
  my_songs_array = []
  
  my_songs.each do |song, file_location|
    my_songs_array << song
    my_songs_locations << file_location
  end
  
  if my_songs_array.include?(user_selection)
    
  end  
    
  else
    puts "Invalid selection"
  
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  
  
  
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  
  help
  puts "Please enter a command:"
  user_selection = ""
  
  while user_selection
      user_selection = gets.chomp
      if user_selection == "help"
        help
        
      elsif user_selection == "list"
        list(songs)
      
      elsif user_selection == "play"
        play(songs)
  
      elsif user_selection == "exit"
        exit_jukebox
        break
        
      else
        puts "Please enter a command:"
      end #end if
  
  end #end loop
end
