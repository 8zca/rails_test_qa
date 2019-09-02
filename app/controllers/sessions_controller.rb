#ログイン時のコントローラー : sessions_controller.rb
class SessionsController < ApplicationController
  #getリクエスト送信時のアクション
  def new
  #ログイン画面を表示するだけのアクション
    logger.debug("ログイン画面へ遷移しました。")
  end
  #postリクエスト送信時のアクション
  def create
    #問題のアクション
    #動作確認のためにログを出力していますが、このログも吐かれていませんでした。
    logger.debug("ログインのサブミットボタンが謳歌されました。")
  end
  #deleteリクエスト送信時のアクション
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end