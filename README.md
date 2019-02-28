# SortingAlgorithms
Many useful algorithms are recursive in structure: to solve a given problem, they call themselves recursively one or more times to deal with closely related subproblems. These algorithms typically follow a divide-and-conquer approach: they break the problem into several subproblems that are similar to the original problem but smaller in size, solve the subproblems recursively, and then combine these solutions to create a solution to the original problem.
The divide-and-conquer paradigm involves three steps at each level of the recursion:

- **Divide** the problem into a number of subproblems that are smaller instances of the same problem.
- **Conquer** the subproblems by solving them recursively. If the subproblem sizes are small enough, however, just solve the subproblems in a straightforward manner.
- **Combine** the solutions to the subproblems into the solution for the original problem.

## MergeSort
The merge sort algorithm closely follows the divide-and-conquer paradigm. Intuitively, it operates as follows.

Divide the n-element sequence to be sorted into two subsequences of n=2 elements each(**Divide**). Sort the two subsequences recursively using merge sort(**Conquer**). Merge the two sorted subsequences to produce the sorted answer(**Combine**).
The recursion “bottoms out” when the sequence to be sorted has length 1, in which case there is no work to be done, since every sequence of length 1 is already in sorted order.

#### How it works 
A mergeSort function has two functions inside of it:
- a merge function, which actually combines two lists together and sorts them in the correct order
- a mergeSort function, which will continue to split the input array again and again, recursively, and will also call merge again and again, recursively.

Indeed, it is because merge sort is implemented recursively that makes it faster than the other algorithms we’ve looked at thus far. 
Despite the fact that merge sort uses a similar divide and conquer strategy — which runs in logarithmic, or O(log n), runtime. It’s also slightly worse than an algorithm that runs in linear time (O(n)). However, we can see how it performs so much better than an algorithm that has a quadratic runtime (O(n²)).

The merge sort algorithm requires a temporary array structure in order to sort and append elements. In other words, it requires a constant, or O(n), amount of space — the memory needed for the temporary buffer array. Merge sort needs O(n) amount of memory in order to copy over elements as it sorts. This is probably the greatest drawback of the merge sort algorithm: it is an out-of-place sorting algorithm, that requires additional memory as its dataset grows.

## HeapSort
A heap is really nothing more than a binary tree with some additional rules that it has to follow: first, it must always have a heap structure, where all the levels of the binary tree are filled up, from left to right, and second, it must either be ordered as a max heap or a min heap. For the purposes of heap sort, we’ll be dealing exclusively with max heaps, where every parent node (including the root) is greater than or equal to the value of its children nodes.

A heap sort algorithm is a sorting technique that leans on binary heap data structures. Because we know that heaps must always follow a specific order, we can leverage that property and use that to find the largest, maximum value element, and sequentially sort elements by selecting the root node of a heap, and adding it to the end of the array. 

#### Steps of Heapsort: 
1. To start, we have an unsorted array. The first step is to take that array and turn it into a heap; in our case, we’ll want to turn it into a max heap(biggest element on the root). So, we have to transform and build a max heap out of our unsorted array data. Usually, this is a single function the **buildMaxHeap**.

2. Once we have our array data in a max heap format, we can be sure that the largest value is at the root node of the heap.  Even though the entire heap won’t be sorted every single parent node in the heap will be larger in value than its children. So, we’ll move the largest value — located at the root node — to the end of the heap by swapping it with the last element.

3. The largest item in the heap is located at the last node, which is great. We know that it is in its sorted position, so it can be removed from the heap completely. But, there’s still one more step: making sure that the new root node element is in the correct place! It’s highly unlikely that the item that we swapped into the root node position is in the right location, so we’ll move down the root node item down to its correct place with **heapify**.

Calling buildMaxHeap takes O(n) time, since every single item must be added to the heap, and a larger amount of elements mean a larger heap. However, remember that we are dealing with a binary tree, and binary trees are logarithmic in nature. So, even though we have to call heapify again and again, invoking this function is actually fairly fast, since it will run in logarithmic time, or O(log n).
The combination of these two time complexities is something we’ve already seen before! Heap sort runs in linearithmic time, or in Big O notation, O(n log n). So, even though heap sort seems so much like selection sort, it’s a lot faster! Selection sort runs in quadratic time, or O(n²), which is so much less efficient than linearithmic time.

