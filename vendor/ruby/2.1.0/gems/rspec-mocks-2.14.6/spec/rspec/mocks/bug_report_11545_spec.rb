require 'spec_helper'

class LiarLiarPantsOnFire
  def respond_to?(message, incl_private=false)
    true
  end

  def self.respond_to?(message, incl_private=false)
    true
  end
end

describe 'should_receive' do
  before(:each) do
    @liar = LiarLiarPantsOnFire.new
  end

  it "works when object lies about responding to a method" do
    @liar.should_receive(:something)
    @liar.something
  end

  it 'works when class lies about responding to a method' do
    LiarLiarPantsOnFire.should_receive(:something)
    LiarLiarPantsOnFire.something
  end

  it 'cleans up after itself' do
    expect((class << LiarLiarPantsOnFire; self; end).instance_methods).not_to include("something")
  end
end

