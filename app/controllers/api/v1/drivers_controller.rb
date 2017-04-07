class Api::V1::DriversController <ApplicationController
 skip_before_filter :verify_authenticity_token

	 def index
	 	if params[:q].blank? || params[:q] == "undefined"
	 		@choferes = Driver.all.order("id desc")
		 	choferes = @choferes.map do |v|
		 	 @server = "https://res.cloudinary.com/vianse/"
		 		{
		 			:id => v.id,
		 			:avatar => User.where(:id => v.user_id).pluck(:avatar).first,
		 			:nombre => v.name,
		 			:descripcion => v.description,
		 			:estado => v.estado,
		 			:plataforma => v.plataforma,
		 			:user_id => v.user_id,
		 			:user_name => User.where(:id => v.user_id).pluck(:name),
		 			:photo => v.photo.to_s.gsub('http://', 'https://'),
		 			:creado =>v.created_at,
		 			:conteo => Enterado.where(:post_id => v.id).count
		 		}
		 	end
		 	render json: choferes
	 	else
		 	@choferes = Driver.where("name ILIKE ?", "%#{params[:q]}%")
		 	choferes = @choferes.map do |v|
		 		{
		 			:id => v.id,
		 			:avatar => User.where(:id => v.user_id).pluck(:avatar).first,
		 			:nombre => v.name,
		 			:descripcion => v.description,
		 			:estado => v.estado,
		 			:plataforma => v.plataforma,
		 			:user_id => v.user_id,
		 			:user_name => User.where(:id => v.user_id).pluck(:name),
		 			:photo => v.photo.to_s.gsub('http://', 'https://'),
		 			:creado => v.created_at,
		 			:conteo => Enterado.where(:post_id => v.id).count

		 		}
		 	end
		 	render json: choferes
	 	end
	 end
end