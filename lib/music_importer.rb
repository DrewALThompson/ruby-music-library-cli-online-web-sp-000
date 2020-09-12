class MusicImporter
  
 attr_accessor :path, :song, :artist, :genre, :musiclibrarycontroller
  
  def  initialize(path)
    @path = path
  end
  
  def files
    Dir.entries(@path).select {|files| files.end_with?(".mp3")}
  end
  
  def self.import 
    self.files.import
  end

end