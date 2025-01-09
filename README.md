
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
library(tidyverse)
library(chchchanges)
tbl_commits()
#> # A tibble: 120 × 4
#>    what                                     who                 when       why  
#>    <chr>                                    <chr>               <chr>      <chr>
#>  1 f4ef9619dd51a18ecfc6ec8cd0296bcf2cb7a97c beanumber           2025-01-0… "tid…
#>  2 31e4ea906fbb8606deedf4389cf45a503e4bc411 Ben Baumer          2025-01-0… "pas…
#>  3 1ac1b460e652589384f176239dc58a4980941a21 Ben Baumer          2025-01-0… "onl…
#>  4 52ddff48f3bccc0f6e159f200b5f72f380f4e6ff Ben Baumer          2025-01-0… "rem…
#>  5 a3d4082c3741dc500247c1cee8b044857df6bb5c Ben Baumer          2025-01-0… "add…
#>  6 1ea654904b3e2bfef6438c010b85e0b3908c8c10 Ben Baumer          2025-01-0… "mad…
#>  7 d7551386912ddd37221ab87436aedc030110a4f1 GitHub              2024-12-1… "Mer…
#>  8 e2a22bed06d0b31a03bcf64c481f301c89e67788 NicoleSanchezFlores 2024-12-1… "cha…
#>  9 9f456f4b967901253524be4320bdc4d2978f4baa GitHub              2024-12-1… "Mer…
#> 10 554cdc64227abc0f3ce0187f794a486878c14307 dmcam02             2024-12-1… "bad…
#> # ℹ 110 more rows
summarize_commits()
#> # A tibble: 7 × 6
#>   who              num_commits first_commit last_commit    days commits_per_week
#>   <chr>                  <int> <chr>        <chr>         <dbl>            <dbl>
#> 1 beanumber                  1 2025-01-09 … 2025-01-09…  0                Inf   
#> 2 Ben Baumer                 5 2025-01-08 … 2025-01-08…  0.0241          1451.  
#> 3 GitHub                    46 2024-11-05 … 2024-12-18… 42.3                7.61
#> 4 dmcam02                   35 2024-11-07 … 2024-12-18… 40.4                6.07
#> 5 anandaw2                   5 2024-12-10 … 2024-12-18…  7.80               4.49
#> 6 NicoleSanchezFl…          22 2024-11-07 … 2024-12-18… 40.5                3.80
#> 7 Ananda Wilkinson           6 2024-11-19 … 2024-12-05… 16.0                2.62
```

### Example 2

Summarize the hunks within the repository

``` r
tbl_blame(path = "README.md")
#> # A tibble: 35 × 4
#>    who        when                    how                                  lines
#>    <chr>      <chr>                   <chr>                                <int>
#>  1 Ben Baumer 2025-01-08 20:24:26 GMT 1ea654904b3e2bfef6438c010b85e0b3908…     3
#>  2 Ben Baumer 2025-01-08 20:26:58 GMT a3d4082c3741dc500247c1cee8b044857df…     1
#>  3 dmcam02    2024-12-10 02:40:39 GMT 4b90c1af3d8ed53d2bd8e1a4db3cbf4480f…     1
#>  4 dmcam02    2024-12-18 01:02:42 GMT 8b6a689be3a4d3180f8380af55ab65c8dfe…     1
#>  5 Ben Baumer 2025-01-08 20:26:58 GMT a3d4082c3741dc500247c1cee8b044857df…     2
#>  6 dmcam02    2024-12-18 01:04:44 GMT 554cdc64227abc0f3ce0187f794a486878c…     1
#>  7 dmcam02    2024-12-17 18:38:35 GMT d9b0c12af4374c7ed19ec9e6b4b1564f490…     1
#>  8 Ben Baumer 2025-01-08 20:24:26 GMT 1ea654904b3e2bfef6438c010b85e0b3908…     3
#>  9 dmcam02    2024-12-10 02:40:39 GMT 4b90c1af3d8ed53d2bd8e1a4db3cbf4480f…     1
#> 10 Ben Baumer 2025-01-08 20:24:26 GMT 1ea654904b3e2bfef6438c010b85e0b3908…     1
#> # ℹ 25 more rows
summarize_blame(path = "README.md")
#> # A tibble: 5 × 3
#>   who                 num_hunks num_lines
#>   <chr>                   <int>     <int>
#> 1 beanumber                   4        50
#> 2 dmcam02                    15        22
#> 3 Ben Baumer                 12        19
#> 4 NicoleSanchezFlores         3         5
#> 5 anandaw2                    1         1
```

### LLM

``` r
llm_summarize_git() |>
  markdown::mark()
#> Using model = "gemini-1.5-flash".
```

\[1\] “
<p>
Okay, let’s take a look at these contributions and assess the credit due
to each student. This data shows commits, which represent changes made
to the codebase. The number of commits and the time spent contributing
are key factors, but let’s consider the context. Simply counting commits
isn’t the entire story – a single commit could represent a massive
change or a small fix.
</p>
<p>
Here’s my assessment:
</p>
<p>
<strong>Top Contributors:</strong>
</p>
<ul>
<li>
<p>
<strong>dmcam02:</strong> With 35 commits over a period of roughly 40
days, dmcam02 shows consistent and substantial contribution. Their
commits per week is a good indicator of regular engagement with the
project. This suggests significant effort and a strong commitment to the
project’s success. Excellent work!
</p>
</li>
<li>
<p>
<strong>NicoleSanchezFlores:</strong> 22 commits over a similar
timeframe as dmcam02 shows good, steady contributions. While the commits
per week are slightly lower, the overall volume suggests solid
participation and deserves recognition. Keep up the good work!
</p>
</li>
</ul>
<p>
<strong>Significant Contributors:</strong>
</p>
<ul>
<li>
<p>
<strong>GitHub:</strong> The high number of commits (46) is due to the
nature of the Github account – these are likely automated or system
commits and not direct student work, so we shouldn’t consider these for
student grading purposes.
</p>
</li>
<li>
<p>
<strong>Ben Baumer:</strong> Five commits in a very short timeframe
(less than an hour) suggests concentrated effort on a specific task.
This is valuable work, even if not spread across many days.
</p>
</li>
<li>
<p>
<strong>Ananda Wilkinson:</strong> Six commits over roughly two weeks
points towards a consistent contribution, although the duration is
shorter than some others. This is a solid effort.
</p>
</li>
</ul>
<p>
<strong>Contributors Needing Further Review:</strong>
</p>
<ul>
<li>
<p>
<strong>anandaw2:</strong> Five commits over a week indicate some
involvement, but the time period is shorter and the number of commits
fewer than other contributors. We might want to look into the nature of
those commits to better understand their significance to the overall
project.
</p>
</li>
<li>
<p>
<strong>beanumber:</strong> Only one commit makes it difficult to assess
their contribution meaningfully. Was this commit a large change or a
minor edit? More information is needed to accurately assess their
contribution.
</p>
</li>
</ul>
<p>
<strong>Grading Considerations:</strong>
</p>
<p>
To assign grades fairly, I suggest we need more information. Consider
the following:
</p>
<ul>
<li>
<strong>Code Quality:</strong> The <em>number</em> of commits isn’t
everything. Well-written, well-documented, and well-tested code should
carry more weight than a large number of poorly written commits.
</li>
<li>
<strong>Project Scope:</strong> The size and complexity of the tasks
undertaken should also influence grading. A single commit addressing a
complex bug should carry more weight than several simple, unrelated
changes.
</li>
<li>
<strong>Collaboration:</strong> Did students work together on certain
parts of the project? If so, how do we allocate credit appropriately?
</li>
</ul>
<p>
I strongly recommend that we review the actual code changes in addition
to this commit data to make a truly informed assessment of each
student’s contribution. A simple commit count is a useful starting
point, but it’s not sufficient for a comprehensive evaluation.
</p>

”

## Developers

- [Nicole Sanchez Flores](https://github.com/NicoleSanchezFlores)
- [Debora Camacho](https://github.com/dmcam02)
- [Ananda Wilkinson](https://github.com/anandaw2)
