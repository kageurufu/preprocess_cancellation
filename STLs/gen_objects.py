cube(5, 5, 5),

cylinder(2.5, 5),

union()(
    cube(5, 5, 2.5),
    cube(5, 5, 2.5).move(10, 0, 0),
    cube(15, 5, 2.5).move(0, 0, 2.5),
),
