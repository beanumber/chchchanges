
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
#> # A tibble: 121 × 4
#>    what                                     who                 when       why  
#>    <chr>                                    <chr>               <chr>      <chr>
#>  1 e7b5e664bc8f8044a2202c5fede0eda585ba2c57 beanumber           2025-01-0… "add…
#>  2 f4ef9619dd51a18ecfc6ec8cd0296bcf2cb7a97c beanumber           2025-01-0… "tid…
#>  3 31e4ea906fbb8606deedf4389cf45a503e4bc411 Ben Baumer          2025-01-0… "pas…
#>  4 1ac1b460e652589384f176239dc58a4980941a21 Ben Baumer          2025-01-0… "onl…
#>  5 52ddff48f3bccc0f6e159f200b5f72f380f4e6ff Ben Baumer          2025-01-0… "rem…
#>  6 a3d4082c3741dc500247c1cee8b044857df6bb5c Ben Baumer          2025-01-0… "add…
#>  7 1ea654904b3e2bfef6438c010b85e0b3908c8c10 Ben Baumer          2025-01-0… "mad…
#>  8 d7551386912ddd37221ab87436aedc030110a4f1 GitHub              2024-12-1… "Mer…
#>  9 e2a22bed06d0b31a03bcf64c481f301c89e67788 NicoleSanchezFlores 2024-12-1… "cha…
#> 10 9f456f4b967901253524be4320bdc4d2978f4baa GitHub              2024-12-1… "Mer…
#> # ℹ 111 more rows
summarize_commits()
#> # A tibble: 7 × 6
#>   who              num_commits first_commit last_commit    days commits_per_week
#>   <chr>                  <int> <chr>        <chr>         <dbl>            <dbl>
#> 1 Ben Baumer                 5 2025-01-08 … 2025-01-08…  0.0241          1451.  
#> 2 beanumber                  2 2025-01-09 … 2025-01-09…  0.0377           371.  
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
#> # A tibble: 50 × 4
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
#> # ℹ 40 more rows
summarize_blame(path = "README.md")
#> # A tibble: 5 × 3
#>   who                 num_hunks num_lines
#>   <chr>                   <int>     <int>
#> 1 beanumber                  19       176
#> 2 dmcam02                    15        22
#> 3 Ben Baumer                 12        19
#> 4 NicoleSanchezFlores         3         5
#> 5 anandaw2                    1         1
```

### LLM

``` r
llm_summarize_git(
  show_prompts = TRUE, 
  user_prompt = "Also assign letter grades to each contributor."
) |>
  markdown::mark()
#> Using model = "gemini-1.5-flash".
#> System prompt: You are a friendly, supportive, college professor 
#>     evaluating student contributions to a git repository.
#> 
#> Prompt: Analyze the following data from a git repository 
#>     and tell me who deserves what credit for 
#>     contributing to the project. 
#>      Also assign letter grades to each contributor. [{"who":"Ben Baumer","num_commits":5,"first_commit":"2025-01-08 20:24:26 GMT","last_commit":"2025-01-08 20:59:10 GMT","days":0.0241,"commits_per_week":1451.0557},{"who":"beanumber","num_commits":2,"first_commit":"2025-01-09 14:00:08 GMT","last_commit":"2025-01-09 14:54:27 GMT","days":0.0377,"commits_per_week":371.1568},{"who":"GitHub","num_commits":46,"first_commit":"2024-11-05 20:49:17 GMT","last_commit":"2024-12-18 04:40:33 GMT","days":42.3273,"commits_per_week":7.6074},{"who":"dmcam02","num_commits":35,"first_commit":"2024-11-07 16:28:19 GMT","last_commit":"2024-12-18 01:04:44 GMT","days":40.3586,"commits_per_week":6.0706},{"who":"anandaw2","num_commits":5,"first_commit":"2024-12-10 05:19:14 GMT","last_commit":"2024-12-18 00:27:42 GMT","days":7.7975,"commits_per_week":4.4886},{"who":"NicoleSanchezFlores","num_commits":22,"first_commit":"2024-11-07 16:09:07 GMT","last_commit":"2024-12-18 04:39:56 GMT","days":40.5214,"commits_per_week":3.8005},{"who":"Ananda Wilkinson","num_commits":6,"first_commit":"2024-11-19 16:50:42 GMT","last_commit":"2024-12-05 17:01:51 GMT","days":16.0077,"commits_per_week":2.6237}]
```

\[1\] “
<p>
Okay, let’s analyze these contributions to the Git repository. I’ll look
at both the quantity and the <em>temporal distribution</em> of commits
to assess individual contributions. Remember, a high number of commits
clustered closely together might indicate a concentrated effort on a
specific task, while a more distributed pattern suggests sustained
engagement over a longer period.
</p>
<p>
Here’s my breakdown, including letter grades and explanations:
</p>
<p>
<strong>Top Performers:</strong>
</p>
<ul>
<li>
<p>
<strong>dmcam02 (A-):</strong> 35 commits over roughly 40 days represent
a solid, consistent contribution. The commits per week are better than
several other students. This is excellent work demonstrating dedication
and a sustained effort.
</p>
</li>
<li>
<p>
<strong>NicoleSanchezFlores (B+):</strong> 22 commits over 40 days is a
good showing, indicating consistent participation. The commits per week
show good steady work. The slightly lower grade compared to dmcam02
reflects the fewer number of commits.
</p>
</li>
</ul>
<p>
<strong>Solid Contributors:</strong>
</p>
<ul>
<li>
<p>
<strong>GitHub (B-):</strong> While contributing a high number of
commits (46), the timeframe is much longer (42 days). This suggests that
the contributions may have been less consistent than others. It is also
important to remember that these commits likely represent automated
actions rather than direct student contributions. Thus it is difficult
to evaluate.
</p>
</li>
<li>
<p>
<strong>Ben Baumer (C+):</strong> 5 commits in a very short timeframe
suggests a focused burst of activity, but lacks the sustained engagement
seen in other contributors. The high commits per week is misleading
given the short duration of activity.
</p>
</li>
<li>
<p>
<strong>beanumber (C):</strong> Similar to Ben, 2 commits over a short
period demonstrate some participation, but it’s a minimal contribution
overall.
</p>
</li>
<li>
<p>
<strong>Ananda Wilkinson (C-):</strong> 6 commits spread over 16 days is
low overall contribution. This shows some engagement but not a
significant contribution.
</p>
</li>
<li>
<p>
<strong>anandaw2 (C-):</strong> 5 commits in a little over a week shows
some engagement but not sustained engagement.
</p>
</li>
</ul>
<p>
<strong>Important Considerations:</strong>
</p>
<ul>
<li>
<strong>Code Quality:</strong> This analysis focuses solely on commit
frequency and timing. The <em>quality</em> of the code within those
commits is equally, if not more, important. A few well-crafted commits
can be significantly more impactful than many poorly written ones. A
more complete evaluation would need to consider code reviews, pull
requests and the impact of code submitted.
</li>
<li>
<strong>Collaboration:</strong> Did contributors work together
effectively? Were pull requests reviewed and merged collaboratively?
These aspects are not reflected in the commit data.
</li>
<li>
<strong>GitHub account:</strong> The “GitHub” entry likely represents
automated actions or system commits, and shouldn’t be evaluated as a
student contribution.
</li>
</ul>
<p>
<strong>Overall:</strong>
</p>
<p>
This is a good start to evaluating contributions. To enhance the
evaluation, please provide information on code quality, collaboration,
and any project-specific goals or milestones that could better weigh
individual contributions. Remember, a strong grade is not simply about
the number of commits; rather, it’s about the impact and consistent
quality of the work.
</p>

”

## Developers

- [Nicole Sanchez Flores](https://github.com/NicoleSanchezFlores)
- [Debora Camacho](https://github.com/dmcam02)
- [Ananda Wilkinson](https://github.com/anandaw2)
