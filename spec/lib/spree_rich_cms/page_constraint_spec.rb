require 'spec_helper'

describe SpreeRichCMS::PageConstraint do
  let(:constraint) { SpreeRichCMS::PageConstraint.new }

  describe "#matches?" do
    let(:request) { double 'Request', path_parameters: { id: path } }
    subject { constraint.matches? request }

    context "when page doesn't exists" do
      let(:path) { 'foo/bar' }

      it { should be_false }
    end

    context "when page exists" do
      let(:path) { 'foo/bar' }
      let!(:page) { create :page, slug: path }

      it { should be_true }
    end
  end

  describe "#find_page" do
    let(:path) { 'foo/bar' }
    let!(:page) { create :page, slug: path }
    subject { constraint.send :find_page, path }

    it "should find page" do
      should == page
    end
  end

  describe "#page_exist?" do
    let(:path) { 'foo/bar' }
    subject { constraint.send :page_exist?, path }

    context "when page doesn't exists" do
      it { should be_false }
    end

    context "when page exists" do
      let!(:page) { create :page, slug: path }
      it { should be_true }
    end
  end
end