require 'spec_helper'

describe Spree::Page do
  let(:page) { build :page }
  subject { page }
  it { should be_valid }
end