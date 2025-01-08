
<!-- README.md is generated from README.Rmd. Please edit that file -->

# chchchanges <img src="man/figures/logo.png" align="right" height="139" alt="" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/beanumber/chchchanges/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/beanumber/chchchanges/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The purpose of this package is to breakdown the commits history between
multiple users working on a git repository on RStudio. This will allow a
friendlier preview of who, where and when commits are made.

## Installation

You can install the development version of chchchanges like so:

``` r
# install.packages("remotes")
remotes::install_github("sds270-f24/chchchanges")
```

## Examples

There are different functions that can be called depending on the users
needs

### Example 1

Count the amount of commits from each user

``` r
library(chchchanges)
#> Warning: replacing previous import 'git2r::when' by 'purrr::when' when loading
#> 'chchchanges'
#> Warning: replacing previous import 'git2r::is_empty' by 'purrr::is_empty' when
#> loading 'chchchanges'
authors_commit(file_name = "README.md")
#> hunk_name
#>             dmcam02          Ben Baumer NicoleSanchezFlores            anandaw2 
#>                  22                  15                   3                   2
```

### Example 2

List the hunks within the repository

``` r
hunks(file_name = "README.md")
#> [[1]]
#> $lines_in_hunk
#> [1] 4
#> 
#> $final_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $final_start_line_number
#> [1] 1
#> 
#> $final_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $orig_start_line_number
#> [1] 1
#> 
#> $orig_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[2]]
#> $lines_in_hunk
#> [1] 1
#> 
#> $final_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $final_start_line_number
#> [1] 5
#> 
#> $final_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $orig_start_line_number
#> [1] 2
#> 
#> $orig_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[3]]
#> $lines_in_hunk
#> [1] 1
#> 
#> $final_commit_id
#> [1] "8b6a689be3a4d3180f8380af55ab65c8dfe3744a"
#> 
#> $final_start_line_number
#> [1] 6
#> 
#> $final_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-18 01:02:42 GMT
#> 
#> $orig_commit_id
#> [1] "8b6a689be3a4d3180f8380af55ab65c8dfe3744a"
#> 
#> $orig_start_line_number
#> [1] 3
#> 
#> $orig_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-18 01:02:42 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[4]]
#> $lines_in_hunk
#> [1] 1
#> 
#> $final_commit_id
#> [1] "554cdc64227abc0f3ce0187f794a486878c14307"
#> 
#> $final_start_line_number
#> [1] 7
#> 
#> $final_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-18 01:04:44 GMT
#> 
#> $orig_commit_id
#> [1] "554cdc64227abc0f3ce0187f794a486878c14307"
#> 
#> $orig_start_line_number
#> [1] 5
#> 
#> $orig_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-18 01:04:44 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[5]]
#> $lines_in_hunk
#> [1] 1
#> 
#> $final_commit_id
#> [1] "d9b0c12af4374c7ed19ec9e6b4b1564f490aca90"
#> 
#> $final_start_line_number
#> [1] 8
#> 
#> $final_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-17 18:38:35 GMT
#> 
#> $orig_commit_id
#> [1] "d9b0c12af4374c7ed19ec9e6b4b1564f490aca90"
#> 
#> $orig_start_line_number
#> [1] 6
#> 
#> $orig_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-17 18:38:35 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[6]]
#> $lines_in_hunk
#> [1] 3
#> 
#> $final_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $final_start_line_number
#> [1] 9
#> 
#> $final_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $orig_start_line_number
#> [1] 9
#> 
#> $orig_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[7]]
#> $lines_in_hunk
#> [1] 1
#> 
#> $final_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $final_start_line_number
#> [1] 12
#> 
#> $final_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $orig_start_line_number
#> [1] 4
#> 
#> $orig_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[8]]
#> $lines_in_hunk
#> [1] 1
#> 
#> $final_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $final_start_line_number
#> [1] 13
#> 
#> $final_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $orig_start_line_number
#> [1] 13
#> 
#> $orig_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[9]]
#> $lines_in_hunk
#> [1] 1
#> 
#> $final_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $final_start_line_number
#> [1] 14
#> 
#> $final_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $orig_start_line_number
#> [1] 6
#> 
#> $orig_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[10]]
#> $lines_in_hunk
#> [1] 1
#> 
#> $final_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $final_start_line_number
#> [1] 15
#> 
#> $final_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $orig_start_line_number
#> [1] 15
#> 
#> $orig_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[11]]
#> $lines_in_hunk
#> [1] 2
#> 
#> $final_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $final_start_line_number
#> [1] 16
#> 
#> $final_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $orig_start_line_number
#> [1] 10
#> 
#> $orig_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[12]]
#> $lines_in_hunk
#> [1] 2
#> 
#> $final_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $final_start_line_number
#> [1] 18
#> 
#> $final_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $orig_start_line_number
#> [1] 18
#> 
#> $orig_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[13]]
#> $lines_in_hunk
#> [1] 2
#> 
#> $final_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $final_start_line_number
#> [1] 20
#> 
#> $final_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $orig_start_line_number
#> [1] 14
#> 
#> $orig_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[14]]
#> $lines_in_hunk
#> [1] 1
#> 
#> $final_commit_id
#> [1] "704b431d2e6980aeb68ba995f4da3a97db35417e"
#> 
#> $final_start_line_number
#> [1] 22
#> 
#> $final_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-18 00:50:27 GMT
#> 
#> $orig_commit_id
#> [1] "704b431d2e6980aeb68ba995f4da3a97db35417e"
#> 
#> $orig_start_line_number
#> [1] 20
#> 
#> $orig_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-18 00:50:27 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[15]]
#> $lines_in_hunk
#> [1] 1
#> 
#> $final_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $final_start_line_number
#> [1] 23
#> 
#> $final_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $orig_start_line_number
#> [1] 17
#> 
#> $orig_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[16]]
#> $lines_in_hunk
#> [1] 2
#> 
#> $final_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $final_start_line_number
#> [1] 24
#> 
#> $final_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $orig_start_line_number
#> [1] 24
#> 
#> $orig_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[17]]
#> $lines_in_hunk
#> [1] 1
#> 
#> $final_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $final_start_line_number
#> [1] 26
#> 
#> $final_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $orig_start_line_number
#> [1] 19
#> 
#> $orig_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[18]]
#> $lines_in_hunk
#> [1] 1
#> 
#> $final_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $final_start_line_number
#> [1] 27
#> 
#> $final_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $orig_start_line_number
#> [1] 27
#> 
#> $orig_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[19]]
#> $lines_in_hunk
#> [1] 3
#> 
#> $final_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $final_start_line_number
#> [1] 28
#> 
#> $final_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $orig_start_line_number
#> [1] 21
#> 
#> $orig_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[20]]
#> $lines_in_hunk
#> [1] 6
#> 
#> $final_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $final_start_line_number
#> [1] 31
#> 
#> $final_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $orig_start_line_number
#> [1] 31
#> 
#> $orig_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[21]]
#> $lines_in_hunk
#> [1] 1
#> 
#> $final_commit_id
#> [1] "704b431d2e6980aeb68ba995f4da3a97db35417e"
#> 
#> $final_start_line_number
#> [1] 37
#> 
#> $final_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-18 00:50:27 GMT
#> 
#> $orig_commit_id
#> [1] "704b431d2e6980aeb68ba995f4da3a97db35417e"
#> 
#> $orig_start_line_number
#> [1] 29
#> 
#> $orig_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-18 00:50:27 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[22]]
#> $lines_in_hunk
#> [1] 3
#> 
#> $final_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $final_start_line_number
#> [1] 38
#> 
#> $final_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $orig_start_line_number
#> [1] 38
#> 
#> $orig_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[23]]
#> $lines_in_hunk
#> [1] 6
#> 
#> $final_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $final_start_line_number
#> [1] 41
#> 
#> $final_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $orig_start_line_number
#> [1] 26
#> 
#> $orig_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[24]]
#> $lines_in_hunk
#> [1] 1
#> 
#> $final_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $final_start_line_number
#> [1] 47
#> 
#> $final_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $orig_start_line_number
#> [1] 47
#> 
#> $orig_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[25]]
#> $lines_in_hunk
#> [1] 1
#> 
#> $final_commit_id
#> [1] "704b431d2e6980aeb68ba995f4da3a97db35417e"
#> 
#> $final_start_line_number
#> [1] 48
#> 
#> $final_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-18 00:50:27 GMT
#> 
#> $orig_commit_id
#> [1] "704b431d2e6980aeb68ba995f4da3a97db35417e"
#> 
#> $orig_start_line_number
#> [1] 38
#> 
#> $orig_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-18 00:50:27 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[26]]
#> $lines_in_hunk
#> [1] 1319
#> 
#> $final_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $final_start_line_number
#> [1] 49
#> 
#> $final_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $orig_start_line_number
#> [1] 49
#> 
#> $orig_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[27]]
#> $lines_in_hunk
#> [1] 4
#> 
#> $final_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $final_start_line_number
#> [1] 1368
#> 
#> $final_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $orig_start_line_number
#> [1] 34
#> 
#> $orig_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[28]]
#> $lines_in_hunk
#> [1] 2
#> 
#> $final_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $final_start_line_number
#> [1] 1372
#> 
#> $final_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $orig_start_line_number
#> [1] 1372
#> 
#> $orig_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[29]]
#> $lines_in_hunk
#> [1] 1
#> 
#> $final_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $final_start_line_number
#> [1] 1374
#> 
#> $final_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $orig_start_line_number
#> [1] 39
#> 
#> $orig_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[30]]
#> $lines_in_hunk
#> [1] 233
#> 
#> $final_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $final_start_line_number
#> [1] 1375
#> 
#> $final_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $orig_start_line_number
#> [1] 1375
#> 
#> $orig_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[31]]
#> $lines_in_hunk
#> [1] 1
#> 
#> $final_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $final_start_line_number
#> [1] 1608
#> 
#> $final_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $orig_start_line_number
#> [1] 42
#> 
#> $orig_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[32]]
#> $lines_in_hunk
#> [1] 1
#> 
#> $final_commit_id
#> [1] "44460078fb007099c1a15886a5fcc2f1213e6141"
#> 
#> $final_start_line_number
#> [1] 1609
#> 
#> $final_signature
#> name:  anandaw2
#> email: 113189870+anandaw2@users.noreply.github.com
#> when:  2024-12-18 00:27:42 GMT
#> 
#> $orig_commit_id
#> [1] "44460078fb007099c1a15886a5fcc2f1213e6141"
#> 
#> $orig_start_line_number
#> [1] 48
#> 
#> $orig_signature
#> name:  anandaw2
#> email: 113189870+anandaw2@users.noreply.github.com
#> when:  2024-12-18 00:27:42 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[33]]
#> $lines_in_hunk
#> [1] 2
#> 
#> $final_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $final_start_line_number
#> [1] 1610
#> 
#> $final_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $orig_start_line_number
#> [1] 44
#> 
#> $orig_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[34]]
#> $lines_in_hunk
#> [1] 2
#> 
#> $final_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $final_start_line_number
#> [1] 1612
#> 
#> $final_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $orig_start_line_number
#> [1] 52
#> 
#> $orig_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[35]]
#> $lines_in_hunk
#> [1] 3
#> 
#> $final_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $final_start_line_number
#> [1] 1614
#> 
#> $final_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $orig_start_line_number
#> [1] 1614
#> 
#> $orig_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[36]]
#> $lines_in_hunk
#> [1] 5
#> 
#> $final_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $final_start_line_number
#> [1] 1617
#> 
#> $final_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $orig_start_line_number
#> [1] 56
#> 
#> $orig_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[37]]
#> $lines_in_hunk
#> [1] 10
#> 
#> $final_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $final_start_line_number
#> [1] 1622
#> 
#> $final_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_commit_id
#> [1] "1ea654904b3e2bfef6438c010b85e0b3908c8c10"
#> 
#> $orig_start_line_number
#> [1] 1622
#> 
#> $orig_signature
#> name:  Ben Baumer
#> email: ben.baumer@gmail.com
#> when:  2025-01-08 20:24:26 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[38]]
#> $lines_in_hunk
#> [1] 1
#> 
#> $final_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $final_start_line_number
#> [1] 1632
#> 
#> $final_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_commit_id
#> [1] "4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248"
#> 
#> $orig_start_line_number
#> [1] 63
#> 
#> $orig_signature
#> name:  dmcam02
#> email: dcamacho@smith.edu
#> when:  2024-12-10 02:40:39 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[39]]
#> $lines_in_hunk
#> [1] 1
#> 
#> $final_commit_id
#> [1] "ebf70a7a8b8af0e03efb29d322fc69193378ad99"
#> 
#> $final_start_line_number
#> [1] 1633
#> 
#> $final_signature
#> name:  NicoleSanchezFlores
#> email: nsanchezflores@smith.edu
#> when:  2024-11-07 16:47:36 GMT
#> 
#> $orig_commit_id
#> [1] "ebf70a7a8b8af0e03efb29d322fc69193378ad99"
#> 
#> $orig_start_line_number
#> [1] 3
#> 
#> $orig_signature
#> name:  NicoleSanchezFlores
#> email: nsanchezflores@smith.edu
#> when:  2024-11-07 16:47:36 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[40]]
#> $lines_in_hunk
#> [1] 1
#> 
#> $final_commit_id
#> [1] "4e5fc1d09e6247205200c54014dfb230f94681e6"
#> 
#> $final_start_line_number
#> [1] 1634
#> 
#> $final_signature
#> name:  NicoleSanchezFlores
#> email: nsanchezflores@smith.edu
#> when:  2024-11-07 16:48:50 GMT
#> 
#> $orig_commit_id
#> [1] "4e5fc1d09e6247205200c54014dfb230f94681e6"
#> 
#> $orig_start_line_number
#> [1] 4
#> 
#> $orig_signature
#> name:  NicoleSanchezFlores
#> email: nsanchezflores@smith.edu
#> when:  2024-11-07 16:48:50 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[41]]
#> $lines_in_hunk
#> [1] 3
#> 
#> $final_commit_id
#> [1] "ebf70a7a8b8af0e03efb29d322fc69193378ad99"
#> 
#> $final_start_line_number
#> [1] 1635
#> 
#> $final_signature
#> name:  NicoleSanchezFlores
#> email: nsanchezflores@smith.edu
#> when:  2024-11-07 16:47:36 GMT
#> 
#> $orig_commit_id
#> [1] "ebf70a7a8b8af0e03efb29d322fc69193378ad99"
#> 
#> $orig_start_line_number
#> [1] 5
#> 
#> $orig_signature
#> name:  NicoleSanchezFlores
#> email: nsanchezflores@smith.edu
#> when:  2024-11-07 16:47:36 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
#> 
#> [[42]]
#> $lines_in_hunk
#> [1] 1
#> 
#> $final_commit_id
#> [1] "76794d324cfd0c8e1d49582ae1dba3d038547708"
#> 
#> $final_start_line_number
#> [1] 1638
#> 
#> $final_signature
#> name:  anandaw2
#> email: 113189870+anandaw2@users.noreply.github.com
#> when:  2024-12-17 19:52:01 GMT
#> 
#> $orig_commit_id
#> [1] "76794d324cfd0c8e1d49582ae1dba3d038547708"
#> 
#> $orig_start_line_number
#> [1] 73
#> 
#> $orig_signature
#> name:  anandaw2
#> email: 113189870+anandaw2@users.noreply.github.com
#> when:  2024-12-17 19:52:01 GMT
#> 
#> $orig_path
#> [1] "README.md"
#> 
#> $boundary
#> [1] FALSE
#> 
#> $repo
#> Local:    main /home/bbaumer/Dropbox/git/chchchanges
#> Remote:   main @ origin (https://github.com/beanumber/chchchanges.git)
#> Head:     [1ea6549] 2025-01-08: made it work
#> 
#> attr(,"class")
#> [1] "git_blame_hunk"
```

### Example 3

Retrieves the authors GitHub username along with commit id in order from
most last to recent

``` r
get_all_commit_shas()
#> To view the commit table interactively, use View(commits_table).
#>                  author                                      sha
#> 1            Ben Baumer 1ea654904b3e2bfef6438c010b85e0b3908c8c10
#> 2                GitHub d7551386912ddd37221ab87436aedc030110a4f1
#> 3   NicoleSanchezFlores e2a22bed06d0b31a03bcf64c481f301c89e67788
#> 4                GitHub 9f456f4b967901253524be4320bdc4d2978f4baa
#> 5               dmcam02 554cdc64227abc0f3ce0187f794a486878c14307
#> 6               dmcam02 8b6a689be3a4d3180f8380af55ab65c8dfe3744a
#> 7               dmcam02 e2486b452546cbadb3ea23ff0aea33ceaf4b4f38
#> 8                GitHub f52c2fad76ea1963f458d6975c014d17b264b652
#> 9               dmcam02 704b431d2e6980aeb68ba995f4da3a97db35417e
#> 10             anandaw2 44460078fb007099c1a15886a5fcc2f1213e6141
#> 11               GitHub c8790a52ce6ff10732f8ba41ecd73e228de43294
#> 12  NicoleSanchezFlores a046ade2c00f7e75261612f8615153e8617fa917
#> 13  NicoleSanchezFlores 5ffd9bea34d4c239dce630071d5bd8b9d26a2582
#> 14               GitHub 58e442a9ca514ea00abca1b60a99bbf23f3dc8a3
#> 15  NicoleSanchezFlores efe54b565580da1e6bc599d14bec41ba67c1bddc
#> 16               GitHub b18a6ad0b373ff421a199e5f5a4fda264530f6aa
#> 17              dmcam02 ba445f511fd02598d0ba45edc836a0b4cebb31b0
#> 18              dmcam02 f74be9fb935fac770225abcfb46466c709c60efe
#> 19               GitHub 3deb90afdf440faf24d3520577131bcdaecd71e7
#> 20  NicoleSanchezFlores eb7c1b503fb2280f56c18e7367c212b8ca1b8338
#> 21               GitHub 006b98b87600d8dd67aa9e1ec6e71c586d0dd70c
#> 22              dmcam02 9688880684f7b15740160d3709874a2ccff87c20
#> 23              dmcam02 a27d398758016b1b4e6bb3b7ea32406b7f1c60fe
#> 24              dmcam02 71e6f61efaf340d3d7d0724b2c974ec1cacd6a8e
#> 25               GitHub aaf4b7f605a207aafa14f3d5c61b3921d30d417e
#> 26             anandaw2 5f2a5c84f9867483725a80cd8a971745688527a4
#> 27             anandaw2 3ae5ae79b302b6081fddaab11f80408cd9a25468
#> 28               GitHub e94fa0d03c08808b829da1878cf7f4092785eaca
#> 29               GitHub 129da5b15710bcaddd5353da10ea6b62d700b5dd
#> 30               GitHub 76794d324cfd0c8e1d49582ae1dba3d038547708
#> 31             anandaw2 77dd87f0693448238a3f666baa4c211b2d5dcaf8
#> 32               GitHub 063d159c5025cd84250adc701bd61bd9a9ccf3eb
#> 33              dmcam02 2ac35fce893c3628dd3aec005cb79cd57de2b42b
#> 34              dmcam02 d9b0c12af4374c7ed19ec9e6b4b1564f490aca90
#> 35               GitHub 9d6c233fe4e39de99998bfc20768b1b20bcc5efb
#> 36              dmcam02 a9c42a19f9b3f86836718695298206eecc877ab1
#> 37               GitHub f4937f8ec7fe36195ca66673adbe5b46add72f4b
#> 38              dmcam02 3fc23a78acc34cc0c958a17d97c56c5710324740
#> 39               GitHub d5bae97be057a78864b158764f9decfd78ee73a0
#> 40              dmcam02 6e4c107d912d25aa45e3c9b3c13649b4ae504772
#> 41               GitHub a4bda0f527beb170dc6fd766ea78cbbd42e78aa3
#> 42               GitHub 41f9262f97118611b447494eb627a8f3ae89fd9d
#> 43              dmcam02 ea71e26a4c99409c829d17cc46dde720715fd9a7
#> 44              dmcam02 b9792592073a223b50274162c6db6df72657083e
#> 45               GitHub 601f675d5d28422fd9e80cedc9e7ae4c3eef36fd
#> 46  NicoleSanchezFlores e2830c2834ee83f09cf6083482d1b9de4be053e8
#> 47               GitHub 1b13cd194a7916d2d30e4468e293d220e07301d3
#> 48             anandaw2 6fb8ccc0550d946ed329cbac1cd25153bc573640
#> 49               GitHub adeac088e6c6eabd322f84d0c6ebe955e22be9d4
#> 50              dmcam02 c9011081bc9b1ad695b869fe0cacee5db6e2ca32
#> 51               GitHub db09fa0a6963f4b70b75463319dc78a7faa0fd81
#> 52  NicoleSanchezFlores 1630d8b5c9994a7bd764812d7c0e0a62dee5e8ae
#> 53               GitHub f4c437a69d4bff81d86dd4b71c79df464f7c5013
#> 54              dmcam02 27f1599a93b5bae820e9ac7cebf82fbbd23479a5
#> 55               GitHub 019675e1dc6990b113614bf0d869552ca1121128
#> 56              dmcam02 4b90c1af3d8ed53d2bd8e1a4db3cbf4480f1c248
#> 57     Ananda Wilkinson b0c99b3410d3585d211a1a3b80362e8f4441bbcd
#> 58               GitHub 1d815a2faa34e4c31323e37cba736d32a985ac8b
#> 59              dmcam02 adb385aab48d7b62732d83082fb6fc3530e498cb
#> 60              dmcam02 76b595d01810861fb598e830ed0b8c9853fe783d
#> 61               GitHub c6f3325430d69176519b89b5ff364dfed10cfc96
#> 62              dmcam02 3ad57109fa67e33611aa12d53c5e0bfd276378a5
#> 63              dmcam02 e50768d66390b03efb0df4f994e7f3fbad75ba01
#> 64               GitHub 16e6383d269885e8cfcc99b0861a832c2b257144
#> 65     Ananda Wilkinson 46b3030130629dfcca8a246ba8da0088281b2a8f
#> 66              dmcam02 77a59679cae1388a64fcbac3dbd8e8b921ca0350
#> 67              dmcam02 c14d97b59eb837c9b76bc68d05a4068b27c5dc79
#> 68              dmcam02 eb5e4b11b99e2613d2209867673295cd2503edec
#> 69               GitHub 15aa0821e4a8235419b35c0b351b6b9811440dd5
#> 70              dmcam02 130acc88d53e97efd089ee0477f4035f4147b4f2
#> 71               GitHub d4f7069b25c11825cda7719c1625b6cdfc87276f
#> 72              dmcam02 728ce271b5d7ebac935ef88d3977759be6b14052
#> 73               GitHub 196419ec875a58b7e5ffb0189a0b08763e382cfa
#> 74              dmcam02 9b521fdcc7e4ab82f4390a50f16a8df32ef29b1b
#> 75     Ananda Wilkinson a572e19721bf3a4ccf03f9b5ab262fdc84ce5acd
#> 76              dmcam02 f7e40e28a3d76e9ad821243d9367a3c66c61d11a
#> 77     Ananda Wilkinson 07cdc81fbed860955c4c721420ea7d95c64d3b1a
#> 78     Ananda Wilkinson 43e8342b6d2ae0fbea240819099f184e527f6a74
#> 79               GitHub 8764415027d2dff7d509f529395a35853f3e49dd
#> 80              dmcam02 04dd9b1211a15332c3a5014ec9cfaa1477af9393
#> 81               GitHub e246b832c13667afc1c4fb25defea60dd8d762c9
#> 82               GitHub 0813a1a95f68322e2f66b1717afeb77fd74cbc85
#> 83              dmcam02 69baf091aa73e9077610c283c2a437fd06f9a8b7
#> 84               GitHub 1d4f691b28148f43061dc2dd16106787c854072b
#> 85  NicoleSanchezFlores 3ad21a0d739a71852e2837eb3009befa970bb76e
#> 86  NicoleSanchezFlores f081037d9286dfe401f9d851d8b4354625b7f968
#> 87               GitHub 02d9e71dbed2fae08255e12bbc9d77712b1100d1
#> 88  NicoleSanchezFlores 225e776da1810a47d0e2a5e60a2891892d1bedc4
#> 89               GitHub da6e07061b509cd7f34cb6903b610da85b06534c
#> 90  NicoleSanchezFlores d3b727d3123fcbd3e8ddb1b1a014992550b2c22a
#> 91     Ananda Wilkinson 95878713ac545ee86ffd9103ea22c1fbbae744be
#> 92               GitHub 6f50327f9d199206480bdbe73ff8d73b4cc5a819
#> 93              dmcam02 561684ef1f3894b6a66c4a84562350e729fcfcdc
#> 94              dmcam02 44dd7a1deb91262f8d4ea5fa7ae742e248f2adec
#> 95               GitHub b020b38fd82eb9db697105ed0d9dfc1225914fa5
#> 96  NicoleSanchezFlores 10bfd34011d3e829ffd9202ada7c505c863a8f1d
#> 97               GitHub cc3d166a613cd13573db8f4f3a9bed22d3195c97
#> 98  NicoleSanchezFlores 6538f22eb21b7b5bcbe6e3e8409857897ac0eb16
#> 99  NicoleSanchezFlores 276408b8534520d3eddd99fbe2597622190ba36b
#> 100 NicoleSanchezFlores 13939fe9116856c569f3826b211a028bee94918a
#> 101              GitHub 5b2477d4f349ae1eb9bad5fba0d147e24e704b10
#> 102 NicoleSanchezFlores 53e0dfcc3e81a5644b2f24ac91dd7e4b52a51e2f
#> 103              GitHub 956496e5af008e057c56314eccf1a85991096ba1
#> 104 NicoleSanchezFlores 4e5fc1d09e6247205200c54014dfb230f94681e6
#> 105              GitHub 6bec984649429e775a05f665b124a1becd8f6e68
#> 106 NicoleSanchezFlores ebf70a7a8b8af0e03efb29d322fc69193378ad99
#> 107              GitHub 1a963edb235c0fab988f4d29a493de8d1eb7b429
#> 108 NicoleSanchezFlores 6ce64d87303bc9462727a2f9d531e408e0990842
#> 109 NicoleSanchezFlores 58472933a57bdf3998e4f3c75c589c23359d9819
#> 110             dmcam02 07c1b1b952feb5cd1092f09cd88e8433abf8b356
#> 111              GitHub 6d035e0055286d8791cefd2486645851c5a42bcf
#> 112 NicoleSanchezFlores b9a504ba631d2c95f29f3d4be20746a555ee71bd
#> 113              GitHub 348d8b0cb5dc5d7b85a4052b2183657bc92934a3
#> 114 NicoleSanchezFlores 9a409fe3deb3002eae2cb61e69b4d98ba9e447f1
#> 115              GitHub 28b9c8cdf2c603ba6d3fb4c7267523ac8e685e9e
#>                                                                                                                                                                                                                                                                                                                                     message
#> 1                                                                                                                                                                                                                                                                                                                            made it work\n
#> 2                                                                                                                                                                                                                                                                         Merge pull request #41 from NicoleSanchezFlores/nicole\n\nchanges
#> 3                                                                                                                                                                                                                                                                                                                                 changes\n
#> 4                                                                                                                                                                                                                                                                                      Merge pull request #40 from dmcam02/debora\n\nDebora
#> 5                                                                                                                                                                                                                                                                                                                                   badge\n
#> 6                                                                                                                                                                                                                                                                                                                       R-CMD-check badge\n
#> 7                                                                                                                                                                                                                                                                                                                       fixed image paths\n
#> 8                                                                                                                                                                                                                                                                Merge pull request #39 from dmcam02/debora\n\nfixed badge and added images
#> 9                                                                                                                                                                                                                                                                                                            fixed badge and added images\n
#> 10                                                                                                                                                                                                                                                                                                     Included a screenshot of the table\n
#> 11                                                                                                                                                                                                                                                                         Merge pull request #38 from NicoleSanchezFlores/nicole\n\nNicole
#> 12                                                                                                                                                                                                                                                                                                                                 change\n
#> 13                                                                                                                                                                                                                                                                                                                                 change\n
#> 14                                                                                                                                                                                                                                                                        Merge pull request #37 from NicoleSanchezFlores/nicole\n\nchanges
#> 15                                                                                                                                                                                                                                                                                                                                changes\n
#> 16                                                                                                                                                                                                                                                                                     Merge pull request #36 from dmcam02/debora\n\nDebora
#> 17                                                                                                                                                                                                                                  accepted those changes\n\nMerge branch 'debora' of https://github.com/dmcam02/chchchanges into debora\n
#> 18                                                                                                                                                                                                                                                                                                                    added some packages\n
#> 19                                                                                                                                                                                                                                                                    Merge pull request #35 from NicoleSanchezFlores/nicole\n\nnew changes
#> 20                                                                                                                                                                                                                                                                                                                            new changes\n
#> 21                                                                                                                                                                                                                                                                          Merge pull request #34 from dmcam02/debora\n\nfixed commit_line
#> 22                                                                                                                                                                                                                                                                                                                      fixed commit_line\n
#> 23                                                                                                                                                                                                                                                          new edits\n\nMerge branch 'main' of https://github.com/sds270-f24/chchchanges\n
#> 24                                                                                                                                                                                                                                                                                                                            a few edits\n
#> 25                                                                                                                                                                                                                                                                                  Merge pull request #33 from sds270-f24/ananda\n\nAnanda
#> 26                                                                                                                                                                                                                                                                                                                 Commits table was made\n
#> 27                                                                                                                                                                                                                                                                                                              Add commits_table to repo\n
#> 28                                                                                                                                                                                                                                                                                                                         Update README.md
#> 29                                                                                                                                                                                                                                                                                                                         Update README.md
#> 30                                                                                                                                                                                                                                                                                                                         Update README.md
#> 31                                                                                                                                                                                                                                                                                                                           made changes\n
#> 32                                                                                                                                                                                                                                                                                     Merge pull request #32 from dmcam02/debora\n\nDebora
#> 33                                                                                                                                                                                                                                             fixed badge\n\nMerge branch 'debora' of https://github.com/dmcam02/chchchanges into debora\n
#> 34                                                                                                                                                                                                                                                                                                                            added badge\n
#> 35                                                                                                                                                                                                                                                                                     Merge pull request #31 from dmcam02/debora\n\nDebora
#> 36                                                                                                                                                                                                                                                                                                 Fixed summary function and added badge\n
#> 37                                                                                                                                                                                                                                                                                             Merge branch 'sds270-f24:main' into debora\n
#> 38                                                                                                                                                                                                                                                                                                    deleted function.R and comments.qmd\n
#> 39                                                                                                                                                                                                                                                                                             Merge branch 'sds270-f24:main' into debora\n
#> 40                                                                                                                                                                                                                                                                                                              deleted function.R folder\n
#> 41                                                                                                                                                                                                                                                                     Merge pull request #30 from sds270-f24/ananda\n\nfixed line function
#> 42                                                                                                                                                                                                                                                                                     Merge pull request #29 from dmcam02/debora\n\nignore
#> 43                                                                                                                                                                                                                                  fixed line function\n\nMerge branch 'ananda' of https://github.com/sds270-f24/chchchanges into ananda\n
#> 44                                                                                                                                                                                                                                                                                                                                 ignore\n
#> 45                                                                                                                                                                                                                                                                      Merge pull request #27 from NicoleSanchezFlores/nicole\n\nfixed hex
#> 46                                                                                                                                                                                                                                                                                                                              fixed hex\n
#> 47                                                                                                                                                                                                                  Merge pull request #26 from sds270-f24/ananda\n\nI include message(tells us the specific commits) and produce a table …
#> 48                                                                                                                                                                                                                                                       I include message(tells us the specific commits) and produce a table using kable\n
#> 49                                                                                                                                                                                                                                                                         Merge pull request #25 from dmcam02/debora\n\nfixed files around
#> 50                                                                                                                                                                                                                                                                                                                     fixed files around\n
#> 51                                                                                                                                                                                                                                                                        Merge pull request #24 from NicoleSanchezFlores/nicole\n\nchanges
#> 52                                                                                                                                                                                                                                                                                                                                changes\n
#> 53                                                                                                                                                                                                                                                                                  Merge pull request #23 from sds270-f24/ananda\n\nAnanda
#> 54                                                                                                                                                                                                added changes from merge\n\nMerge branch 'main' of https://github.com/dmcam02/chchchanges into ananda\n\n# Conflicts:\n#\tR/functions.R\n
#> 55                                                                                                                                                                                                                                                                                     Merge pull request #22 from dmcam02/debora\n\nDebora
#> 56                                                                                                                                                                                                                                                                                                    fixed files and worked on README.md\n
#> 57                                                                                                                                                                                                                                                                                                                 I added author and sha\n
#> 58                                                                                                                                                                                                                                                                                             Merge branch 'sds270-f24:main' into debora\n
#> 59                                                                                                                                                                                                                                                                                                                           fixed layout\n
#> 60                                                                                                                                                                                                                                                                                                                            little fixs\n
#> 61                                                                                                                                                                                                                                                                                     Merge pull request #21 from dmcam02/debora\n\nDebora
#> 62                                                                                                                                                                                                  fixed merge conflict\n\nMerge branch 'debora' of https://github.com/dmcam02/chchchanges into debora\n\n# Conflicts:\n#\tR/functions.R\n
#> 63                                                                                                                                                                                                                                                                                                              fixed the author function\n
#> 64                                                                                                                                                                                                                                                         Merge pull request #20 from sds270-f24/ananda\n\nAdd a new function to find shas
#> 65                                                                                                                                                                                                                                                                                                        Add a new function to find shas\n
#> 66                                                                                                                                                                                                                                        fixed function.R\n\nMerge branch 'debora' of https://github.com/dmcam02/chchchanges into debora\n
#> 67                                                                                                                                                                                                                                                                                                                             new commit\n
#> 68                                                                                                                                                                                                                                                                                                                   added a new function\n
#> 69                                                                                                                                                                                                                                                                Merge pull request #19 from dmcam02/debora\n\nfixed the function.R folder
#> 70                                                                                                                                                                                                                                                                                                            fixed the function.R folder\n
#> 71                                                                                                                                                                                                                                                                                     Merge pull request #18 from dmcam02/debora\n\nDebora
#> 72                                                                                                                                                                                                                       changed some of the files around\n\nMerge branch 'main' of https://github.com/sds270-f24/chchchanges into debora\n
#> 73                                                                                                                                                                                                                                                                                  Merge pull request #17 from sds270-f24/ananda\n\nAnanda
#> 74                                                                                                                                                                                             changes\n\nMerge branch 'ananda' of https://github.com/sds270-f24/chchchanges into ananda\n\n# Conflicts:\n#\tComments.qmd\n#\tfunctions.R\n
#> 75                                                                                                                                                                                                                                                                                                                         Just commiting\n
#> 76  added comments\n\nMerge branch 'main' of https://github.com/sds270-f24/chchchanges into debora\n# Please enter a commit message to explain why this merge is necessary,\n# especially if it merges an updated upstream into a topic branch.\n#\n# Lines starting with '#' will be ignored, and an empty message aborts\n# the commit.\n
#> 77                                                                                                                                                                                                                                                                                                             Fix the lines with a comma\n
#> 78                                                                                                                                                                                                                                                                                                                            Saving code\n
#> 79                                                                                                                                                                                                                                           Merge pull request #16 from dmcam02/debora\n\nfixed up commit function and worked on a new one
#> 80                                                                                                                                                                                                                                                                                       fixed up commit function and worked on a new one\n
#> 81                                                                                                                                                                                                                                                                     Merge pull request #15 from dmcam02/debora\n\nfixing commit function
#> 82                                                                                                                                                                                                                                                                                                          Merge branch 'main' into debora
#> 83                                                                                                                                                                                                                                                                                                                 fixing commit function\n
#> 84                                                                                                                                                                                                                                                                         Merge pull request #13 from NicoleSanchezFlores/nicole\n\nNicole
#> 85                                                                                                                                                                                                                                                                                                                                changes\n
#> 86                                                                                                                                                                                                                                                                                                             see how extract names work\n
#> 87                                                                                                                                                                                                                                                             Merge pull request #12 from NicoleSanchezFlores/nicole\n\nfixed the function
#> 88                                                                                                                                                                                                                                                                                                                     fixed the function\n
#> 89                                                                                                                                                                                                                                                                        Merge pull request #11 from NicoleSanchezFlores/nicole\n\nchanges
#> 90                                                                                                                                                                                                                                                                                                                                changes\n
#> 91                                                                                                                                                                                                                                                                                                                          added my name\n
#> 92                                                                                                                                                                                                                                                                   Merge pull request #10 from dmcam02/debora\n\nworked on some functions
#> 93                                                                                                                                                                                                                                                                                                               worked on some functions\n
#> 94                                                                                                                                                                                                                                                                                                                                 ignore\n
#> 95                                                                                                                                                                                                                                                                            Merge pull request #8 from NicoleSanchezFlores/nicole\n\ndone
#> 96                                                                                                                                                                                                                                                                                                                                   done\n
#> 97                                                                                                                                                                                                                                                                          Merge pull request #7 from NicoleSanchezFlores/nicole\n\nNicole
#> 98                                                                                                                                                                                                                                                                                                                               function\n
#> 99                                                                                                                                                                                                                                                                                                                     really rough draft\n
#> 100                                                                                                                                                                                                                                                                                                                                 cont.\n
#> 101                                                                                                                                                                                                                                                                     Merge pull request #6 from NicoleSanchezFlores/nicole\n\ncontinuing
#> 102                                                                                                                                                                                                                                                                                                                            continuing\n
#> 103                                                                                                                                                                                                                                                                              Merge pull request #5 from NicoleSanchezFlores/main\n\nfix
#> 104                                                                                                                                                                                                                                                                                                                                   fix\n
#> 105                                                                                                                                                                                                                                                                      Merge pull request #4 from NicoleSanchezFlores/main\n\ninformation
#> 106                                                                                                                                                                                                                                                                                                                           information\n
#> 107                                                                                                                                                                                                                                                                          Merge pull request #3 from NicoleSanchezFlores/main\n\nchanges
#> 108                                                                                                                                                                                                                                                                                                                              changes?\n
#> 109                                                                                                                                                                                                                                                                                                                               changes\n
#> 110                                                                                                                                                                                                                                                                                                     Description- added name and title\n
#> 111                                                                                                                                                                                                                                                                    Merge pull request #2 from NicoleSanchezFlores/nicole\n\nDescription
#> 112                                                                                                                                                                                                                                                                                                                           Description\n
#> 113                                                                                                                                                                                                                                                                         Merge pull request #1 from NicoleSanchezFlores/main\n\ncomments
#> 114                                                                                                                                                                                                                                                                                                                                  done\n
#> 115                                                                                                                                                                                                                                                                                                                          Initial commit
```

### Example 4

Extracts the names from each hunk

``` r
extract_name("README.md")
#> [1] "Ben Baumer"          "dmcam02"             "anandaw2"           
#> [4] "NicoleSanchezFlores"
```

### Example 4

Summary of the information above

``` r
create_summary_table("README.md")
#> To view the commit table interactively, use View(commits_table).
#> # A tibble: 4 × 4
#>   author              commit_count total_hunks all_commits_SHA                  
#>   <chr>                      <int>       <int> <chr>                            
#> 1 dmcam02                       22          42 "list(\"Ben Baumer\", \"GitHub\"…
#> 2 Ben Baumer                    15          42 "list(\"Ben Baumer\", \"GitHub\"…
#> 3 NicoleSanchezFlores            3          42 "list(\"Ben Baumer\", \"GitHub\"…
#> 4 anandaw2                       2          42 "list(\"Ben Baumer\", \"GitHub\"…
```

## Developers

- [Nicole Sanchez Flores](https://github.com/NicoleSanchezFlores)
- [Debora Camacho](https://github.com/dmcam02)
- [Ananda Wilkinson](https://github.com/anandaw2)
