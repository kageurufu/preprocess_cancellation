from preprocess_cancellation.layers import LayerFilter


def test_layer_filters_single_layer():
    layer_filter = LayerFilter("1")
    assert layer_filter(1)
    assert not layer_filter(2)


def test_layer_filter_all_layers():
    layer_filter = LayerFilter("*")
    assert layer_filter(1)
    assert layer_filter(100)


def test_layer_filter_all_step():
    layer_filter = LayerFilter("*/2")
    assert not layer_filter(1)
    assert layer_filter(2)
    assert not layer_filter(3)
    assert layer_filter(4)

    assert not layer_filter(9999)
    assert layer_filter(10000)


def test_layer_filter_bounded_range():
    layer_filter = LayerFilter("1-5")
    assert layer_filter(1)
    assert layer_filter(2)
    assert layer_filter(3)
    assert layer_filter(4)
    assert layer_filter(5)
    assert not layer_filter(6)


def test_layer_filter_range_start_unbounded():
    layer_filter = LayerFilter("5-")
    assert not layer_filter(1)
    assert not layer_filter(2)
    assert not layer_filter(3)
    assert not layer_filter(4)
    assert layer_filter(5)
    assert layer_filter(6)


def test_layer_filter_range_unbounded_stop():
    layer_filter = LayerFilter("-5")
    assert layer_filter(1)
    assert layer_filter(2)
    assert layer_filter(3)
    assert layer_filter(4)
    assert layer_filter(5)
    assert not layer_filter(6)


def test_layer_filter_range_step():
    layer_filter = LayerFilter("1-10/2")
    assert layer_filter(1)
    assert not layer_filter(2)
    assert layer_filter(3)
    assert not layer_filter(4)
    assert layer_filter(5)
    assert not layer_filter(6)
    assert layer_filter(7)
    assert not layer_filter(8)
    assert layer_filter(9)
    assert not layer_filter(10)
    assert not layer_filter(11)


def test_multi_range():
    layer_filter = LayerFilter("1,3-5,6-10/2")

    # 1
    assert layer_filter(1)
    # 3-5
    assert layer_filter(3)
    assert layer_filter(4)
    assert layer_filter(5)
    # 6-10/2
    assert layer_filter(6)
    assert layer_filter(8), layer_filter.ranges
    assert layer_filter(10)

    # And definitely none of these
    assert not layer_filter(0)
    assert not layer_filter(2)
    assert not layer_filter(7)
    assert not layer_filter(9)
    assert not layer_filter(11)
