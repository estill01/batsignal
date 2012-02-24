object @user
attributes :id, :username, :phone_number, :email, :created_at

child :agendas do
	attributes :id, :name, :description
end
