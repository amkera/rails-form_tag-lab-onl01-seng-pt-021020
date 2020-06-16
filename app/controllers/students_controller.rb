class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def new
  end

  def create
    session[:form_params] = params.inspect
    redirect_to new_student_path
    #byebug
  end

  def set_student
    @student = Student.find_by(id: params[:id])
  end 


end


#This is the session[:form_params]
#"<ActionController::Parameters {\"utf8\"=>\"✓\", \"student\"=>{\"first_name\"=>\"Margaery\", \"last_name\"=>\"Tyrell\"}, \"commit\"=>\"Submit Student\", \"controller\"=>\"students\", \"action\"=>\"create\"} permitted: false>"

#This is Params
#<ActionController::Parameters {"utf8"=>"✓", "student"=>{"first_name"=>"Margaery", "last_name"=>"Tyrell"}, "commit"=>"Submit Student", "controller"=>"students", "action"=>"create"} permitted: false>
