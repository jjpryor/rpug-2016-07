require 'spec_helper'
describe 'my_ntp' do
  context 'with default values for all parameters' do
    it { should contain_class('my_ntp') }
  end
end
