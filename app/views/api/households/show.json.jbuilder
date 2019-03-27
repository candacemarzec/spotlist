json.partial! "household.json.jbuilder", household: @household

json.lists do
  json.array! @household.lists, partial: 'api/lists/list', as: :list
end

json.members do
  json.array! current_user.household.users.map { |user| user.full_name }
end  

