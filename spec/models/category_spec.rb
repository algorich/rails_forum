require 'spec_helper'

describe RailsForum::Category do

  it 'should exists' do
    category = RailsForum::Category.new
    category.should be_kind_of(RailsForum::Category)
  end

end

