json.partial! "user.json.jbuilder", user: @user

if @user.household
  json.household do
    json.partial! @user.household, partial: 'api/households/household', as: :household
    json.members do
      json.array! @user.household.users.map { |user| user.full_name }
    end  
  end
end
