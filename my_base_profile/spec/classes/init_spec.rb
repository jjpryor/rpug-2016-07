require 'spec_helper'
describe 'my_base_profile' do
  context 'with default values for all parameters' do
    it { should contain_class('my_base_profile') }
  end
end
