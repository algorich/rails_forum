require 'spec_helper'

describe RailsForum::Message do

  context 'validations' do

    it 'presence of content' do
      message = Factory.build :message, :content => ""
      message.save.should be_false
    end

    it 'presence of a topic' do
      message = Factory.build :message, :topic => nil
      message.save.should be_false
    end

  end

end

