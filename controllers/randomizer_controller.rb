require './app'
require './model/slack'
require 'json'
require 'httparty'
require 'sinatra/reloader'

class RandoMizerController < MyApp

  def self.mizer(params)
    slack = Slack.create_model(params)
    HTTParty.post slack.response_url, body: {"text" => "Omar perrita".to_s, "username" => "John Doe", "channel" => slack.channel_id}.to_json, headers: {'content-type' => 'application/json'}
    render_to_template('templates/slack.json.jbuilder', slack)
  end

end