require 'spec_helper'
describe RailsForum::RailsForumGenerator do
  include GeneratorSpec::TestCase
  destination File.expand_path("../../tmp", __FILE__)

  before do
    prepare_destination
    run_generator
  end

  context 'create migrations file' do

    it 'category' do
      assert_migration "db/migrate/category.rb"
    end

  end

end

