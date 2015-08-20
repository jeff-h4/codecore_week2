class QuestionsController < ApplicationController

  # the new action is th eone that is used by convention in Rails
  # to display a form to create the record (in this case, question record)
  def new
    # We instantiate an instance variable of the object we'd like to create in
    # a form tht submits the create action
    @question = Question.new #question.new(title: "hello")
  end

  def create
    #render text: "It worked!"
    ###q = Question.new
    ###q.title = params[:question][:title]
    ###q.body = params[:question][:body]
    ###q = Question.new(params[:question])
    #params[:question] => {title: "Abc", body: "xyz"}
    #params.require ensures that the params hash has a key :question and
    #fetches all the attributes from that hash. The .permit only allows
    #the parameters given to be mass-assigned
    question_params = params.require(:question).permit([:title, :body])
    # question_params => {title: "Abc", body: "xyz"}
    #q = Question.new(question_params)
    #q.save
    #render text: params[:question][:title]
    @question = Question.new(question_params)
    if @question.save
      #render text: "success"
      redirect_to question_path(@question)
    else
      render :new
    end

  end

  # GET /questions/:id (e.g. /questions/1)
  # This is used to show a page with question information
  def show
    @question = Question.find params[:id]
  end

  # GET /questions
  # this is used to show a page with listing of all the questions in our DB
  def index
    @question = Question.all
  end

  # GET /questions/:id/edit
  # this is used to show a page that can edit the entry
  def edit
    @question = Question.find params[:id]
  end

  # PATCH /questions/:id (e.g. /questions/123)
  # this is used to handle the submission of the question form from the edit page
  # when user is updating the information on a question
  def update
    # uses STRONG paramters feature in Rails to only allow
    # the title and body to be updated in the database
    question_params = params.require(:question).permit(:title,:body)
    @question = Question.find params[:id]
    # If updating question is successful
    if @question.update question_params
      # Redirect to the question show page
      redirect_to question_path(@question)
    else
      # rendering the Edit form so the user can see the errors
      render :edit
    end
  end
end
