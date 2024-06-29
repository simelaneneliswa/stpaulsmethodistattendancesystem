class AttendancesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_student
  before_action :set_attendance, only: [:edit, :update]

  def index
    @attendances = @student.attendances
  end

  def new
    @attendance = @student.attendances.build
  end

  def create
    @attendance = @student.attendances.build(attendance_params)
    if @attendance.save
      redirect_to student_attendances_path(@student), notice: 'Attendance was successfully recorded.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @attendance.update(attendance_params)
      redirect_to student_attendances_path(@student), notice: 'Attendance was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_student
      @student = Student.find(params[:student_id])
    end

    def set_attendance
      @attendance = @student.attendances.find(params[:id])
    end

    def attendance_params
      params.require(:attendance).permit(:date, :status)
    end
end
