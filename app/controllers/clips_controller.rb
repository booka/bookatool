class ClipsController < ApplicationController
  # GET /clips
  # GET /clips.xml
  def index
    @clips = Clip.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clips }
    end
  end

  # GET /clips/1
  # GET /clips/1.xml
  def show
    @clip = Clip.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @clip }
    end
  end

  # GET /clips/new
  # GET /clips/new.xml
  def new
    @clip = Clip.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @clip }
    end
  end

  # GET /clips/1/edit
  def edit
    @clip = Clip.find(params[:id])
  end

  # POST /clips
  # POST /clips.xml
  def create
    @clip = Clip.new(params[:clip])

    respond_to do |format|
      if @clip.save
        flash[:notice] = 'Clip was successfully created.'
        format.html { redirect_to(@clip) }
        format.xml  { render :xml => @clip, :status => :created, :location => @clip }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @clip.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clips/1
  # PUT /clips/1.xml
  def update
    @clip = Clip.find(params[:id])

    respond_to do |format|
      if @clip.update_attributes(params[:clip])
        flash[:notice] = 'Clip was successfully updated.'
        format.html { redirect_to(@clip) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @clip.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clips/1
  # DELETE /clips/1.xml
  def destroy
    @clip = Clip.find(params[:id])
    @clip.destroy

    respond_to do |format|
      format.html { redirect_to(clips_url) }
      format.xml  { head :ok }
    end
  end
end
