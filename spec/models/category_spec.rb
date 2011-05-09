require 'spec_helper'

describe RailsForum::Category do

  it 'should exists' do
    category = Factory.build :category
    category.should be_kind_of(RailsForum::Category)
  end

  context 'validations' do

    it 'presence of name' do
      category = Factory.build :category, :name => ""
      category.save.should be_false
    end

    it 'presence of description' do
      category = Factory.build :category, :description => ""
      category.save.should be_false
    end

  end

end

