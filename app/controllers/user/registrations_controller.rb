class User::RegistrationsController < Devise::RegistrationsController
	before_filter :configure_permitted_parameters

	protected

	def configure_permitted_parameters
		keys = [:first_name, :last_name]
		devise_parameter_sanitizer.permit(:sign_up, keys: keys)
		devise_parameter_sanitizer.permit(:account_update, keys: keys)
	end


end

