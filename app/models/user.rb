class User < ActiveRecord::Base
	def self.from_omniauth(auth)
	  user = where(auth.slice("provider", "uid")).first

	  puts "Found User: #{user}"

	  if user 
	  	puts "Updating Token: #{auth["credentials"]["token"]}"
	  	user.token = auth["credentials"]["token"]
	  	user.save
	  else
	  	create_from_omniauth(auth)
	  end

	  return user
	end

	def self.create_from_omniauth(auth)
	  create! do |user|
	    user.provider = auth["provider"]
	    user.uid = auth["uid"]
	    user.name = auth["info"]["name"]
	    user.token = auth["credentials"]["token"]
	  end
	end
end
