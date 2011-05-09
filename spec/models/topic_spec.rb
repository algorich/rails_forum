require 'spec_helper'

describe RailsForum::Topic do

  context 'validations' do

    it 'presence of title' do
      topic = Factory.build :topic, :title => ""
      topic.save.should be_false
    end

  end


end

