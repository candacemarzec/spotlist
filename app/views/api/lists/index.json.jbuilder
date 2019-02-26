json.array! @lists.each do |list|
  json.partial! "list.json.jbuilder", list: list
end


# json.household do
#   json.partial! @list.household, partial: "api/households/household", as: :household
# end