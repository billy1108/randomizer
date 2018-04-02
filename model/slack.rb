require 'sinatra'
require 'sinatra/reloader'

class Slack
  attr_accessor :channel_id ,:channel_name, :response_url

  def self.create_model(params)
    slack = Slack.new
    slack.channel_id = params["channel_id"]
    slack.channel_name = params["channel_name"]
    slack.response_url = params["response_url"]
    slack
  end
end