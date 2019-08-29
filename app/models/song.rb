class Song < ActiveRecord::Base
    include Slugifiable::InstanceMethods

    belongs_to :artist
    # has_many :song_genres
    # has many :genres, through: :song_genres

    # attr_accessor :title 

    # @@Song = []

    # initialize :title
    # @title = title
    # @@Song << self
    # end
end