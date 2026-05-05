require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = SonarParseHttpFlow::Signal.new(demand: 69, capacity: 71, latency: 23, risk: 10, weight: 11)
    assert_equal 148, SonarParseHttpFlow.score(signal_case_1)
    assert_equal 'review', SonarParseHttpFlow.classify(signal_case_1)
    signal_case_2 = SonarParseHttpFlow::Signal.new(demand: 98, capacity: 92, latency: 9, risk: 16, weight: 11)
    assert_equal 213, SonarParseHttpFlow.score(signal_case_2)
    assert_equal 'accept', SonarParseHttpFlow.classify(signal_case_2)
    signal_case_3 = SonarParseHttpFlow::Signal.new(demand: 71, capacity: 106, latency: 12, risk: 17, weight: 6)
    assert_equal 135, SonarParseHttpFlow.score(signal_case_3)
    assert_equal 'review', SonarParseHttpFlow.classify(signal_case_3)
  end
end
