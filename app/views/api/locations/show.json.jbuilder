json.partial! "location.json.jbuilder", location: @location 

# json.users do
#   json.array! @location.users, partial: 'api/users/user', as: :user
# end

if @favorite 
  json.favorite_id @favorite.id
end