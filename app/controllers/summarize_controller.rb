class SummarizeController < ApplicationController
  require 'ots'

  before_filter :get_article

  def keyword
    @keywords = @article.keywords
    render json: @keywords
  end

  def topic
    @topics = @article.topics
    render json: @topics
  end

  def summarize_percent
    percent = Integer(params[:percent])
    @sum_percent = @article.summarize(percent: percent)
    render json: @sum_percent
  end

  def summarize_sentences
    sentences = Integer(params[:sentences])
    @sum_sentences = @article.summarize(sentences: sentences)
    render json: @sum_sentences
  end

  private

  def get_article
    @sample = params[:data]
    @article = OTS::Article.new(@sample)
  end
end
