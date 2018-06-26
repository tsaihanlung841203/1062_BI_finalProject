ff <- list.files(path = "./counts", pattern = "*.txt$", full.names = TRUE)
counts.files <- lapply( ff, read.table, skip = 4 )
counts <- as.data.frame( sapply( counts.files, function(x) x[ , 2 ] ) )
ff <- gsub( "[.]ReadsPerGene[.]out[.]tab", "", ff )
ff <- gsub( "[.]/counts/", "", ff )
colnames(counts) <- ff
row.names(counts) <- counts.files[[1]]$V1
#Depending on the strandedness of you library, number may be 2,3 or 4.
#names(pasCts)<-c("","dsec_2772","dsec_2773")

write.table(counts, file='merge_7.tsv', quote=FALSE, sep='\t', col.names = NA)


library("DESeq2")
#gene_id add

################################ 12
cts <- as.matrix(read.csv("merge_12.tsv",sep="\t",row.names="gene_id"))
table2 <- data.frame(name = c("dsec_2772_tw_M.txt","dsec_2773_tw_M.txt","dsec_2774_tw_M.txt","dsec_2775_tw_F.txt","dsec_2776_tw_F.txt","dsec_2777_tw_F.txt","dsec_3486_jp_M.txt","dsec_3487_jp_M.txt", "dsec_3488_jp_M.txt","dsec_3489_jp_F.txt","dsec_3490_jp_F.txt","dsec_3491_jp_F.txt"),condition=c("dsec_tw","dsec_tw","dsec_tw","dsec_tw","dsec_tw","dsec_tw","dsec_jp","dsec_jp","dsec_jp","dsec_jp","dsec_jp","dsec_jp"))
dds <- DESeqDataSetFromMatrix(countData = cts, colData=table2, design= ~ condition)
################################ Ir
cts <- as.matrix(read.csv("merge_Ir.tsv",sep="\t",row.names="gene_id"))
table2 <- data.frame(name = c("dsec_2772_tw_M_Ir.txt","dsec_2773_tw_M_Ir.txt","dsec_2774_tw_M_Ir.txt","dsec_2775_tw_F_Ir.txt","dsec_2776_tw_F_Ir.txt","dsec_2777_tw_F_Ir.txt","dsec_3486_jp_M_Ir.txt","dsec_3487_jp_M_Ir.txt", "dsec_3488_jp_M_Ir.txt","dsec_3489_jp_F_Ir.txt","dsec_3490_jp_F_Ir.txt","dsec_3491_jp_F_Ir.txt","dsim_3492_M_Ir.txt","dsim_3493_M_Ir.txt","dsim_3494_M_Ir.txt","dsim_3496_F_Ir.txt","dsim_3497_F_Ir.txt"),condition=c("dsec_tw","dsec_tw","dsec_tw","dsec_tw","dsec_tw","dsec_tw","dsec_jp","dsec_jp","dsec_jp","dsec_jp","dsec_jp","dsec_jp","dsim","dsim","dsim","dsim","dsim"))
dds <- DESeqDataSetFromMatrix(countData = cts, colData=table2, design= ~ condition)
################################ Obp 12
cts <- as.matrix(read.csv("merge_12_Obp.tsv",sep="\t",row.names="gene_id"))
table2 <- data.frame(name = c("dsec_2772_tw_M_Obp.txt","dsec_2773_tw_M_Obp.txt","dsec_2774_tw_M_Obp.txt","dsec_2775_tw_F_Obp.txt","dsec_2776_tw_F_Obp.txt","dsec_2777_tw_F_Obp.txt","dsec_3486_jp_M_Obp.txt","dsec_3487_jp_M_Obp.txt", "dsec_3488_jp_M_Obp.txt","dsec_3489_jp_F_Obp.txt","dsec_3490_jp_F_Obp.txt","dsec_3491_jp_F_Obp.txt"),condition=c("dsec_tw","dsec_tw","dsec_tw","dsec_tw","dsec_tw","dsec_tw","dsec_jp","dsec_jp","dsec_jp","dsec_jp","dsec_jp","dsec_jp"))
dds <- DESeqDataSetFromMatrix(countData = cts, colData=table2, design= ~ condition)
################################ Ir 12
cts <- as.matrix(read.csv("merge_12_Ir.tsv",sep="\t",row.names="gene_id"))
table2 <- data.frame(name = c("dsec_2772_tw_M_Ir.txt","dsec_2773_tw_M_Ir.txt","dsec_2774_tw_M_Ir.txt","dsec_2775_tw_F_Ir.txt","dsec_2776_tw_F_Ir.txt","dsec_2777_tw_F_Ir.txt","dsec_3486_jp_M_Ir.txt","dsec_3487_jp_M_Ir.txt", "dsec_3488_jp_M_Ir.txt","dsec_3489_jp_F_Ir.txt","dsec_3490_jp_F_Ir.txt","dsec_3491_jp_F_Ir.txt"),condition=c("dsec_tw","dsec_tw","dsec_tw","dsec_tw","dsec_tw","dsec_tw","dsec_jp","dsec_jp","dsec_jp","dsec_jp","dsec_jp","dsec_jp"))
dds <- DESeqDataSetFromMatrix(countData = cts, colData=table2, design= ~ condition)
################################ Or
cts <- as.matrix(read.csv("merge_Or.tsv",sep="\t",row.names="gene_id"))
table2 <- data.frame(name = c("dsec_2772_tw_M_Or.txt","dsec_2773_tw_M_Or.txt","dsec_2774_tw_M_Or.txt","dsec_2775_tw_F_Or.txt","dsec_2776_tw_F_Or.txt","dsec_2777_tw_F_Or.txt", "dsec_3488_jp_M_Or.txt","dsec_3489_jp_F_Or.txt","dsec_3490_jp_F_Or.txt","dsec_3491_jp_F_Or.txt","dsim_3492_M_Or.txt","dsim_3493_M_Or.txt","dsim_3494_M_Or.txt","dsim_3496_F_Or.txt","dsim_3497_F_Or.txt"),condition=c("dsec","dsec","dsec","dsec","dsec","dsec","dsec","dsec","dsec","dsec","dsim","dsim","dsim","dsim","dsim"))
dds <- DESeqDataSetFromMatrix(countData = cts, colData=table2, design= ~ condition)
################################ Or_12
cts <- as.matrix(read.csv("merge_12_Or.tsv",sep="\t",row.names="gene_id"))
table2 <- data.frame(name = c("dsec_2772_tw_M_Or.txt","dsec_2773_tw_M_Or.txt","dsec_2774_tw_M_Or.txt","dsec_2775_tw_F_Or.txt","dsec_2776_tw_F_Or.txt","dsec_2777_tw_F_Or.txt", "dsec_3488_jp_M_Or.txt","dsec_3489_jp_F_Or.txt","dsec_3490_jp_F_Or.txt","dsec_3491_jp_F_Or.txt"),condition=c("dsec_tw","dsec_tw","dsec_tw","dsec_tw","dsec_tw","dsec_tw","dsec_jp","dsec_jp","dsec_jp","dsec_jp"))
dds <- DESeqDataSetFromMatrix(countData = cts, colData=table2, design= ~ condition)
###############################

dds <- DESeq(dds)
res <- results(dds)
res
write.table(res, file='result.tsv', quote=FALSE, sep='\t', col.names = NA)


######## draw  install.packages("pheatmap")

num <- sum(res$padj < 0.1, na.rm=TRUE)

library("pheatmap")
select <- order(rowMeans(counts(dds,normalized=TRUE)),decreasing=TRUE)[1:num]
nt <- normTransform(dds) # defaults to log2(x+1)
log2.norm.counts <- assay(nt)[select,]
df <- as.data.frame(colData(dds)[,c("name","condition")])
pdf('heatmap1000.pdf',width = 6, height = 7)
pheatmap(log2.norm.counts, cluster_rows=TRUE, show_rownames=FALSE,
         cluster_cols=TRUE, annotation_col=df)
dev.off()

