class CheckIn < Volt::Model
  own_by_user
  belongs_to :user

  permissions(:create, :delete, :update) do
    deny unless owner?
  end

  permissions(:read) do
    deny unless owner? || Volt.current_user.shares_with(self.user)
  end
end
