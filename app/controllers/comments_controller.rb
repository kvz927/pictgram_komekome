class CommentsController < ApplicationController

  # フォームの値を取得する
  # その値を元にCommentクラスのインスタンスを作成する
  # 作成したインスタンスをDBに保存する
  # 投稿一覧画面に戻る
  def create
    @comment = Comment.new
    comment = Comment.create(user: , topic: , body: params[:comment][:text])
    debugger
    redirect_to topics_path

  end


end
