class MusicControllerLibrary
  
  def initialize(path='/db.mp3s')
    @path = path
    MusicImporter
end