# Grouping of all the related kernels
## Group 1: Sorting and Aggregation Operations
These functions deal with sorting, aggregation, and related operations.

### Sorting & Grouping
- bitonic_sort
- compound_sort
- merge_sort
- aggregate
- group_aggregate
- hash_group_aggregate
### Dynamic Filtering & Evaluation
- Dynamic_filter
- dynamic_eval_v2
- static_eval

## Group 2: Join Operations
These functions are related to various types of joins.

### Hash Joins
- hash_anti_join
- hash_join_v4
- hash_multi_join
- hash_semi_join
- hash_lookup3
- hash_multi_join_build_probe
### Merge Joins
- merge_join
- merge_left_join

## Group 3: Data Manipulation & Scanning
These functions are related to data transformations, scanning, and handling of columns.

### Column Manipulation
- combine_split_col
- Duplicate_col
### Scans & Comparisons
- scan_cmp_str_col
- scan_col_2
- hash_partition

# Summary of Groupings:
- Group 1: Sorting and Aggregation Operations – Functions that deal with sorting, aggregation, and evaluation.
- Group 2: Join Operations – Functions that handle different types of joins (hash and merge).
- Group 3: Data Manipulation & Scanning – Functions that focus on data transformation, splitting, duplication, and scanning operations.

## Why Avoid Reusing the Same Group?
- Reusing functions within the same group would be inefficient since they perform similar tasks (e.g., sorting is already handled by functions like bitonic_sort or merge_sort, so adding more sorting functions might result in duplication).
- Each group focuses on different stages or types of operations (e.g., sorting vs. joining vs. scanning), so combining them would lead to complexity and potential conflicts in your processing pipeline.
