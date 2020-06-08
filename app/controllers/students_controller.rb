# class StudentsController < ApplicationController
#   before_action :set_student, only: :show
  
#   def index
#     @students = Student.all
#   end

#   def show
#     @student = Student.find(params[:id])
#   end

#   def activate
#     @student = Student.find(params[:id])
#     # Locates a particular student
#     @student.activate = !@student.active 
#     @student.save 
#     redirect_to student_path(@student)
#     # Once the action is complete, the website redirects the user to another web page 
#   end

#   private

#     def set_student
#       @student = Student.find(params[:id])
#     end
# end

class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active 
    @student.save
    redirect_to student_path(@student)
  end

  private

      def set_student
        @student = Student.find(params[:id])
      end
end