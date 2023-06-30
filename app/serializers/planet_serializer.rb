class PlanetSerializer
  include JSONAPI::Serializer
  attributes :name, :diameter, :rotation_period, :orbital_period, :gravity
end
