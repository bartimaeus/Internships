class AcademicFocusController < ApplicationController
  # GET /academic_focus
  # GET /academic_focus.xml
  def index
    @academic_focus = AcademicFocuses.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @academic_focus }
    end
  end

  # GET /academic_focus/1
  # GET /academic_focus/1.xml
  def show
    @academic_focus = AcademicFocuses.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @academic_focus }
    end
  end

  # GET /academic_focus/new
  # GET /academic_focus/new.xml
  def new
    @academic_focus = AcademicFocuses.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @academic_focus }
    end
  end

  # GET /academic_focus/1/edit
  def edit
    @academic_focus = AcademicFocuses.find(params[:id])
  end

  # POST /academic_focus
  # POST /academic_focus.xml
  def create
    @academic_focus = AcademicFocuses.new(params[:academic_focus])

    respond_to do |format|
      if @academic_focus.save
        format.html { redirect_to(@academic_focus, :notice => 'Academic focus was successfully created.') }
        format.xml  { render :xml => @academic_focus, :status => :created, :location => @academic_focus }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @academic_focus.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /academic_focus/1
  # PUT /academic_focus/1.xml
  def update
    @academic_focus = AcademicFocuses.find(params[:id])

    respond_to do |format|
      if @academic_focus.update_attributes(params[:academic_focus])
        format.html { redirect_to(@academic_focus, :notice => 'Academic focus was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @academic_focus.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /academic_focus/1
  # DELETE /academic_focus/1.xml
  def destroy
    @academic_focu = AcademicFocu.find(params[:id])
    @academic_focu.destroy

    respond_to do |format|
      format.html { redirect_to(academic_focus_url) }
      format.xml  { head :ok }
    end
  end
end
