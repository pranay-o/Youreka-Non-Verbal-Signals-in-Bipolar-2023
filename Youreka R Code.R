library(tidyverse)
library(ggsignif)
library(dplyr)
library(car)

rawData <- Youreka_Raw_Dataset

hist(rawData$RightAnswers)
leveneTest(RightAnswers ~ `Sex`, data = rawData)
shapiro.test(rawData$RightAnswers)
One_way_results.aov <- aov(formula = RightAnswers ~ Type, data = rawData)
One_way_results.aov
summary(One_way_results.aov)
TukeyHSD(One_way_results.aov)

male_RightAnswers <- rawData %>%
  filter(Sex == 'M') %>% select(RightAnswers)

t.test(male_RightAnswers, mu = 24, alterna vtive = "greater")

#Right Answers Male (No ANOVA)
leveneTest(RightAnswers ~ `Type`, data = filter(rawData, Sex == "Male"))
shapiro.test(filter(rawData, Sex == "Male")$RightAnswers)
kruskal.test(formula = RightAnswers ~ `Type`, data = filter(rawData, Sex == "Male"))

#Right Answers Female (No ANOVA)
leveneTest(RightAnswers ~ `Type`, data = filter(rawData, Sex == "Female"))
shapiro.test(filter(rawData, Sex == "Female")$RightAnswers)
kruskal.test(formula = RightAnswers ~ `Type`, data = filter(rawData, Sex == "Female"))

#Audio Prosody Male (No ANOVA)
leveneTest(AudioProsody ~ `Type`, data = filter(rawData, Sex == "Male"))
shapiro.test(filter(rawData, Sex == "Male")$AudioProsody)
kruskal.test(formula = AudioProsody ~ `Type`, data = filter(rawData, Sex == "Male"))

#Audio Prosody Female (No ANOVA)
leveneTest(AudioProsody ~ `Type`, data = filter(rawData, Sex == "Female"))
shapiro.test(filter(rawData, Sex == "Female")$AudioProsody)
kruskal.test(formula = AudioProsody ~ `Type`, data = filter(rawData, Sex == "Female"))

#Combined Channel Male (No ANOVA)
leveneTest(CombinedChannel ~ `Type`, data = filter(rawData, Sex == "Male"))
shapiro.test(filter(rawData, Sex == "Male")$CombinedChannel)
kruskal.test(formula = CombinedChannel ~ `Type`, data = filter(rawData, Sex == "Male"))

#Combined Channel Female (No ANOVA)
leveneTest(CombinedChannel ~ `Type`, data = filter(rawData, Sex == "Female"))
shapiro.test(filter(rawData, Sex == "Female")$CombinedChannel)
kruskal.test(formula = CombinedChannel ~ `Type`, data = filter(rawData, Sex == "Female"))

#Face Video Male (No ANOVA)
leveneTest(FaceVideo ~ `Type`, data = filter(rawData, Sex == "Male"))
shapiro.test(filter(rawData, Sex == "Male")$FaceVideo)
kruskal.test(formula = FaceVideo ~ `Type`, data = filter(rawData, Sex == "Male"))

#Face Video Female (No ANOVA)
leveneTest(FaceVideo ~ `Type`, data = filter(rawData, Sex == "Female"))
shapiro.test(filter(rawData, Sex == "Female")$FaceVideo)
kruskal.test(formula = FaceVideo ~ `Type`, data = filter(rawData, Sex == "Female"))

#Body Video Male (No ANOVA)
leveneTest(BodyVideo ~ `Type`, data = filter(rawData, Sex == "Male"))
shapiro.test(filter(rawData, Sex == "Male")$BodyVideo)
kruskal.test(formula = BodyVideo ~ `Type`, data = filter(rawData, Sex == "Male"))

#Body Video Female (No ANOVA)
leveneTest(BodyVideo ~ `Type`, data = filter(rawData, Sex == "Female"))
shapiro.test(filter(rawData, Sex == "Female")$BodyVideo)
kruskal.test(formula = BodyVideo ~ `Type`, data = filter(rawData, Sex == "Female"))

#Positive Valence Male (No ANOVA)
leveneTest(PositiveValence ~ `Type`, data = filter(rawData, Sex == "Male"))
shapiro.test(filter(rawData, Sex == "Male")$PositiveValence)
kruskal.test(formula = PositiveValence ~ `Type`, data = filter(rawData, Sex == "Male"))

#Positive Valence Female (No ANOVA)
leveneTest(PositiveValence ~ `Type`, data = filter(rawData, Sex == "Female"))
shapiro.test(filter(rawData, Sex == "Female")$PositiveValence)
kruskal.test(formula = PositiveValence ~ `Type`, data = filter(rawData, Sex == "Female"))

#Negative Valence Male (No ANOVA)
leveneTest(NegativeValence ~ `Type`, data = filter(rawData, Sex == "Male"))
shapiro.test(filter(rawData, Sex == "Male")$NegativeValence)
kruskal.test(formula = NegativeValence ~ `Type`, data = filter(rawData, Sex == "Male"))

#Negative Valence Female (No ANOVA)
leveneTest(NegativeValence ~ `Type`, data = filter(rawData, Sex == "Female"))
shapiro.test(filter(rawData, Sex == "Female")$NegativeValence)
kruskal.test(formula = NegativeValence ~ `Type`, data = filter(rawData, Sex == "Female"))

#Dominant Male (No ANOVA)
leveneTest(Dominant ~ `Type`, data = filter(rawData, Sex == "Male"))
shapiro.test(filter(rawData, Sex == "Male")$Dominant)
kruskal.test(formula = Dominant ~ `Type`, data = filter(rawData, Sex == "Male"))

#Dominant Female (No ANOVA)
leveneTest(Dominant ~ `Type`, data = filter(rawData, Sex == "Female"))
shapiro.test(filter(rawData, Sex == "Female")$Dominant)
kruskal.test(formula = Dominant ~ `Type`, data = filter(rawData, Sex == "Female"))

#Submissive Male (ANOVA)
leveneTest(Submissive ~ `Type`, data = filter(rawData, Sex == "Male"))
shapiro.test(filter(rawData, Sex == "Male")$Submissive)
Anova_Submissive_Male <- aov(formula = RightAnswers ~ Type, data = filter(rawData, Sex == "Male"))
Anova_Submissive_Male
summary(Anova_Submissive_Male)
TukeyHSD(Anova_Submissive_Male)

#Submissive Female (No ANOVA)
leveneTest(Submissive ~ `Type`, data = filter(rawData, Sex == "Female"))
shapiro.test(filter(rawData, Sex == "Female")$Submissive)
kruskal.test(formula = Submissive ~ `Type`, data = filter(rawData, Sex == "Female"))
