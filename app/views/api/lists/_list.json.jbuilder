json.id list.id
json.store_name list.store_name
json.notes list.notes
json.created_at list.created_at
json.user list.user.first_name

json.items do
  json.array! list.items, partial: 'api/items/item', as: :item  
end

