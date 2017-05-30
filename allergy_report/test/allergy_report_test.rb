require 'minitest/autorun'
require 'minitest/pride'
require './lib/allergy_report'

class AllergyTest < Minitest::Test
  def test_number_combination_works_for_1_number
    new_report = AllergyReport.new

    assert_equal [2], new_report.number_combination(2)
  end

  def test_number_combination_works_for_2_numbers
    new_report = AllergyReport.new

    assert_equal [8, 4], new_report.number_combination(12)
  end

  def test_number_combination_works_for_5_numbers
    new_report = AllergyReport.new

    assert_equal [128, 64, 32, 16, 8], new_report.number_combination(248)
  end

  def test_human_readable_prints_1_result
    new_report = AllergyReport.new

    test_1 = new_report.human_readable_report(2, 'John Smith')

    assert_equal 'John Smith is allergic to peanuts.', test_1
  end

  def test_human_readable_prints_2_results
    new_report = AllergyReport.new

    test_2 = new_report.human_readable_report(12, 'John Smith')

    assert_equal 'John Smith is allergic to strawberries and shellfish.', test_2
  end

  def test_human_readable_prints_5_results
    new_report = AllergyReport.new

    test_5 = new_report.human_readable_report(248, 'John Smith')

    assert_equal 'John Smith is allergic to cats, pollen, chocolate, tomatoes, and strawberries.', test_5
  end
end
