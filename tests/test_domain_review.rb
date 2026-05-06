require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = SonarParseHttpFlow::DomainReview.new(signal: 47, slack: 25, drag: 29, confidence: 50)
    assert_equal 82, SonarParseHttpFlow.domain_review_score(item)
    assert_equal "hold", SonarParseHttpFlow.domain_review_lane(item)
  end
end
