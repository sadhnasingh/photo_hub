ActiveAdmin.register FamilyPic do
# See permitted parameters documentation:
	# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
	#
	permit_params :upload_image
	#
	# or
	#
	# permit_params do
	#   permitted = [:permitted, :attributes]
	#   permitted << :other if params[:action] == 'create' && current_user.admin?
	#   permitted
	# end
	index do
		id_column
		# column :upload_image
		column "Family_pics" do |img|
	 	  image_tag img.upload_image.url ,width: 50
	 	  # img.upload_image 
	    end
	  actions

	end

	show do
		attributes_table :upload_image 
	end

	form(:html => { :multipart => true }) do |f|
	    f.inputs "Images" do
	      f.input :upload_image,required: true, as: :file, input_html: { multiple: true }
		  end
	    f.actions
	end

	controller do
	  def create
	  	params[:family_pic][:upload_image].each do |image|
		    @image = FamilyPic.new(upload_image: image)
		    @image.save
		  end
		  flash[:notice] = "Uploaded"
		  redirect_to "/admin/family_pics"
	  end 
	end 



end
