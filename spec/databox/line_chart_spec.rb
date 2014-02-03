require "spec_helper"

describe Databox::LineChart do

  let(:chart){ Databox::LineChart.new "my_line" }

  context "simple" do
    before {
      stub_request(:post, /push/)
      .to_return { request_from "line_chart_simple" }
    }

    before do
      chart.add 2000, "2014-01-29"
      chart.add 1600, "2014-02-01"
      chart.add 999,  "2014-02-03"
    end

    it { expect(chart.save).to be_true }

  end

end
