require 'spec_helper'

describe Spree::Page do
  let(:page) { build :page }
  subject { page }

  it { should be_valid }
  it "should be decorated by dummy application" do
    should respond_to :my_method
  end
end