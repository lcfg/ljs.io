# Algorithms #

What I find most interesting about algorithms is the enormous difference they can make on the
performance, and in many cases the feasibility, of a solution.

## Definition ##

Algorithms are simply a well-defined set of instructions for solving a problem - a recipe.

If we stretch this definition far enough it encompasses every computer program even written, so
I should clarify by emphasising that I am specifically interested in the subset of algorithms
which describe solutions to problems which are both sufficiently abstract enough that they aren't
overwhelmingly restrictive in their application domain and also provide solutions that are useful
enough to warrant their study.

## An Instructive Example ##

A simple yet rather convincing example of the power of algorithms is in the solution of one of,
if not the most fundamental problem in computing - sorting.

A typical industry programmer when asked to implement their own sorting algorithm with no prior
knowledge of extant algorithms would likely come up with [insertion sort][0],
[bubble sort][1] or [selection sort][2]. Each of these algorithms are [O][3](n<sup>2</sup>),
and thus sorting a collection of 100 numbers on a modern machine will be fast, 1,000
surprisingly slow, 100,000 very very slow, and 1,000,000 or more totally impractical.

The ideas contained in [merge sort][4], [quick sort][5] and the like are not deeply complicated
but are certainly not obvious, on first glance at least. However these algorithms are
worst-case (or in quicksort's case average- and *practically* worst-case) O(n log n), meaning
they can handle considerably larger inputs - 1,000,000 and beyond - without breaking a sweat.

A great many computing tasks require sorting at some stage in their implementation, so moving
from a slow-to-infeasible to a fast-and-very-much-feasible algorithm means the difference
between being able to do certain tasks on computers and not being able to do them *at all*.

Check out algoholic (see below) for instructions on benchmarking sorting code wherein you can see
for yourself just what a difference it makes to choose an O(n<sup>2</sup>) sorting algorithm over an O(n log n) one.

## Algoholic ##

[Algoholic][algoholic] is a project I have created for playing around with the implementation
of many different algorithms in many different languages for self-study and fun.

I make no guarantees as to the quality and robustness of the code, however I do put an emphasis
on describing what I'm doing in more detail than I usually would, so hopefully it will be of
some use to somebody else out there for the purposes of study.

[0]:http://en.wikipedia.org/wiki/insertion_sort
[1]:http://en.wikipedia.org/wiki/bubble_sort
[2]:http://en.wikipedia.org/wiki/selection_sort
[3]:http://en.wikipedia.org/wiki/big_oh
[4]:http://en.wikipedia.org/wiki/merge_sort
[5]:http://en.wikipedia.org/wiki/quick_sort

[algoholic]:https://github.com/lorenzo-stoakes/algoholic
