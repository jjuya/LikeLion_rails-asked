# 4차 산업 선도 인력
AI 빅데이터 분석가 양성 과정
---

---

## Week 1: Ruby
- day 1 : [Ruby 입문](https://github.com/jjuya/LikeLion_class_Ruby/tree/master/1day_Ruby)
    * Ruby 기초
        - 랜덤 함수 : sample.rb
    * Ruby 활용 Scraping : Nokogiri, HTTParty
    * create file & rename file : File.open, File.rename
- day 2 : [Sinatra 입문](https://github.com/jjuya/LikeLion_sinatra)
    * Sinatra : http://www.sinatrarb.com/intro-ko.html
    * Sinatra 활용
        1) 점심 메뉴 추천 : hash
        2) 로또 번호 추천
        3) op.gg 스크래핑 : Nokogiri, HTTParty, logging(csv, http://ruby-doc.org/stdlib-2.0.0/libdoc/csv/rdoc/CSV.html)
    * 서버 : Heroku
- day 3 : 
    1. [rails CRUD](https://github.com/jjuya/LikeLion_rails-crud)
        * rails 맛보기
            1) routing(routes.rb)
            2) controller 생성(``` rails g controller post ```) : app/controllers/post_controller.rb
            3) model 생성(``` rails g model post ```) : app/modles/post.rb, db/migrate/20171108022640_create_posts.rb, db/schema.rb
                - [rails_db](https://rails-crud-jjuya.c9users.io/rails/db) : https://github.com/igorkasyanchuk/rails_db
                - [Active Record](http://guides.rorlab.org/active_record_basics.html)
                    * ex) Post.all, Post.first, Post.last ..
                    * primary key를 정수값으로 자동 생성 : id
         * Create : create
                1) CSV
                2) ORM(데이터베이스를 사용했지만 사용하지 않은 것 처럼) : create
        * Read : show
        * destroy : destory
        * update : modify, update
        * Bootstrap을 이용한 CSS 맛보기
    2. [Ruby Test](https://github.com/jjuya/LikeLion_class_Ruby/tree/master/3day_Ruby)
        * block
        * Unit Test(잘 모르겠다)
            1) calculator.rb
            2) calculator_test.rb
        * RSpec : http://rspec.info/
- day 4 : 
    1. [rspec](https://github.com/jjuya/LikeLion_class_Ruby/tree/master/4day_RSpec)
        * 설치 : gem install rspec
        ``` ruby
        require 'rspec'
        ```
        * 실행 : rspec intro_spec.rb 
        * ruby_intro
            - reduce(:+) array의 원소를 더하면서 압축 : https://ruby-doc.org/core-2.1.0/Enumerable.html
            - %w, %q : https://simpleror.wordpress.com/2009/03/15/q-q-w-w-x-r-s/
            - .include? : https://apidock.com/ruby/String/include%3F
            - 정규 표현식
                * http://www.tutorialspoint.com/ruby/ruby_regular_expressions.htm
                * http://www.nextree.co.kr/p4327/
    2. [rails signUp](https://github.com/jjuya/LikeLion_rails-signUp)
        * user list
        * user create : 암호화(md5, 이제 뚫을 수 있다. 테스트에서만 사용할 것)
            - [MD5 Decrypter](http://www.md5online.org/)가 존재
        * user modify
        * user destroy
        * login
            - [session](http://guides.rubyonrails.org/security.html#sessions) : ``` session['key'] ```
- day 5:
    1. [rails lotto](https://github.com/jjuya/LikeLion_rails-lotto)
        * cf : http://konkuk.likelion.org/challenge-w3-lotto
        * lotto/index : 추천 버튼
        * lotto/show : ``` arr.sample(6) ```
        * lotto/api
            1) lotto API : http://www.nlotto.co.kr/common.do?method=getLottoNumber&drwNo=
            2) JSON 파싱
            ``` ruby
            require 'httparty'
            require 'json'
            
            response = HTTParty.get(uri)
            info = JSON.parse(response.body)
            ```
            3) Array 연산 : https://stackoverflow.com/questions/13558461/how-to-find-matching-values-in-ruby-array
            ``` ruby
            arr1 = [1, 2, 3, 4]
            arr2 = [1, 5, 4, 2]
            
            arr1 & arr2 #=> [1, 2, 4]
            ```
    2. [ASCII art](https://github.com/jjuya/LikeLion_rails-asciiart)
        * artii : https://github.com/miketierney/artii
            - gem 'artii'
            ```ruby
            require 'artii'
            a = Artii::Base.new(font:'사용할 폰트')
            a.asciify('바꿔줄 문자열')
            ```
            - http://patorjk.com/software/taag/#p=display&f=Doh&t=Type%20Something%20
            - font : http://www.figlet.org/fontdb.cgi
            
        * 개발을 위해 필요한 Gem
            1) gem 'rails_db'
            2) gem 'pry-rails' : https://github.com/rweng/pry-rails
            3) gem 'awesome_print' 
    3. [rails-asked](https://github.com/jjuya/LikeLion_rails-asked)
        * question : 질문을 받는 페이지와 보여주는 페이지(작성자를 입력안할 경우 익명으로 DB에 입력)
        * sign-up
        * login/logout
---

## Week 2: ???