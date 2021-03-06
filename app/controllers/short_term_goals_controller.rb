class ShortTermGoalsController < ApplicationController
  
  before_filter :set_section  
    
  def set_section
    @section = 'myguide'
  end
      
  # GET /short_term_goals
  # GET /short_term_goals.xml
  def index
    @short_term_goals = ShortTermGoal.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @short_term_goals }
      format.json {
        #Format Response
        results = Array.new
        puts "Print some tags: "
        @short_term_goals.each do |goal|
          results <<  {
            'id' => goal.id,
            'name' => goal.name,
            'description' => goal.description,
            'long_term_goal_id' => goal.long_term_goal_ids, 
            'school_year' => goal.school_year,
            'tasks' => Array.new, 
            'tag' => goal.tag.name.gsub!(/\s*/,'').downcase,
          }
          goal.tasks.each do |task|
            results[results.length-1]['tasks'] << {
              'id' => task.id,
              'name' => task.name,
              'description' => task.description
            }
          end
        end        
        #send response
        render :json => results
      }
    end
  end

  # GET /short_term_goals/1
  # GET /short_term_goals/1.xml
  def show
    @short_term_goal = ShortTermGoal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @short_term_goal }
    end
  end

  # GET /short_term_goals/new
  # GET /short_term_goals/new.xml
  def new
    @short_term_goal = ShortTermGoal.new
    
    @short_term_goal.user = @current_user if @short_term_goal.user == nil

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @short_term_goal }
    end
  end

  # GET /short_term_goals/1/edit
  def edit
    @short_term_goal = ShortTermGoal.find(params[:id])
  end

  # POST /short_term_goals
  # POST /short_term_goals.xml
  def create
=begin
    params[:short_term_goal][:tasks] = Array.new
    tasks_array = Array.new
    if params[:task]
      params[:task].each do |num,task| 
        tasks_array[Integer(num)] = task if task != ''
      end
    end
    tasks_array.each do |task|
      params[:short_term_goal][:tasks] << Task.create(:name => task) if task != nil
    end
=end
    @short_term_goal = ShortTermGoal.new(params[:short_term_goal])
    respond_to do |format|
      if @short_term_goal.save
        format.html { redirect_to(myguide_path(@current_user), :notice => 'Short term goal was successfully created.') }
        format.xml  { render :xml => @short_term_goal, :status => :created, :location => @short_term_goal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @short_term_goal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /short_term_goals/1
  # PUT /short_term_goals/1.xml
  def update
    @short_term_goal = ShortTermGoal.find(params[:id])
=begin
    @short_term_goal.tasks.each do |task|
      task.destroy
    end
    params[:short_term_goal][:tasks] = Array.new
    tasks_array = Array.new
    if params[:task]
      params[:task].each do |num,task| 
        tasks_array[Integer(num)] = task if task != ''
      end
    end
    tasks_array.each do |task|
      params[:short_term_goal][:tasks] << Task.create(:name => task) if task != nil
    end
=end
    respond_to do |format|
      if @short_term_goal.update_attributes(params[:short_term_goal])
        format.html { redirect_to(myguide_path(@current_user), :notice => 'Short term goal was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @short_term_goal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /short_term_goals/1
  # DELETE /short_term_goals/1.xml
  def destroy
    @short_term_goal = ShortTermGoal.find(params[:id])
    @short_term_goal.tasks.each do |task|
      task.destroy
    end
    @short_term_goal.destroy

    respond_to do |format|
      format.html { redirect_to(short_term_goals_url) }
      format.xml  { head :ok }
    end
  end
end
