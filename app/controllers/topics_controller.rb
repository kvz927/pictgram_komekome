class TopicsController < ApplicationController
  def new
    @topic = Topic.new
  end

  

  def create
    if current_user.topics.create(topic_params)
      redirect_to topics_path, notice:'投稿に成功しました'
    else
      flash.now[:alert] = "投稿に失敗しました"
      render :new
    end
  end

  def index
    @topics = Topic.all.includes(:favorite_users)
      # topic classを触ってる
      # ブラウザからコメントを受け取る　フォームを作る　コントローラで受け取る　コメント保存
      # サーバーにデータを渡す
      # データをdbに保存する
  end

  def comment
    puts "-----------TopicsController#comment----------------"
  end

  private
    def topic_params
      params.require(:topic).permit(:image, :description)
    end
end
