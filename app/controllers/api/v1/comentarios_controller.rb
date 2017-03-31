class Api::V1::ComentariosController <ApplicationController
 skip_before_filter :verify_authenticity_token
 def create
 		@enterado = Comentario.create({
	 	:comentario => params[:comentario],
	 	:post_id => params[:postid],
	 	:user_id => params[:userid]
	 	})
	 	coneccion = Redis.new
	 	obj = {:comentario=> 1}
	 	coneccion.publish "comentario", obj.to_json
 	
	end
end