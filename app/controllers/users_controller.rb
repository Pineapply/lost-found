class UsersController < ApplicationController
  before_action :set_type
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @user = type_class.new
    @user.missing_items.build
    render "new_#{type_class.to_s.downcase}".to_sym
  end

  def create
    @user = User.new(user_params.merge!({type: type_class.to_s}))

    respond_to do |format|
      if @user.save
        format.html { render "thanks_#{type_class.to_s.downcase}".to_sym }
      else
        format.html { render :new }
      end
    end
  end

  private

  def set_type
    @type = type
  end

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
