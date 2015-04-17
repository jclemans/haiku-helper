require 'spec_helper'

describe Haiku do
  before do
    @haiku = Haiku.new(content: "hello world")
  end

  it { should respond_to :content }
  it { should be_valid }

  describe "when no content is present" do
    before { haiku.content = "" }
    it { should_not be_valid }
  end