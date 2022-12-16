# README 
  set up ERD for data
# Phase Four All Notes

#   Setting up rails app
    $ bundle install
    $ gem install rails
        localhost:3000/ROUTE
    $ rails new app_name
    $ rails server
    $ rails db:migrate db:seed
  Commands: 
    $ rails g resource CastMember name role production:belongs_to --no-test-framework
    <!-- potential change to site I would actaully use- workout app -->
    $ rails g resource SessionController
#   Conventions
file name for app should be all lowercase w/ - (find out how to change)

# deleted files
vendor for javascript

# Gen
rails runs on rack (check config.ru)

# Gen cont..
    for more on file structure
    https://learning.flatironschool.com/courses/5932/pages/creating-a-rails-app?module_item_id=426762
    FAKER
    https://github.com/faker-ruby/faker

Things you may want to cover:
* Ruby version
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions
* ...

<!--   rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  # GET /birds
  def index
    birds = Bird.all
    render json: birds
  end

  # POST /birds
  def create
    bird = Bird.create(bird_params)
    render json: bird, status: :created
  end

  # GET /birds/:id
  def show
    bird = find_bird
    render json: bird
    end
  end

  # PATCH /birds/:id
  def update
    bird = find_bird
    bird.update(bird_params)
    render json: bird
  end

  # PATCH /birds/:id/like
  def increment_likes
    bird = find_bird
    if bird
      bird.update(likes: bird.likes + 1)
      render json: bird
    else
      render_not_found_response
    end
  end

  # DELETE /birds/:id
  def destroy
    bird = find_bird
    bird.destroy
    head :no_content
    # explicit rescue in method OR remove and place at top of class
  rescue ActiveRecord::RecordNotFound
    render_not_found_response 
  end

  private

  def bird_params
    params.permit(:name, :species, :likes)
  end

  def render_not_found_response 
    render json: { error: "Bird not found" }, status: :not_found
  end

  def find_bird
    Bird.find(params[:id])
    resources :birds
  patch "/birds/:id/like", to: "birds#increment_likes"
  end -->