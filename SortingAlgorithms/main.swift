//
//  main.swift
//  Sorting
//
//  Created by Christos Papantonis on 27/02/2019.
//  Copyright © 2019 Christos Papantonis. All rights reserved.
//

import Foundation

print("Hello, World!")
var arr = [Int](1...30).shuffled()
//var arr = [6, 1, 8, 5, 3, 7, 2, 4]
print(arr)
arr.heapSort()
print(arr)

