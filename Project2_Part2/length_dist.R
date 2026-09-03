library(ggplot2)
library(dplyr)

setwd("/projects/bgmp/lxy/bioinfo/Bi623/Project-2-Electric-organ-RNA-seq-analysis/Project2_Part2")

A1 = read.table("tsv/SRR25630373_1.tsv", col.names = c("Frequency", "Length"))
A2 = read.table("tsv/SRR25630373_2.tsv", col.names = c("Frequency", "Length"))

B1 = read.table("tsv/SRR25630374_1.tsv", col.names = c("Frequency", "Length"))
B2 = read.table("tsv/SRR25630374_2.tsv", col.names = c("Frequency", "Length"))

A = bind_rows("R1" = A1, "R2" = A2, .id = "Read")

ggplot(A, aes(x = Length, y = log(Frequency), color = Read)) +
  geom_point() +
  labs(
    x = "Read Length",
    title = "Sequence Length Distribution (Cco_com12_SM_adult_1)"
  ) +
  scale_color_manual(values = c("R1" = "darkseagreen", "R2" = "pink")) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5))

ggsave("Cco_com12_SM_adult_1_Plot", device = "png", width = 8, height = 5)

B = bind_rows("R1" = B1, "R2" = B2, .id = "Read")

ggplot(B, aes(x = Length, y = log(Frequency), color = Read)) +
  geom_point() +
  labs(
    x = "Read Length",
    title = "Sequence Length Distrbution (Cco_com12_SM_adult_2)"
  ) +
  scale_color_manual(values = c("R1" = "darkseagreen", "R2" = "pink")) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5))
