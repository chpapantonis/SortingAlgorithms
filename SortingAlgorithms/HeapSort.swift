//
//  HeapSort.swift
//  Sorting
//
//  Created by Christos Papantonis on 18/01/2019.
//  Copyright © 2019 Christos Papantonis. All rights reserved.
//

import Foundation

private extension Int {
    var parent: Int {
        return (self - 1) >> 2
    }
    
    var leftChild: Int {
        return (self << 1) + 1
    }
    
    var rightChild: Int {
        return (self << 1) + 2
    }
}

public extension Array where Element: Comparable {
    
    /// Method that the array calls
    public mutating func heapSort() {
        buildMaxHeap()
        var lastElement = self.count - 1
        
        while (lastElement > 0) {
            swapAt(0, lastElement)
            heapify(heapIndex: 0, upTo: lastElement)
            lastElement -= 1
        }
    }
    
    /// Finds the biggest element and brings to the start of the array
    public mutating func buildMaxHeap() {
        //n steps
      
        let middleArray: Int = (self.count >> 1) - 1;
        
        // Build a max heap out of
        // all array elements passed in.
        for index in (0...middleArray).reversed() {
            heapify(heapIndex: index, upTo: self.count);
        }
        print (self)
    }
    
    private mutating func heapify(heapIndex: Int, upTo max: Int) {

        var parent = heapIndex
    
        while(parent < self.count) {
            var maxChild = parent
            
            let leftChild = parent.leftChild
            let rightChild = parent.rightChild
            
            if leftChild < max && self[leftChild] > self[maxChild] {
                maxChild = leftChild;
            }
            if rightChild < max && self[rightChild] > self[maxChild] {
                maxChild = rightChild;
            }
            
            //Neither was bigger then return
            guard maxChild != parent else { return }
            
            swapAt(parent, maxChild);
            parent = maxChild;
        }
    }

}


