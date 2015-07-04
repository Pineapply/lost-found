class UsersController < ApplicationController
  before_action :set_types, only: [:index]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = type_class.all
  end

  def show
  end

  def new
    @user = type_class.new
    @user.missing_items.build
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { render :thanks, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def type
    User.types.include?(params[:type]) ? params[:type] : 'User'
  end

  def type_class
    type.constantize
  end

  def set_user
    @user = type_class.find(params[:id])
  end

  def user_params
    params.require(type.underscore.to_sym).permit(:name, :email, :type,
                                missing_items_attributes: [:name, :description] )
  end
end
