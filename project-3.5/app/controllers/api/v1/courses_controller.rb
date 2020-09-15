class Api::V1::CoursesController < ApplicationController
    def index
        @courses = Course.all
        render json: @courses
    end

    def show
        @course = Course.find(params[:id])
        render json: @course
    end

    def create
        @course = Course.new(course_params)
        if @course.save
            render json: @course
        else
            render error: { error: 'Unable to create course' }, status: 400
        end
    end

    def update
        if @course
            @course.update(course_params)
            render json: { message: 'Course successfully updated.' }, status: 200
        else
            render json: { error: 'Unable to update course.' }, status: 400
        end
    end

    def destroy
        if @course
            @course.destroy
            render json: { message: 'Course has ended.' }, status: 200
        else
            render json: { error: 'Course is still in session.' }, status: 400
        end
    end

    private

    def course_params
        params.require(:course).permit(:title, :subject, :student_id)
    end

end
