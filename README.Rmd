# MISHMASH Manuscript Code

Code underlying figures and analysis for: Kim, L., Lavrinienko, A., Sebechlebska, Z., Stoltenberg, S., Bokulich, N. A. (2025).

Directory structure:
```
/
|-- fig2.py
|-- figures.Rmd
|-- mishmash_query.sh
|-- data/
    |-- fungi_publisher_count.csv
    |-- fungi_year_count.csv
    |-- md_h1_2024.csv
    |-- ofs_db_df.csv
    |-- id_lists/
        |-- cs1_insdc_query.txt
        |-- cs1_pmc_query.txt
        |-- cs2_pmc_query.txt
        |-- cs3_pmc_query.txt
        |-- ofs_pmc_query.txt
```

File composition:
* `fig2.py`: Code to generate Figure 2
* `figures.Rmd`: Code to generate Figures 3 and 4, Supplementary Figures 4 and 5
* `data/*.csv`: Data to generate Figures 2-4 and Supplementary Figures 4 and 5
* `data/id_lists/*.txt`: ID inputs to generate data for Case Studies 1-3 and the Open Field Survey
