require "net/http"
require "uri"
require "json"

module TelegramNotification

  class Client
    API_URL = "https://api.telegram.org/"
    attr_reader :api_url

    def initialize(api_url = nil)
      @api_url = URI.parse(api_url || API_URL)
    end

    def post(api_token: ::TelegramNotification.config.api_token,method: "sendMessage",chat_id: ::TelegramNotification.config.chat_id, text:)
      url = endpoint(api_token,method)
      params = { chat_id: chat_id, text: text }.to_json

      # puts "url: #{url}, params: #{params}"

      response = Net::HTTP.post(url, params, 'Content-Type': 'application/json')

      JSON.parse(response.body)
    end

    private

    def endpoint(api_token, method)
      api_url+("/bot"+api_token+"/"+method)
    end
  end
  # code
end
