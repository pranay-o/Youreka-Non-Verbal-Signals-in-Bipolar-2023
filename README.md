# Youreka-Non-Verbal-Signals-in-Bipolar-2023

## Description
This repository contains R code for statistical tests and analyses performed on a dataset. The code utilizes various packages, including `tidyverse`, `ggsignif`, `dplyr`, and `car`, to conduct exploratory data analysis and hypothesis testing.

## Usage
1. Install the required R packages mentioned in the code (e.g., tidyverse, ggsignif, dplyr, car).
2. Ensure that the dataset (`Youreka_Raw_Dataset`) is available in the R environment.
3. Execute the provided code in an R environment (e.g., RStudio) to perform the following analyses:

    - Histogram of the variable `RightAnswers`.
    - Levene's test to assess equality of variances between groups based on the variable `Sex`.
    - Shapiro-Wilk test to check the normality assumption for the variable `RightAnswers`.
    - One-way ANOVA to examine the effect of the variable `Type` on `RightAnswers`.
    - Tukey's HSD post hoc test for pairwise comparisons in the one-way ANOVA.
    - T-test comparing `RightAnswers` for males against a hypothesized mean of 24.
    - Various tests (Levene's test, Shapiro-Wilk test, Kruskal-Wallis test) for different variables (`AudioProsody`, `CombinedChannel`, `FaceVideo`, `BodyVideo`, `PositiveValence`, `NegativeValence`, `Dominant`, `Submissive`) stratified by `Sex`.

## Data
The code assumes the existence of a dataset named `Youreka_Raw_Dataset`. Ensure that the dataset is available or modify the code to use your own dataset.

## Dependencies
The code relies on the following R packages:
- tidyverse
- ggsignif
- dplyr
- car

Ensure that these packages are installed before running the code.
