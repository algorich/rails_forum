require 'spec_helper'

describe RailsForum::Topic do

  context 'validations' do

    it 'presence of title' do
      topic = Factory.build :topic, :title => ""
      topic.save.should be_false
    end

    it 'presence of content' do
      topic = Factory.build :topic, :content => ""
      topic.save.should be_false
    end

    it 'presence of one category' do
      topic = Factory.build :topic, :category => nil
      topic.save.should be_false
    end

  end


end

