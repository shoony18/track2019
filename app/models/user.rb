class User < ActiveRecord::Base
	validates :real_name, {presence: true}
	validates :user_name, {presence: true}
	validates :belong, {presence: true}
	validates :event, {presence: true}
	validates :tel, {presence: true}
	validates :pass, {presence: true}

	def menues
		return Menue.where(user_id: self.id)
	end
	
end
