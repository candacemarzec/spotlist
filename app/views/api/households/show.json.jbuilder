json.partial! "household.json.jbuilder", household: @household

json.lists do
  json.array! @household.lists, partial: 'api/lists/list', as: :list
end