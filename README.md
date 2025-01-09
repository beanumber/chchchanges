
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
#> # A tibble: 122 × 4
#>    what                                     who                      when  why  
#>    <chr>                                    <chr>                    <chr> <chr>
#>  1 1a18d915ea09bf94f35352b0765ae19e39f921da ben.baumer@gmail.com     2025… "sho…
#>  2 e7b5e664bc8f8044a2202c5fede0eda585ba2c57 ben.baumer@gmail.com     2025… "add…
#>  3 f4ef9619dd51a18ecfc6ec8cd0296bcf2cb7a97c ben.baumer@gmail.com     2025… "tid…
#>  4 31e4ea906fbb8606deedf4389cf45a503e4bc411 ben.baumer@gmail.com     2025… "pas…
#>  5 1ac1b460e652589384f176239dc58a4980941a21 ben.baumer@gmail.com     2025… "onl…
#>  6 52ddff48f3bccc0f6e159f200b5f72f380f4e6ff ben.baumer@gmail.com     2025… "rem…
#>  7 a3d4082c3741dc500247c1cee8b044857df6bb5c ben.baumer@gmail.com     2025… "add…
#>  8 1ea654904b3e2bfef6438c010b85e0b3908c8c10 ben.baumer@gmail.com     2025… "mad…
#>  9 d7551386912ddd37221ab87436aedc030110a4f1 noreply@github.com       2024… "Mer…
#> 10 e2a22bed06d0b31a03bcf64c481f301c89e67788 nsanchezflores@smith.edu 2024… "cha…
#> # ℹ 112 more rows
summarize_commits()
#> # A tibble: 5 × 6
#>   who               num_commits first_commit last_commit   days commits_per_week
#>   <chr>                   <int> <chr>        <chr>        <dbl>            <dbl>
#> 1 ben.baumer@gmail…           8 2025-01-08 … 2025-01-09…  0.787            71.2 
#> 2 dcamacho@smith.e…          35 2024-11-07 … 2024-12-18… 40.4               6.07
#> 3 113189870+ananda…           5 2024-12-10 … 2024-12-18…  7.80              4.49
#> 4 nsanchezflores@s…          22 2024-11-07 … 2024-12-18… 40.5               3.80
#> 5 awilkinson@smith…           6 2024-11-19 … 2024-12-05… 16.0               2.62
```

### Example 2

Summarize the hunks within the repository

``` r
tbl_blame(path = "README.md")
#> # A tibble: 89 × 4
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
#> # ℹ 79 more rows
summarize_blame(path = "README.md")
#> # A tibble: 5 × 3
#>   who                 num_hunks num_lines
#>   <chr>                   <int>     <int>
#> 1 beanumber                  58       183
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
#>      Also assign letter grades to each contributor. [{"who":"ben.baumer@gmail.com","num_commits":8,"first_commit":"2025-01-08 20:24:26 GMT","last_commit":"2025-01-09 15:17:09 GMT","days":0.7866,"commits_per_week":71.1917},{"who":"dcamacho@smith.edu","num_commits":35,"first_commit":"2024-11-07 16:28:19 GMT","last_commit":"2024-12-18 01:04:44 GMT","days":40.3586,"commits_per_week":6.0706},{"who":"113189870+anandaw2@users.noreply.github.com","num_commits":5,"first_commit":"2024-12-10 05:19:14 GMT","last_commit":"2024-12-18 00:27:42 GMT","days":7.7975,"commits_per_week":4.4886},{"who":"nsanchezflores@smith.edu","num_commits":22,"first_commit":"2024-11-07 16:09:07 GMT","last_commit":"2024-12-18 04:39:56 GMT","days":40.5214,"commits_per_week":3.8005},{"who":"awilkinson@smith.edu","num_commits":6,"first_commit":"2024-11-19 16:50:42 GMT","last_commit":"2024-12-05 17:01:51 GMT","days":16.0077,"commits_per_week":2.6237}]
```

\[1\] “
<p>
Okay, let’s analyze the contributions to the Git repository. I’m going
to look at both the quantity and the <em>consistency</em> of commits to
assess the effort each student put in. Remember, grades aren’t just
about the total number of commits but also the sustained effort over
time.
</p>
<p>
<strong>Analysis of Contributions:</strong>
</p>
<ul>
<li>
<p>
<strong><a href=\"mailto:ben.baumer@gmail.com\">ben.baumer@gmail.com</a>:</strong>
Ben made a significant number of commits (8) in a very short time frame
(less than a day!). This suggests a concentrated burst of activity.
While impressive in its intensity, it lacks the sustained engagement
seen in other contributions.
</p>
</li>
<li>
<p>
<strong><a href=\"mailto:dcamacho@smith.edu\">dcamacho@smith.edu</a>:</strong>
Daniel made a substantial number of commits (35) over a longer period.
His commits per week are higher than others, showing consistent
engagement with the project. This demonstrates sustained effort and a
strong commitment.
</p>
</li>
<li>
<p>
<strong><a href=\"mailto:113189870+anandaw2@users.noreply.github.com\">113189870+anandaw2@users.noreply.github.com</a>:</strong>
Anand’s contribution (5 commits) is smaller in terms of sheer number,
but the short timeframe suggests concentrated work. It’s less
substantial than Daniel’s or even Ben’s in terms of impact.
</p>
</li>
<li>
<p>
<strong><a href=\"mailto:nsanchezflores@smith.edu\">nsanchezflores@smith.edu</a>:</strong>
Natalia’s contribution (22 commits) is substantial, showing consistent
effort over the period. Her commits per week are a bit lower than
Daniel’s but still indicate regular participation.
</p>
</li>
<li>
<p>
<strong><a href=\"mailto:awilkinson@smith.edu\">awilkinson@smith.edu</a>:</strong>
Alex’s contribution (6 commits) is relatively small and spread over a
longer time. While this indicates consistent effort, the smaller number
of commits indicates a less significant contribution overall.
</p>
</li>
</ul>
<p>
<strong>Grade Assignment and Rationale:</strong>
</p>
<p>
Grading is subjective, and I’m basing this on the information provided,
assuming all commits were equally valuable to the project.
</p>
<ul>
<li>
<p>
<strong><a href=\"mailto:dcamacho@smith.edu\">dcamacho@smith.edu</a>
(Daniel): A-</strong> Daniel’s consistent, high volume of commits over a
longer period demonstrates exceptional dedication and significant
contribution to the project.
</p>
</li>
<li>
<p>
<strong><a href=\"mailto:ben.baumer@gmail.com\">ben.baumer@gmail.com</a>
(Ben): B+</strong> Ben’s concentrated effort resulted in a substantial
number of commits in a short time. However, the lack of sustained
engagement slightly reduces the grade.
</p>
</li>
<li>
<p>
<strong><a href=\"mailto:nsanchezflores@smith.edu\">nsanchezflores@smith.edu</a>
(Natalia): B</strong> Natalia shows consistent effort with a good number
of commits, showing reliable participation and a valuable contribution.
</p>
</li>
<li>
<p>
<strong><a href=\"mailto:113189870+anandaw2@users.noreply.github.com\">113189870+anandaw2@users.noreply.github.com</a>
(Anand): C+</strong> Anand’s contribution, while concentrated, is
smaller in volume than others, resulting in a lower grade. However, it
was still a positive and visible contribution.
</p>
</li>
<li>
<p>
<strong><a href=\"mailto:awilkinson@smith.edu\">awilkinson@smith.edu</a>
(Alex): C</strong> Alex’s participation, while consistent, involved a
smaller number of commits than others. This suggests engagement but a
less significant contribution compared to classmates.
</p>
</li>
</ul>
<p>
<strong>Important Note:</strong> This grading is based solely on the
provided Git data. Code quality, the impact of individual commits, and
other qualitative factors (like code reviews and teamwork) are not
considered here and could influence the final grades. I strongly
encourage you to consider these aspects as well when evaluating your
students’ contributions.
</p>

”

## Developers

- [Nicole Sanchez Flores](https://github.com/NicoleSanchezFlores)
- [Debora Camacho](https://github.com/dmcam02)
- [Ananda Wilkinson](https://github.com/anandaw2)
