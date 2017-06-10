class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @students = Student.find(params[:id])
  end

  def activate
    @students = Student.find(params[:id])
    if @students.active?
      @students.update(active: false)
      # @students.active = false
      # @students.save
    else
      @students.update(active: true)
      # @students.active = true
      # @students.save
    end
  redirect_to student_path(@students)
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end
end
