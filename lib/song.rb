class Song

attr_accessor :title, :artist, :serialize

#def title
#    @title
#end
#def title=(title)
#    @title = title
#
#end
#
#def artist=(artist)
#    @artist = artist
#end
#
#def artist
#    @artist
#end




def serialize
    file_title = @title.downcase.tr!(" ", "_")
    file = Tempfile.new(["#{file_title}", ".txt"], "tmp")
    file.write("#{@artist.name} - #{@title}")
    file.rewind
    file.read
    file.close
end
end
