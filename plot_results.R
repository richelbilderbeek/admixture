remotes::install_github("royfrancis/pophelper")

list.files()
q <- pophelper::readQ("hapmap3.3.Q")
pophelper::plotQ(q, exportpath = getwd())
hapmap3.3.Q.png


pophelper::read
p <- pophelper::readP("hapmap3.3.P")
# 