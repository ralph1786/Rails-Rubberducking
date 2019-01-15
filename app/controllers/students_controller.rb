class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new

    render :new
  end


  def create
    @student = Student.create(student_params)

    if @student.valid?
      redirect_to student_path(@student)
    else
      flash[:error] = @student.errors.full_messages
      render :new
    end
  end

  def show
    @student = Student.find(params[:id])
    render :show
  end

  def edit
    @student = Student.find(params[:id])
    render :edit 
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)

    if @student.valid?
      redirect_to student_path(@student)
    else
      flash[:error] = @student.errors.full_messages
      render :edit
    end
  end

  private
  def student_params
    params.require(:student).permit(:name, :mod)
  end

end
