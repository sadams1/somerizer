class SummarizeController < ApplicationController
  require 'ots'

  def keyword
    @sample = params[:data]
    @article = OTS::Article.new(@sample)
    @keywords = @article.keywords
    render json: @keywords
  end

  def topic
    @sample = params[:data]
    @article = OTS::Article.new(@sample)
    @topics = @article.topics
    render json: @topics
  end

  def summarize_percent
    @sample = params[:data]
    @article = OTS::Article.new(@sample)
    percent = Integer(params[:percent])
    @sum_percent = @article.summarize(percent: percent)
    render json: @sum_percent
  end

  def summarize_sentences
    @sample = params[:data]
    @article = OTS::Article.new(@sample)
    sentences = Integer(params[:sentences])
    @sum_sentences = @article.summarize(sentences: sentences)
    render json: @sum_sentences
  end
end
