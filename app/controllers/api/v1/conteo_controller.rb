class Api::V1::ConteoController <ApplicationController
 skip_before_filter :verify_authenticity_token
 def index
 	@verifica = Enterado.where(:post_id => params[:postid]).count
 	 render json: {:conteo => @verifica}
	 end
end