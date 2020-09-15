class Api::V1::StudentsController < ApplicationController
    def index
        @students = Student.all
        render json: @students
    end

    def show
        @student = Student.find(params[:id])
        render json: @student
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            render json: @student
        else
            render error: { error: 'Unable to enroll student.' }, status: 400
        end
    end

    def update
        @student = Student.find(params[:id])
        if @student
            @student.update(student_params)
            render json: { message: 'Student successfully updated.' }, status: 200
        else
            render json: { error: 'Unable to update student.' }, status: 400
        end
    end

    def destroy
        @student = Student.find(params[:id])
        if @student
            @student.destroy
            render json: { message: 'Student has transferred.' }, status: 200
        else
            render json: { error: 'Could not find student.' }, status: 400
        end
    end

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end

end
