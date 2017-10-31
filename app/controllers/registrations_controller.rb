class RegistrationsController < DeviseTokenAuth::RegistrationsController
	skip_before_filter :verify_authenticity_token, :only => :create
	
	  private
	    def sign_up_params
	      params.require(:user).permit(:password, 
	                                   :password_confirmation, 
	                                   :confirm_success_url, 
	                                   :email)
	    end

	    def account_update_params
	      params.require(:user).permit(:password, 
	                                   :password_confirmation,  
	                                   :email)
	    end
end