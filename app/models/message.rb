class Message < ActiveRecord::Base
    # 名前は必須入力かつ20字以内
    validates :name , length: { maximum: 20 } , presence: true
    #️内容は必要必須かつ２文字以上30文字以下
    validates :body , length: { minimum: 2, maximum: 30 } , presence: true
end