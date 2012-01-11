class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json
http_basic_authenticate_with :name => "admin", :password => "secret", :except => :index
#require "feed_tools"
  def index 

    @posts = Post.find(:all)

    #respond_to do |format|
      #format.html # index.html.erb
	
      #format.json { render :json => @posts }
    #end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, :notice => 'Post was successfully created.' }
        format.json { render :json => @post, :status => :created, :location => @post }
      else
        format.html { render :action => "new" }
        format.json { render :json => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, :notice => 'Post was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :ok }
    end
  end
 #def rss
  # @posts = Post.find(:all)
   #render :layout => false
   #response.headers["Content-Type"] = "application/xml; charset=utf-8"
 #end 
#   def user_data
 #     #@feed = FeedTools::Feed.open(params[:feed_url])
  #    # You can first test it with a static feed url like this
   #   @feed = FeedTools::Feed.open('http://www.sphred.com/combined_feed')
   # end
  

end
