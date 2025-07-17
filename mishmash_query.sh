#!/bin/bash

# After installing MISHMASH and its dependencies

## Assess sequence availability in various lists of publications
for case_study in cs1 cs2 cs3 ofs; do
  mishmash assess_sequences \
    --pmc_input_file data/id_lists/${case_study}_pmc_query.txt \
    --output_file ${case_study}_seq_output.csv
done

## Assess metadata availability in Case Study 1
mishmash assess_metadata \
  --email email@domain.com \
  --accession_input_file data/id_lists/cs1_insdc_query.txt \
  --output_file cs1_md_output.csv
