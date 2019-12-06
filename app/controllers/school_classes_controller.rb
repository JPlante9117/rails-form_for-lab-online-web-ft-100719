class SchoolClassesController < ApplicationController

    def index
        @klasses = SchoolClass.all
    end

    def show
        @klass = SchoolClass.find(params[:id])
    end

    def new
        @klass = SchoolClass.new
    end

    def create
        @klass = SchoolClass.create(klass_params)

        redirect_to school_class_path(@klass)
    end

    def edit
        @klass = SchoolClass.find(params[:id])
    end

    def update
        @klass = SchoolClass.find(params[:id])
        @klass.update(klass_params)

        redirect_to school_class_path(@klass)
    end

    private

    def klass_params
        params.require(:school_class).permit(:title, :room_number)
    end

end
