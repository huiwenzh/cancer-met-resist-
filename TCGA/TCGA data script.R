library(RTCGAToolbox)
getFirehoseDatasets()
# ESCA - melanoma 
library(TCGAbiolinks)
GDCprojects = getGDCprojects()
query_TCGA = GDCquery(
  project = "TCGA-UVM",
  data.category = "Transcriptome Profiling", # parameter enforced by GDCquery
  experimental.strategy = "RNA-Seq",
  workflow.type = "HTSeq - Counts")
 
# Keep primary normal, primary tumour, metastasis site, recurrent tumour
GDCdownload(query = query_TCGA)

tcga_data = GDCprepare(query_TCGA)


