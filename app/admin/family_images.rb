ActiveAdmin.register FamilyImage do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :upload_pic
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
		column "Image" do |img|
	 	  image_tag img.upload_pic.url ,width: 50
	 	  # img.upload_image 
	    end
	  actions

	end

	show do
		attributes_table :upload_pic
	end

	form(:html => { :multipart => true }) do |f|
	    f.inputs "Images" do
	      f.input :upload_pic,required: true, as: :file, input_html: { multiple: true }
		  end
	    f.actions
	end

	controller do
	  def create
	  	params[:family_image][:upload_pic].each do |image|
		    @image = FamilyImage.new(upload_pic: image)
		    @image.save
		  end
		  flash[:notice] = "Uploaded"
		  redirect_to "/admin/family_images"
	  end 
	end 


end
