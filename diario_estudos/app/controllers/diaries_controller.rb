class DiariesController < ApplicationController
    def index 
        @diaries = Diary.all
    end

    def show; end
    end

    def new 
        @diaries = Diary.new
        @diaries = Diary.all
    end

    def create
        @diaries = Diary.new(params.require(:diary).permit(:title, :category, :description))
        @diaries.save 
        redirect_to root_path
    end

    def edit 
        @diaries = Diary.find(params[:id])
    end

    def update 
        @diaries = Diary.find(params[:id])
        @diaries.update(params.require(:diary).permit(:title, :category, :description))
        redirect_to root_path
    end

    def destroy 
        diaries = Diary.find(params[:id])  
        diaries.destroy 
        redirect_to root_path
    end

    def mark_as_done 
        @diaries.update(finalized_at: Time.current)
        redirect_to @diaries
    end

    private
    def set_study_item 
        @diaries = Diary.find(params[:id])
    end

    def study_item_params 
       params.require(:diaries).permit(:title, :description, :category_id)
    end

end

