library(tidyverse)
library(blsR)



# CPI-U-NSA from BLS
get_series_table("CUUR0000SA0", BLS_API_KEY, start_year = 1937, end_year = 2022) %>% 
  select(year, period, value) %>% 
  write_csv("cpi_u_nsa.csv")

# CPI-U-SA from BLS
get_series_table("CUSR0000SA0", BLS_API_KEY, start_year = 1947, end_year = 2022) %>% 
  select(year, period, value) %>% 
  write_csv("cpi_u_sa.csv")

# CPI-U-X1 from Economic Report of the President, 2011, Table B-62
# https://www.govinfo.gov/content/pkg/ERP-2011/pdf/ERP-2011-table62.pdf
# hand-entered into cpi_u_x1.csv

# CPI-U-RS from BLS
# https://www.bls.gov/cpi/research-series/r-cpi-u-rs-home.htm
# https://www.bls.gov/cpi/research-series/r-cpi-u-rs-allitems.xlsx
# hand-converted to r-cpi-u-rs-allitems.csv

