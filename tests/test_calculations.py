from statstools.calculations import descriptive_stats

def test_descriptive_stats_basic():
    result = descriptive_stats([1, 2, 3, 4, 5])
    assert round(result["mean"], 2) == 3.00
    assert round(result["std"], 2) == 1.41

def test_descriptive_stats_negative_and_floats():
    result = descriptive_stats([-2.5, 0.0, 2.5])
    assert round(result["mean"], 2) == 0.00
    assert round(result["std"], 2) == 2.04
