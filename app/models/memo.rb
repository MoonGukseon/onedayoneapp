class Memo < ActiveRecord::Base
    belongs_to :user
    has_many :comments
    
    # validates: method *RUBY는 parameter를 괄호 안에 안 넣고 띄어쓰기로 선언할 수 있음
    validates :title, presence: true, length: {maximum: 50} 
    validates :content,  presence: true, length: {maximum: 1000}
end
