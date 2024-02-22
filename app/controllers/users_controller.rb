class UsersController < ActionController::API

  # GET /users

  def index 
    @users = User.all 
    render json: @users.map { |user| 
      user_json = user.as_json(only: :name)
      if user.logo.attached?
        user_json[:logo_path] = url_for(user.logo)
      end
      if user.cv.attached?
        user_json[:cv_path] = url_for(user.cv)
      end
      user_json
    }
  end
  

  # POST /users
  # def create
  #   user = User.new(user_params)

  #   if user.save
  #     render json: { token: user.name, role: user.email, id: user.id }, status: :created # 201
  #   else
  #     render json: { errors: user.errors }, status: :unprocessable_entity
  #   end
  # end

  # GET /profile
  # def show
  #   render json: current_user
  # end

  # PATCH /profile
  # def update
  #   if current_user.update(user_params)
  #     render json: current_user, status: :ok
  #   else
  #     render json: { errors: current_user.errors }, status: :unprocessable_entity
  #   end
  # end

  private

  def user_params
    params.permit(:email, :password, :password_confirmation, :phone, :name, :company_website, :birthdate, :linkedin_url, :professional_experience, :professional_title, :education, :about, :user_type, :logo, :cv)
  end
end