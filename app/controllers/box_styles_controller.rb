class BoxStylesController < ApplicationController
  # GET /box_styles
  # GET /box_styles.json
  def index
    @box_styles = BoxStyle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @box_styles }
    end
  end

  # GET /box_styles/1
  # GET /box_styles/1.json
  def show
    @box_style = BoxStyle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @box_style }
    end
  end

  # GET /box_styles/new
  # GET /box_styles/new.json
  def new
    @box_style = BoxStyle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @box_style }
    end
  end

  # GET /box_styles/1/edit
  def edit
    @box_style = BoxStyle.find(params[:id])
  end

  # POST /box_styles
  # POST /box_styles.json
  def create
    @box_style = BoxStyle.new(params[:box_style])

    respond_to do |format|
      if @box_style.save
        format.html { redirect_to @box_style, notice: 'Box style was successfully created.' }
        format.json { render json: @box_style, status: :created, location: @box_style }
      else
        format.html { render action: "new" }
        format.json { render json: @box_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /box_styles/1
  # PUT /box_styles/1.json
  def update
    @box_style = BoxStyle.find(params[:id])

    respond_to do |format|
      if @box_style.update_attributes(params[:box_style])
        format.html { redirect_to @box_style, notice: 'Box style was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @box_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /box_styles/1
  # DELETE /box_styles/1.json
  def destroy
    @box_style = BoxStyle.find(params[:id])
    @box_style.destroy

    respond_to do |format|
      format.html { redirect_to box_styles_url }
      format.json { head :no_content }
    end
  end
end
