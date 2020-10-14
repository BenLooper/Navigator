class ProjectsController < ApplicationController

    def home
        @projects = Project.all
    end 

    def new 
    end 
    
end
