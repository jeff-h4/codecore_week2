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
      render text: "success"
    else
      render :new
    end

  end
end
