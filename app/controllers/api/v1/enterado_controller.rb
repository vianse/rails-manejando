class Api::V1::EnteradoController <ApplicationController
 skip_before_filter :verify_authenticity_token
 def create
 	@verifica = Enterado.where(:user_id => params[:userid]).where(:post_id => params[:postid])
 	if @verifica.blank?
 		@enterado = Enterado.create({
	 	:enterado => 1,
	 	:post_id => params[:postid],
	 	:user_id => params[:userid]
	 	})
	 	coneccion = Redis.new(:host => "redis-18013.c13.us-east-1-3.ec2.cloud.redislabs.com", :port => 18013)
	 	obj = {:conteo => 1}
	 	coneccion.publish "conteo", obj.to_json
 	else
 		
 	end
	 
	 end
end