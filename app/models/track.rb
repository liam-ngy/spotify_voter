class Track
  include Mongoid::Document
  field :spotify_id, type: String
  field :name, type: String
  field :votings, type: Integer
  field :played_times, type: Integer
end