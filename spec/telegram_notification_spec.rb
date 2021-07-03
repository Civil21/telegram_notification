# frozen_string_literal: true
require 'dotenv'
Dotenv.load

RSpec.describe TelegramNotification do
  it "has a version number" do
    expect(TelegramNotification::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end

  # it "test config" do
  #
  # end


  # it "send base sms in default chat" do
  #
  # end
end
