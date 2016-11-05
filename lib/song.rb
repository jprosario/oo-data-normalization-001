class Song
  
  attr_accessor :artist, :title

  def slugify()
    f = Tempfile.new([@title.downcase.gsub(" ", "_").downcase, ".txt"], "tmp")
    f.write("#{@artist.name} - #{@title}")
    f.close
  end

end
