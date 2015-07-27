class User < ActiveRecord::Base
  has_many :wants

  private

  def self.create_or_login(params)
    user = find_or_create_by(email: params[:email])
    if user.password != nil && user.password == params[:password]
    end
    if user.password == nil
      user.name = params[:name]
      user.password = params[:password]
      user.phone_number = params[:phone_number]
      user.save!
      user
    end
  end

end
