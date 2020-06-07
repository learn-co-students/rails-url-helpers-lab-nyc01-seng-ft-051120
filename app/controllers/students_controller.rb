class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
    render 'students/index.html.erb'
  end

  def show
    @student = set_student
    render 'students/show.html.erb'
  end

  def activate
    @student = set_student
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)

  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end