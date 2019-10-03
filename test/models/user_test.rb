require 'test_helper'

class UserTest < ActiveSupport::TestCase
   test "the truth" do
     travel_to DateTime.new(2019, 01, 10) do
        user = users(:one)
        assert_equal(user.days_since_created, 9)
     end
   end
end
