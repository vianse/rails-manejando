class Api::V1::ComentariosController <ApplicationController
 skip_before_filter :verify_authenticity_token
 def index
 	@comentarios = Comentario.where(:post_id => params[:postid])
 	comentario = @comentarios.map do |s|
 		{
 		:comentario => s.comentario,
 		:avatar => User.where(:id => s.user_id).pluck(:avatar).first,
 		:creado => s.created_at,
 		:user_name => User.where(:id => s.user_id).pluck(:name).first,
 	}
 	end
 	render json: comentario
 end
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