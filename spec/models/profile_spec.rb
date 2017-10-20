require ‘rails_helper’

 RSpec.describe Profile, type: :model do

   describe “validations” do
     it { is_expected.to validate_presence_of(:first_name)}
   end

   describe “validations” do
     it { is_expected.to validate_presence_of(:last_name)}
   end

   describe “validations” do
     it { is_expected.to validate_presence_of(:adress)}
   end

end
