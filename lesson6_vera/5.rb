print [1, 2, 3, 4, 5].reduce([]){ |arr, el| arr << el if el.odd?; arr }
