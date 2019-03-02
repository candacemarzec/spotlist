json.partial! "user.json.jbuilder", user: @user

if @user.household
  json.household do
    json.partial! @user.household, partial: 'api/households/household', as: :household
  end
end