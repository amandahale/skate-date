json.partial! "user.json.jbuilder", user: @user

json.locations do
  json.array! @user.locations, partial: 'api/locations/location', as: :location
end