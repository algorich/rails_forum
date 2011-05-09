require 'spec_helper'

describe RailsForum::Category do

  it 'should exists' do
    category = RailsForum::Category.new
    category.should be_kind_of(RailsForum::Category)
  end

  context 'validations' do

    it 'presence of name' do
      category = RailsForum::Category.new(:name => "")
      category.valid?.should be_false
    end
  end

end

