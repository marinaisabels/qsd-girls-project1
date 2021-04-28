class HomeController < ApplicationController 
    def welcome
        @diaries = Diary.all
    end
end

