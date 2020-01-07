class Genre 
  attr_reader :name , :genre
  attr_accessor :song 
  
  def initialize(name)
   @name = name 
 end 
 def song 
   song.all.select do |song|
     song.genre == self 
   end 
 end 
 def artists 
   song.all.map do |song|
     song.artist 
   end 
 end 
end 