class QuestionController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    input_content = params[:q_content]
    input_writter = params[:q_writter].eql? "private" ? "익명" : params[:q_writter]
    
    Question.create(
      content: input_content,
      writter: input_writter
    )
    
    redirect_to :back # 뒤로가기
  end
  
  def destroy
    input_id = params[:id]
    
    Question.destroy(input_id)
    
    redirect_to :back # 뒤로가기
  end
  
  def sign_up
  end
  
  def sign_up_process
    @input_email = params[:user_email]
    @input_name = params[:user_name]
    @input_password = params[:user_password]
    
    User.create(
      email: @input_email,
      name: @input_name,
      password: @input_password
    )
  end
  
  def login
  end
  
  def login_process
    @input_email = params[:user_email]
    @input_password = params[:user_password]
    
    # 유저 인증
    user = User.find_by(email: @input_email)
    # X => nil
    # O => {email: ashkahd, name: sjklajkd, password: sjklad}
    
    if  user
      if user.password == @input_password
        session[:user_email] = user.email
        
        redirect_to '/'
      else
        @msg = "비밀번호가 잘못되었습니다."
      end
    else
      @msg = "회원정보가 존재하지 않습니다."
    end
  end
  
  def logout
    
    session.clear
    
    redirect_to '/'
  end
end
