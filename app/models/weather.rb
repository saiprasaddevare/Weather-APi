class Weather
  include Mongoid::Document

  field :date, type: DateTime
  field :lat, type: Float
  field :lon, type: Float
  field :city, type: String
  field :state, type: String
  field :temperatures, type: Array
end

