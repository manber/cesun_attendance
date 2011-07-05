class TeacherController < ApplicationController
  before_filter :set_user

  def new
   @teacher = @user.build_teacher
  end

  def edit
    @teacher = @user.teacher
  end

  def create
    @user.build_teacher params[:teacher]
    if @teacher.save
     redirect_to(user_teacher_path @user, @teacher, :notice => 'teacher was successfully created.')
    else
     render :action => "new"
    end
  end

  def update
    if @user.teacher.update_attributes(params[:teacher])
      redirect_to(user_teacher_path @user, @teacher, :notice => 'teacher was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @user.teacher.destroy
    redirect_to(user_teacher_path @teacher)
  end

  private
  def set_user
    @user = User.find params[:user_id]
  end
end
