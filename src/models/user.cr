class User < BaseModel
  include Carbon::Emailable
  include Authentic::PasswordAuthenticatable

  include Users::EmailConfirmable

  table do
    column language : String
    column email : String
    column encrypted_password : String
  end

  def emailable : Carbon::Address
    Carbon::Address.new(email)
  end
end
