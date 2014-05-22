require 'spec_helper'

describe LeaderboardHelper do
  describe "#calculate_rank" do
    specify { helper.calculate_rank(nil, nil, nil).should == 1 }
    specify { helper.calculate_rank(nil, 1, nil).should == 1 }
    specify { helper.calculate_rank(5, 5, 1).should == 1 }
    specify { helper.calculate_rank(0, 0, 1).should == 1 }
    specify { helper.calculate_rank(5, 6, 5).should == 5 }
  end
end
