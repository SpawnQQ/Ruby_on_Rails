class WelcomeController < ApplicationController
	def index
		if user_signed_in?
			@estadisticas = Estadistica.select("id, clasificacion, victorias, derrotas, empates,user_id").where(:user_id => current_user.id);
		end

		
	end

end
