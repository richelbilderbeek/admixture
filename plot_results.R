pophelper::plotQ(
  pophelper::readQ("hapmap3_block.3.Q"), 
  exportpath = getwd()
)
pophelper::plotQ(
  pophelper::readQ("hapmap3_em.3.Q"), 
  exportpath = getwd()
)

p_block <- list()
p_block$hapmap3_block.3.P <- readr::read_delim(
  "hapmap3_block.3.P", 
  show_col_types = FALSE,
  col_names = c("Cluster1", "Cluster2", "Cluster3")
)
pophelper::plotQ(p_block, exportpath = getwd())

p_em <- list()
p_em$hapmap3_em.3.P <- readr::read_delim(
  "hapmap3_em.3.P", 
  show_col_types = FALSE,
  col_names = c("Cluster1", "Cluster2", "Cluster3")
)
pophelper::plotQ(p_em, exportpath = getwd())
