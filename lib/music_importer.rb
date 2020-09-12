class MusicImporter
  
 attr_accessor :path, :song, :artist, :genre, :musiclibrarycontroller
  
  def  initialize(path)
    @path = path
  end
  
  def files
    Dir.entries()
  end
  
  def self.import 
  end

end