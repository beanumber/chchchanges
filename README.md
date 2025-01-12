
<!-- README.md is generated from README.Rmd. Please edit that file -->

# chchchanges <img src="man/figures/logo.png" align="right" height="139" alt="" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/beanumber/chchchanges/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/beanumber/chchchanges/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The purpose of this package is to break down the commits history between
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
#> # A tibble: 124 × 4
#>    what                                     who                  when      why  
#>    <chr>                                    <chr>                <chr>     <chr>
#>  1 f4a925c7c505f9367b594375dbf004b82f66a1c6 ben.baumer@gmail.com 2025-01-… "add…
#>  2 d49b12efecb3c578c6927ef2041eda85bac854b6 ben.baumer@gmail.com 2025-01-… "gro…
#>  3 1a18d915ea09bf94f35352b0765ae19e39f921da ben.baumer@gmail.com 2025-01-… "sho…
#>  4 e7b5e664bc8f8044a2202c5fede0eda585ba2c57 ben.baumer@gmail.com 2025-01-… "add…
#>  5 f4ef9619dd51a18ecfc6ec8cd0296bcf2cb7a97c ben.baumer@gmail.com 2025-01-… "tid…
#>  6 31e4ea906fbb8606deedf4389cf45a503e4bc411 ben.baumer@gmail.com 2025-01-… "pas…
#>  7 1ac1b460e652589384f176239dc58a4980941a21 ben.baumer@gmail.com 2025-01-… "onl…
#>  8 52ddff48f3bccc0f6e159f200b5f72f380f4e6ff ben.baumer@gmail.com 2025-01-… "rem…
#>  9 a3d4082c3741dc500247c1cee8b044857df6bb5c ben.baumer@gmail.com 2025-01-… "add…
#> 10 1ea654904b3e2bfef6438c010b85e0b3908c8c10 ben.baumer@gmail.com 2025-01-… "mad…
#> # ℹ 114 more rows
summarize_commits()
#> # A tibble: 5 × 6
#>   who                num_commits first_commit last_commit  days commits_per_week
#>   <chr>                    <int> <chr>        <chr>       <dbl>            <dbl>
#> 1 ben.baumer@gmail.…          10 2025-01-08 … 2025-01-12…  3.83            18.3 
#> 2 dcamacho@smith.edu          35 2024-11-07 … 2024-12-18… 40.4              6.07
#> 3 113189870+anandaw…           5 2024-12-10 … 2024-12-18…  7.80             4.49
#> 4 nsanchezflores@sm…          22 2024-11-07 … 2024-12-18… 40.5              3.80
#> 5 awilkinson@smith.…           6 2024-11-19 … 2024-12-05… 16.0              2.62
```

### Example 2

Summarize the hunks within the repository

``` r
tbl_blame(path = "README.md")
#> # A tibble: 87 × 4
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
#> # ℹ 77 more rows
summarize_blame(path = "README.md")
#> # A tibble: 5 × 3
#>   who                 num_hunks num_lines
#>   <chr>                   <int>     <int>
#> 1 Ben Baumer                 34       112
#> 2 beanumber                  34        89
#> 3 dmcam02                    15        22
#> 4 NicoleSanchezFlores         3         5
#> 5 anandaw2                    1         1
```

### LLM

``` r
summarize_git_with_llm(
  show_prompts = TRUE, 
  user_prompt = "Also assign letter grades to each contributor. Note that GitHub user 'anandaw2' uses the email address 'awilkinson@smith.edu."
) |>
  markdown::mark()
#> Using model = "gemini-1.5-flash".
#> System prompt: You are a friendly, supportive, college professor 
#>     evaluating student contributions to a git repository.
#> 
#> Prompt: Analyze the following data from a git repository 
#>     and tell me who deserves what credit for 
#>     contributing to the project. 
#>      Also assign letter grades to each contributor. Note that GitHub user 'anandaw2' uses the email address 'awilkinson@smith.edu. [{"who":"ben.baumer@gmail.com","num_commits":10,"first_commit":"2025-01-08 20:24:26 GMT","last_commit":"2025-01-12 16:26:47 GMT","days":3.835,"commits_per_week":18.2531},{"who":"dcamacho@smith.edu","num_commits":35,"first_commit":"2024-11-07 16:28:19 GMT","last_commit":"2024-12-18 01:04:44 GMT","days":40.3586,"commits_per_week":6.0706},{"who":"113189870+anandaw2@users.noreply.github.com","num_commits":5,"first_commit":"2024-12-10 05:19:14 GMT","last_commit":"2024-12-18 00:27:42 GMT","days":7.7975,"commits_per_week":4.4886},{"who":"nsanchezflores@smith.edu","num_commits":22,"first_commit":"2024-11-07 16:09:07 GMT","last_commit":"2024-12-18 04:39:56 GMT","days":40.5214,"commits_per_week":3.8005},{"who":"awilkinson@smith.edu","num_commits":6,"first_commit":"2024-11-19 16:50:42 GMT","last_commit":"2024-12-05 17:01:51 GMT","days":16.0077,"commits_per_week":2.6237}]
```

\[1\] “
<p>
Okay, let’s analyze these contributions and assign grades. I’ll consider
the number of commits, the duration of activity, and the commits per
week to get a holistic view of each student’s involvement. Remember that
grades reflect effort and contribution to the project, not just raw
numbers.
</p>
<p>
Here’s my assessment:
</p>
<p>
<strong>Student 1:
<a href=\"mailto:ben.baumer@gmail.com\">ben.baumer@gmail.com</a></strong>
</p>
<ul>
<li>
<p>
<strong>Commits:</strong> 10
</p>
</li>
<li>
<p>
<strong>Duration:</strong> 3.8 days
</p>
</li>
<li>
<p>
<strong>Commits/Week:</strong> 18.25
</p>
</li>
<li>
<p>
<strong>Analysis:</strong> Ben made a significant number of commits in a
very short period. This suggests intense, focused work. While the
overall number is lower than some others, the intensity is impressive.
</p>
</li>
<li>
<p>
<strong>Grade:</strong> A- (Excellent work, albeit a short burst of
activity.)
</p>
</li>
</ul>
<p>
<strong>Student 2:
<a href=\"mailto:dcamacho@smith.edu\">dcamacho@smith.edu</a></strong>
</p>
<ul>
<li>
<p>
<strong>Commits:</strong> 35
</p>
</li>
<li>
<p>
<strong>Duration:</strong> 40.3 days
</p>
</li>
<li>
<p>
<strong>Commits/Week:</strong> 6.07
</p>
</li>
<li>
<p>
<strong>Analysis:</strong> Diana made a substantial number of commits
over a longer period. The commits per week show consistent engagement.
This demonstrates sustained effort and dedication.
</p>
</li>
<li>
<p>
<strong>Grade:</strong> A (Excellent and consistent contribution.)
</p>
</li>
</ul>
<p>
<strong>Student 3: anandaw2
(<a href=\"mailto:anandaw2@users.noreply.github.com\">anandaw2@users.noreply.github.com</a>
/
<a href=\"mailto:awilkinson@smith.edu\">awilkinson@smith.edu</a>)</strong>
</p>
<ul>
<li>
<p>
<strong>Commits:</strong> 5 (GitHub) + 6 (email) = 11 total
</p>
</li>
<li>
<p>
<strong>Duration:</strong> GitHub: 7.8 days; Email: 16 days
</p>
</li>
<li>
<p>
<strong>Commits/Week:</strong> GitHub: 4.49; Email: 2.62
</p>
</li>
<li>
<p>
<strong>Analysis:</strong> Anand’s contributions are split between two
accounts, suggesting a possible oversight or change of accounts.
Combining both, their overall contribution is respectable, though the
rate is less consistent than Diana’s. The different email address needs
clarification. It is possible these are two different people with the
same GitHub username.
</p>
</li>
<li>
<p>
<strong>Grade:</strong> B+ (Good contribution, needs to clarify account
usage to fully assess.)
</p>
</li>
</ul>
<p>
<strong>Student 4:
<a href=\"mailto:nsanchezflores@smith.edu\">nsanchezflores@smith.edu</a></strong>
</p>
<ul>
<li>
<p>
<strong>Commits:</strong> 22
</p>
</li>
<li>
<p>
<strong>Duration:</strong> 40.5 days
</p>
</li>
<li>
<p>
<strong>Commits/Week:</strong> 3.8
</p>
</li>
<li>
<p>
<strong>Analysis:</strong> Natalia’s contribution shows consistent,
steady work over a longer period. The number of commits is good but the
rate per week is lower than Diana’s.
</p>
</li>
<li>
<p>
<strong>Grade:</strong> B (Solid and consistent effort.)
</p>
</li>
</ul>
<p>
<strong>Student 5:
<a href=\"mailto:awilkinson@smith.edu\">awilkinson@smith.edu</a></strong>
</p>
<ul>
<li>
<p>
<strong>Commits:</strong> 6
</p>
</li>
<li>
<p>
<strong>Duration:</strong> 16 days
</p>
</li>
<li>
<p>
<strong>Commits/Week:</strong> 2.62
</p>
</li>
<li>
<p>
<strong>Analysis:</strong> This is likely a duplicate of Anand’s
contribution, given the overlap with the GitHub account. If these are
two separate individuals, this would indicate a lower level of
commitment than others.
</p>
</li>
<li>
<p>
<strong>Grade:</strong> C+ (If separate from Anand, a satisfactory level
of work but below the average.)
</p>
</li>
</ul>
<p>
<strong>Important Note:</strong> The grade assignment relies heavily on
the provided data. A more comprehensive evaluation would benefit from
examining the <em>quality</em> of the commits (e.g., code reviews, bug
fixes, feature implementations) and the overall impact on the project’s
success. The apparent duplicate accounts for Anand also need
clarification. A conversation with Anand would help fully resolve the
credit assignment. I recommend reaching out to clarify this ambiguity.
</p>

”

## Developers

- [Nicole Sanchez Flores](https://github.com/NicoleSanchezFlores)
- [Debora Camacho](https://github.com/dmcam02)
- [Ananda Wilkinson](https://github.com/anandaw2)
