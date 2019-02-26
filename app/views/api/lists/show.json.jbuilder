json.partial! "list.json.jbuilder", list: @list

json.items do
  json.array! @list.items, partial: 'api/items/item', as: :item  
end

# json.household do
#   json.partial! @list.household, partial: "api/households/household", as: :household
# end