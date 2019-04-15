class DraftController < ApplicationController
  def new
    @TrackColumn = TrackColumn.new
    @indexTrackColumn = IndexTrackColumn.new
  end

  def create

  	@TrackColumn = TrackColumn.new(
      column_title: params[:column_title],
      column_lead: params[:column_lead],
      column_topic1: params[:column_topic1],
      column_article1: params[:column_article1],
      column_topic2: params[:column_topic2],
      column_article2: params[:column_article2],
      column_topic3: params[:column_topic3],
      column_article3: params[:column_article3]
    )   

    @TrackColumn.save

    if params[:image]
      @TrackColumn.title_image = "#{@TrackColumn.id}_0.jpg"
      image = params[:image]
      File.binwrite("public/TrackColumn_images/#{@TrackColumn.title_image}", image.read)
    else
    end

    if params[:image1]
      @TrackColumn.column_image1 = "#{@TrackColumn.id}_1.jpg"
      image = params[:image1]
      File.binwrite("public/TrackColumn_images/#{@TrackColumn.column_image1}", image.read)
    else
    end

    if params[:image2]
      @TrackColumn.column_image2 = "#{@TrackColumn.id}_2.jpg"
      image = params[:image2]
      File.binwrite("public/TrackColumn_images/#{@TrackColumn.column_image2}", image.read)
    else
    end

    if params[:image3]
      @TrackColumn.column_image3 = "#{@TrackColumn.id}_3.jpg"
      image = params[:image3]
      File.binwrite("public/TrackColumn_images/#{@TrackColumn.column_image3}", image.read)
    else
    end

    @TrackColumn.save

    redirect_to("/draft/#{@TrackColumn.id}")
    
  end

  def show
  	@TrackColumn = TrackColumn.find_by(id: params[:id])
    
  end

  def edit
    @TrackColumn = TrackColumn.find_by(id: params[:id])    
  end

  def update
    @TrackColumn = TrackColumn.find_by(id: params[:id])
    
    @TrackColumn.column_title = params[:column_title]
    @TrackColumn.column_lead = params[:column_lead]
    @TrackColumn.column_topic1 = params[:column_topic1]
    @TrackColumn.column_article1 = params[:column_article1]
    @TrackColumn.column_topic2 = params[:column_topic2]
    @TrackColumn.column_article2 = params[:column_article2]
    @TrackColumn.column_topic3 = params[:column_topic3]
    @TrackColumn.column_article3 = params[:column_article3]
    
    if params[:image]
      @TrackColumn.title_image = "#{@TrackColumn.id}_0.jpg"
      image = params[:image]
      File.binwrite("public/TrackColumn_images/#{@TrackColumn.title_image}", image.read)
    else
    end

    if params[:image1]
      @TrackColumn.column_image1 = "#{@TrackColumn.id}_1.jpg"
      image = params[:image1]
      File.binwrite("public/TrackColumn_images/#{@TrackColumn.column_image1}", image.read)
    else
    end

    if params[:image2]
      @TrackColumn.column_image2 = "#{@TrackColumn.id}_2.jpg"
      image = params[:image2]
      File.binwrite("public/TrackColumn_images/#{@TrackColumn.column_image2}", image.read)
    else
    end

    if params[:image3]
      @TrackColumn.column_image3 = "#{@TrackColumn.id}_3.jpg"
      image = params[:image3]
      File.binwrite("public/TrackColumn_images/#{@TrackColumn.column_image3}", image.read)
    else
    end

    @TrackColumn.save

    redirect_to("/draft/#{@TrackColumn.id}")
  end


  def index
    @TrackColumns = TrackColumn.all
  end

  def destroy
    @TrackColumn = TrackColumn.find_by(id: params[:id])
    @TrackColumn.destroy
    redirect_to("/draft/index")
    
  end

end
