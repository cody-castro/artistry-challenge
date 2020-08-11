class Instrument < ApplicationRecord
has_many :artists, through: :artist_instruments
has_many :artist_instruments
end
