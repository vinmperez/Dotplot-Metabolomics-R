##########R file to make a bunch of dotplots using ggplot2 in R##########
###Vincent Perez
###03/26/2019
###==============================================================

setwd('C:/Directory/to/data/')

library(ggplot2)
library(ggpubr)
# Basic dot plot

FAMES16_0<-read.csv('Male Liver FAMES Exp 134 (16 0).csv')
FAMES16_0

p<-ggplot(FAMES16_0, aes(x=VLCFA, y=Mol.Percent, fill=Genotype)) + 
  geom_boxplot(position=position_dodge(0.8))+
  geom_dotplot(binaxis='y', stackdir='center', stackratio = 1.5, dotsize = 1.0,
               position=position_dodge(0.8)) +
  scale_fill_grey() + theme_classic() +
  coord_cartesian(ylim=c(27,33)) +
  labs(x=NULL)

symnum.args <- list(
  cutpoints = c(0, 0.0001, 0.001, 0.01, 0.05, 1), 
  symbols = c("****", "***", "**", "*", "ns")
)

p +
  theme(axis.text = element_text(size=14),
        axis.title = element_text(size=14)) + 
  stat_compare_means(method='t.test', label.y=22, label="p.signif",symnum.args = symnum.args)



FAMES16<-read.csv('Male Liver FAMES Exp 134 (16).csv')
FAMES16

###==============================================================

FAMES16_1<-read.csv('Male Liver FAMES Exp 134 (16 1).csv')
FAMES16_1

p<-ggplot(FAMES16_1, aes(x=VLCFA, y=Mol.Percent, fill=Genotype)) + 
  geom_boxplot(position=position_dodge(0.8))+
  geom_dotplot(binaxis='y', stackdir='center', stackratio = 1.5, dotsize = 1.0,
               position=position_dodge(0.8)) +
  scale_fill_grey() + theme_classic() +
  coord_cartesian(ylim=c(3.0,4.5)) +
  labs(x=NULL)

symnum.args <- list(
  cutpoints = c(0, 0.0001, 0.001, 0.01, 0.05, 1), 
  symbols = c("****", "***", "**", "*", "ns")
)

p +
  theme(axis.text = element_text(size=14),
        axis.title = element_text(size=14)) + 
  stat_compare_means(method='t.test', label.y=22, label="p.signif",symnum.args = symnum.args)



###==============================================================

FAMES18_1<-read.csv('Male Liver FAMES Exp 134 (18 1).csv')
FAMES18_1
FAMES18_1$Genotype<-factor(FAMES18_1$Genotype, levels=c("WT","Fatp2-/-"))
FAMES18_1

p<-ggplot(FAMES18_1, aes(x=VLCFA, y=Mol.Percent, fill=Genotype)) + 
  stat_boxplot(geom='errorbar') +
  geom_boxplot(position=position_dodge(0.8)) +
  scale_fill_grey() + theme_classic() +
  coord_cartesian(ylim=c(16,22)) +
  labs(x=NULL, y="Mol%")

symnum.args <- list(
  cutpoints = c(0, 0.0001, 0.001, 0.01, 0.05, 1), 
  symbols = c("****", "***", "**", "*", "ns")
)

p +
  theme(axis.text = element_text(size=14),
        axis.title = element_text(size=14)) + 
  stat_compare_means(method='t.test', label.y=22, label="p.signif",symnum.args = symnum.args)


###==============================================================

FAMES18_2<-read.csv('Male Liver FAMES Exp 134 (18 2).csv')
FAMES18_2
FAMES18_2$Genotype<-factor(FAMES18_2$Genotype, levels=c("WT","Fatp2-/-"))
FAMES18_2

p<-ggplot(FAMES18_2, aes(x=VLCFA, y=Mol.Percent, fill=Genotype)) +
  stat_boxplot(geom='errorbar') +
  geom_boxplot(position=position_dodge(0.8))+
  scale_fill_grey() + theme_classic() +
  coord_cartesian(ylim=c(12.1,18.9)) +
  labs(x=NULL, y="Mol%") 

symnum.args <- list(
  cutpoints = c(0, 0.0001, 0.001, 0.01, 0.05, 1), 
  symbols = c("****", "***", "**", "*", "ns")
)

p +
  theme(legend.position="none", axis.text = element_text(size=20),
        axis.title = element_text(size=20)) + 
  stat_compare_means(method='t.test', label.y=19, label="p.signif",symnum.args = symnum.args)

###==============================================================

FAMES18_3<-read.csv('Male Liver FAMES Exp 134 (18 3).csv')
head(FAMES18_3)
FAMES18_3$Genotype<-factor(FAMES18_3$Genotype, levels=c("WT","Fatp2-/-"))
FAMES18_3

p<-ggplot(FAMES18_3, aes(x=VLCFA, y=Mol.Percent, fill=Genotype)) +
  stat_boxplot(geom='errorbar') +
  geom_boxplot(position=position_dodge(0.8))+
  scale_fill_grey() + theme_classic() +
  coord_cartesian(ylim=c(0.3,0.62)) +
  labs(x=NULL, y="Mol%") 

symnum.args <- list(
  cutpoints = c(0, 0.0001, 0.001, 0.01, 0.05, 1), 
  symbols = c("****", "***", "**", "*", "ns")
)

p +
  theme(legend.position="none", axis.text = element_text(size=20),
        axis.title = element_text(size=20)) + 
  stat_compare_means(method='t.test', label.y=0.65, label="p.signif",symnum.args = symnum.args)

###==============================================================

FAMES20_1<-read.csv('Male Liver FAMES Exp 134 (20 1).csv')
FAMES20_1
FAMES20_1$Genotype<-factor(FAMES20_1$Genotype, levels=c("WT","Fatp2-/-"))
FAMES20_1

p<-ggplot(FAMES20_1, aes(x=VLCFA, y=Mol.Percent, fill=Genotype)) + 
  geom_boxplot(position=position_dodge(0.8))+
  geom_dotplot(binaxis='y', stackdir='center', stackratio = 1.5, dotsize = 1.0,
               position=position_dodge(0.8)) +
  scale_fill_grey() + theme_classic() +
  coord_cartesian(ylim=c(0.333,0.45)) +
  labs(x=NULL)


symnum.args <- list(
  cutpoints = c(0, 0.0001, 0.001, 0.01, 0.05, 1), 
  symbols = c("****", "***", "**", "*", "ns")
)

p +
  theme(axis.text = element_text(size=14),
        axis.title = element_text(size=14)) + 
  stat_compare_means(method='t.test', label.y=22, label="p.signif",symnum.args = symnum.args)

###==============================================================

FAMES20_2<-read.csv('Male Liver FAMES Exp 134 (20 2).csv')
FAMES20_2
FAMES20_2$Genotype<-factor(FAMES20_2$Genotype, levels=c("WT","Fatp2-/-"))
FAMES20_2

p<-ggplot(FAMES20_2, aes(x=VLCFA, y=Mol.Percent, fill=Genotype)) + 
  geom_boxplot(position=position_dodge(0.8))+
  geom_dotplot(binaxis='y', stackdir='center', stackratio = 1.5, dotsize = 1.0,
               position=position_dodge(0.8)) +
  scale_fill_grey() + theme_classic() +
  coord_cartesian(ylim=c(0.30,4.1)) +
  labs(x=NULL)

symnum.args <- list(
  cutpoints = c(0, 0.0001, 0.001, 0.01, 0.05, 1), 
  symbols = c("****", "***", "**", "*", "ns")
)

p +
  theme(axis.text = element_text(size=14),
        axis.title = element_text(size=14)) + 
  stat_compare_means(method='t.test', label.y=22, label="p.signif",symnum.args = symnum.args)

###==============================================================

FAMES20_3<-read.csv('Male Liver FAMES Exp 134 (20 3).csv')
FAMES20_3
FAMES20_3$Genotype<-factor(FAMES20_3$Genotype, levels=c("WT","Fatp2-/-"))
FAMES20_3

p<-ggplot(FAMES20_3, aes(x=VLCFA, y=Mol.Percent, fill=Genotype)) + 
  stat_boxplot(geom='errorbar') +
  geom_boxplot(position=position_dodge(0.8))+
  scale_fill_grey() + theme_classic() +
  coord_cartesian(ylim=c(1.45,3.0)) +
  labs(x=NULL, y="Mol%")

symnum.args <- list(
  cutpoints = c(0, 0.0001, 0.001, 0.01, 0.05, 1), 
  symbols = c("****", "***", "**", "*", "ns")
)

p +
  theme(legend.position="none", axis.text = element_text(size=20),
        axis.title = element_text(size=20)) + 
  stat_compare_means(method='t.test', label.y=3.0, label="p.signif",symnum.args = symnum.args)

###==============================================================

FAMES20_4<-read.csv('Male Liver FAMES Exp 134 (20 4).csv')
FAMES20_4
###Because of the order of the levels being, by default, alphabetical, we have to change the order
###of the levels using the "levels=" function. This puts Fatp2-/- after WT. 
FAMES20_4$Genotype<-factor(FAMES18_1$Genotype, levels=c("WT","Fatp2-/-"))
FAMES20_4

p<-ggplot(FAMES20_4, aes(x=VLCFA, y=Mol.Percent, fill=Genotype)) + 
  geom_boxplot(position=position_dodge(0.8))+
  geom_dotplot(binaxis='y', stackdir='center', stackratio = 1.5, dotsize = 1.0,
               position=position_dodge(0.8)) +
  scale_fill_grey() + theme_classic() +
  coord_cartesian(ylim=c(9.90,13.0)) +
  labs(x=NULL)

symnum.args <- list(
  cutpoints = c(0, 0.0001, 0.001, 0.01, 0.05, 1), 
  symbols = c("****", "***", "**", "*", "ns")
)

p +
  theme(axis.text = element_text(size=14),
        axis.title = element_text(size=14)) + 
  stat_compare_means(method='t.test', label.y=22, label="p.signif",symnum.args = symnum.args)

###==============================================================

FAMES22_4<-read.csv('Male Liver FAMES Exp 134 (22 4).csv')
FAMES22_4
###Because of the order of the levels being, by default, alphabetical, we have to change the order
###of the levels using the "levels=" function. This puts Fatp2-/- after WT. 
FAMES22_4$Genotype<-factor(FAMES22_4$Genotype, levels=c("WT","Fatp2-/-"))
FAMES22_4

p<-ggplot(FAMES22_4, aes(x=VLCFA, y=Mol.Percent, fill=Genotype)) + 
  geom_boxplot(position=position_dodge(0.8))+
  geom_dotplot(binaxis='y', stackdir='center', stackratio = 1.5, dotsize = 1.0,
               position=position_dodge(0.8)) +
  scale_fill_grey() + theme_classic() +
  coord_cartesian(ylim=c(0.30,0.70)) +
  labs(x=NULL)

symnum.args <- list(
  cutpoints = c(0, 0.0001, 0.001, 0.01, 0.05, 1), 
  symbols = c("****", "***", "**", "*", "ns")
)

p +
  theme(axis.text = element_text(size=20),
        axis.title = element_text(size=20)) + 
  stat_compare_means(method='t.test', label.y=22, label="p.signif",symnum.args = symnum.args)

###==============================================================

FAMES22_5<-read.csv('Male Liver FAMES Exp 134 (22 5).csv')
FAMES22_5
###Because of the order of the levels being, by default, alphabetical, we have to change the order
###of the levels using the "levels=" function. This puts Fatp2-/- after WT. 
FAMES22_5$Genotype<-factor(FAMES22_5$Genotype, levels=c("WT","Fatp2-/-"))
FAMES22_5

p<-ggplot(FAMES22_5, aes(x=VLCFA, y=Mol.Percent, fill=Genotype)) + 
  geom_boxplot(position=position_dodge(0.8))+
  geom_dotplot(binaxis='y', stackdir='center', stackratio = 1.5, dotsize = 1.0,
               position=position_dodge(0.8)) +
  scale_fill_grey() + theme_classic() +
  coord_cartesian(ylim=c(0.33,0.60)) +
  labs(x=NULL)

symnum.args <- list(
  cutpoints = c(0, 0.0001, 0.001, 0.01, 0.05, 1), 
  symbols = c("****", "***", "**", "*", "ns")
)

p +
  theme(axis.text = element_text(size=14),
        axis.title = element_text(size=14)) + 
  stat_compare_means(method='t.test', label.y=0.60, label="p.signif",symnum.args = symnum.args)

###==============================================================

FAMES22_6<-read.csv('Male Liver FAMES Exp 134 (22 6).csv')
FAMES22_6
###Because of the order of the levels being, by default, alphabetical, we have to change the order
###of the levels using the "levels=" function. This puts Fatp2-/- after WT. 
FAMES22_6$Genotype<-factor(FAMES22_6$Genotype, levels=c("WT","Fatp2-/-"))
FAMES22_6

p<-ggplot(FAMES22_6, aes(x=VLCFA, y=Mol.Percent, fill=Genotype)) +
  stat_boxplot(geom='errorbar') +
  geom_boxplot(position=position_dodge(0.8))+
  scale_fill_grey() + theme_classic() +
  coord_cartesian(ylim=c(3.0,4.75)) +
  labs(x=NULL, y="Mol%")

symnum.args <- list(
  cutpoints = c(0, 0.0001, 0.001, 0.01, 0.05, 1), 
  symbols = c("****", "***", "**", "*", "ns")
)

p +
  theme(axis.text = element_text(size=20),
        axis.title = element_text(size=20)) + 
  stat_compare_means(method='t.test', label.y=4.75, label="p.signif",symnum.args = symnum.args)

###==============================================================

LXA4<-read.csv('LXA4.csv')
head(LXA4)
###Because of the order of the levels being, by default, alphabetical, we have to change the order
###of the levels using the "levels=" function. This puts Fatp2-/- after WT. 
LXA4$Genotype<-factor(LXA4$Genotype, levels=c("WT","Fatp2-/-"))
LXA4

#png(file="22_6.png",width=1500 ,height=1000,res=300)
p<-ggplot(LXA4, aes(x=Eicosanoid, y=Mol.Percent, fill=Genotype)) + 
  stat_boxplot(geom='errorbar') +
  geom_boxplot(position=position_dodge(0.8))+
  #geom_dotplot(binaxis='y', stackdir='center', stackratio = 1.5, dotsize = 1.0,
               #position=position_dodge(0.8)) +
  scale_fill_grey() + theme_classic() +
  coord_cartesian(ylim=c(2.25,12.0)) +
  labs(x=NULL, y='ng/mg of Protein')

symnum.args <- list(
  cutpoints = c(0, 0.0001, 0.001, 0.01, 0.05, 1), 
  symbols = c("****", "***", "**", "*", "ns")
)

p +
  theme(axis.text = element_text(size=20),
        axis.title = element_text(size=20)) + 
  stat_compare_means(method='t.test', label.y=12, label="p.signif",symnum.args = symnum.args)

###==============================================================

HETE20<-read.csv('20_HETE.csv')
HETE20
###Because of the order of the levels being, by default, alphabetical, we have to change the order
###of the levels using the "levels=" function. This puts Fatp2-/- after WT. 
HETE20$Genotype<-factor(HETE20$Genotype, levels=c("WT","Fatp2-/-"))
HETE20

p<-ggplot(HETE20, aes(x=Eicosanoid, y=Mol.Percent, fill=Genotype)) + 
  stat_boxplot(geom='errorbar') +
  geom_boxplot(position=position_dodge(0.8))+
  scale_fill_grey() + theme_classic() +
  coord_cartesian(ylim=c(1.25,12.0)) +
  labs(x=NULL, y='ng/mg of Protein')

symnum.args <- list(
  cutpoints = c(0, 0.0001, 0.001, 0.01, 0.05, 1), 
  symbols = c("****", "***", "**", "*", "ns")
)

p +
  theme(axis.text = element_text(size=20),
        axis.title = element_text(size=20)) + 
  stat_compare_means(method='t.test', label.y=12, label="p.signif",symnum.args = symnum.args)

###==============================================================

PJ2<-read.csv('ProstaglandinJ2.csv')
PJ2
###Because of the order of the levels being, by default, alphabetical, we have to change the order
###of the levels using the "levels=" function. This puts Fatp2-/- after WT. 
PJ2$Genotype<-factor(PJ2$Genotype, levels=c("WT","Fatp2-/-"))
PJ2

p<-ggplot(PJ2, aes(x=VLCFA, y=Mol.Percent, fill=Genotype)) + 
  stat_boxplot(geom='errorbar') +
  geom_boxplot(position=position_dodge(0.8))+
  scale_fill_grey() + theme_classic() +
  coord_cartesian(ylim=c(0.60,6.75)) +
  labs(x=NULL, y='ng/mg of Protein')

symnum.args <- list(
  cutpoints = c(0, 0.0001, 0.001, 0.01, 0.05, 1), 
  symbols = c("****", "***", "**", "*", "ns")
)

p +
  theme(axis.text = element_text(size=20),
        axis.title = element_text(size=20)) + 
  stat_compare_means(method='t.test', label.y=6.75, label="p.signif",symnum.args = symnum.args)
