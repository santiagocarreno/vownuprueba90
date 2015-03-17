class DefaultsController < ApplicationController

after_action :allow_facebook_iframe

	def index
		@user = current_user	
	end

	def prueba
			
	end

	 

private

  def allow_facebook_iframe
    response.headers['X-Frame-Options'] = 'ALLOW-FROM https://eltiempo.com'
  end

end