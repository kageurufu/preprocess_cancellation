from preprocess_cancellation.layers import LayerFilter


def test_layer_filters_single_layer():
    filter = LayerFilter("1")
    assert filter(1)
    assert not filter(2)


def test_layer_filter_all_layers():
    filter = LayerFilter("*")
    assert filter(1)
    assert filter(100)


def test_layer_filter_all_step():
    filter = LayerFilter("*/2")
    assert not filter(1)
    assert filter(2)
    assert not filter(3)
    assert filter(4)

    assert not filter(9999)
    assert filter(10000)


def test_layer_filter_bounded_range():
    filter = LayerFilter("1-5")
    assert filter(1)
    assert filter(2)
    assert filter(3)
    assert filter(4)
    assert filter(5)
    assert not filter(6)


def test_layer_filter_range_start_unbounded():
    filter = LayerFilter("5-")
    assert not filter(1)
    assert not filter(2)
    assert not filter(3)
    assert not filter(4)
    assert filter(5)
    assert filter(6)


def test_layer_filter_range_unbounded_stop():
    filter = LayerFilter("-5")
    assert filter(1)
    assert filter(2)
    assert filter(3)
    assert filter(4)
    assert filter(5)
    assert not filter(6)


def test_layer_filter_range_step():
    filter = LayerFilter("1-10/2")
    assert filter(1)
    assert not filter(2)
    assert filter(3)
    assert not filter(4)
    assert filter(5)
    assert not filter(6)
    assert filter(7)
    assert not filter(8)
    assert filter(9)
    assert not filter(10)
    assert not filter(11)


def test_multi_range():
    filter = LayerFilter("1,3-5,6-10/2")

    # 1
    assert filter(1)
    # 3-5
    assert filter(3)
    assert filter(4)
    assert filter(5)
    # 6-10/2
    assert filter(6)
    assert filter(8), filter.ranges
    assert filter(10)

    # And definitely none of these
    assert not filter(0)
    assert not filter(2)
    assert not filter(7)
    assert not filter(9)
    assert not filter(11)
