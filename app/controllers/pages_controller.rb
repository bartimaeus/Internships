class PagesController < ApplicationController
    
    def index
      #authorize! :read, :page
      #authorize! :index, :pages
      #authorize! 'index'.to_sym, 'pages'.to_sym
      @most_recent_short_term_goal_edits = @current_user.short_term_goals.order(:updated_at).limit(10)
      @most_recent_internship_edits = @current_user.internships.order(:updated_at).limit(10)
    end
    
    def myguide
      @myguide_user_id = params[:myguide_user_id]
      authorize! :myguide, :pages, @myguide_user_id if params[:format] != 'json'

      #authorize! :view, :myguide
      #respond_to do |format|
       # format.html { render :layout => 'layouts/myguide' } # myguide.html.erb
      #end
    end
    
    def map
      @section = "map"
    end
    
    def forbidden403
      
    end
    
    def myguide_admin_dashboard
      @section = 'myguide'
    end    
    
    def admin_roles
      @users = User.all
    end 
end
