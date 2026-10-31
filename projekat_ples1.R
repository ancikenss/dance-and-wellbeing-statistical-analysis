
# Plesaci vs neplesaci
grupe <- c(59, 78)
names(grupe) <- c("Plesaci", "Neplesaci")
procenti <- round(grupe / sum(grupe) * 100, 1)
labele <- paste(names(grupe), procenti, "%")
pie( grupe,
     labels = labele,
     main = "Struktura uzorka prema bavljenju plesom",
     col = c("#fc03f4", "#c203fc"),
     cex = 1.1,
     cex.main = 1.3
)



# Da li su se ispitanici ikada bavili plesom
ikada <- c(103, 33)
names(ikada) <- c("Da", "Ne")
procenti <- round(ikada / sum(ikada) * 100, 1)
labele <- paste(names(ikada), procenti, "%")
pie( ikada,
     labels = labele,
     main = "Struktura ispitanika prema prethodnom bavljenju plesom",
     col = c("#fc03f4", "#c203fc"),
     cex = 1.1,
     cex.main = 1.3
)



# Vrsta plesa
vrsta <- c(13, 39, 14, 10, 9, 7, 1, 2, 1, 29)
names(vrsta) <- c(
  "Heels", "Hip-hop", "Latino", "Balet", "Komerc.",
  "Folklor", "K-pop", "Disco", "Tango", "Savremeni"
)
bp <- barplot(
  vrsta,
  main = "Zastupljenost razlicitih vrsta plesa",
  ylab = "Broj ispitanika",
  col = "#fc03f4",
  border = "#c203fc",
  las = 2,
  cex.names = 0.8,
  cex.axis = 0.9,
  cex.lab = 1.1,
  cex.main = 1.3,
  ylim = c(0, 45)
)
text(
  x = bp,
  y = vrsta,
  labels = vrsta,
  pos = 3,
  cex = 0.9
)




# Duzina bavljenja plesom
duzina <- c(7, 12, 2, 38)
names(duzina) <- c(
  "Manje od 1 god.",
  "1-3 god.",
  "3-5 god.",
  "Vise od 5 god."
)
bp <- barplot(
  duzina,
  main = "Duzina bavljenja plesom",
  ylab = "Broj ispitanika",
  col = "#fc03f4",
  border = "#c203fc",
  las = 2,
  cex.names = 0.9,
  cex.axis = 0.9,
  cex.lab = 1.1,
  cex.main = 1.3,
  ylim = c(0, 45)
)
text(
  x = bp,
  y = duzina,
  labels = duzina,
  pos = 3,
  cex = 0.9
)



# Broj treninga nedeljno
treninzi <- c(0, 28, 14, 17)
names(treninzi) <- c("1", "2", "3", "4 i vise")

bp <- barplot(
  treninzi,
  main = "Broj treninga nedeljno",
  xlab = "Broj treninga nedeljno",
  ylab = "Broj ispitanika",
  col = "#fc03f4",
  border = "#c203fc",
  cex.names = 1,
  cex.axis = 0.9,
  cex.lab = 1.1,
  cex.main = 1.3,
  ylim = c(0, 35)
)
text(
  x = bp,
  y = treninzi,
  labels = treninzi,
  pos = 3,
  cex = 0.9
)



# Kronbahov alfa koeficijent
podaci <- read.csv("Obrada podataka- anketa ples - Form Responses 1.csv")
# Ako fajl nije u radnom folderu, koristimo:
# podaci <- read.csv(file.choose())
names(podaci)
# Install once if needed: install.packages("psych")
library(psych)

# Raspolozenje

alpha(podaci[, c(7, 9)])
# raw_alpha = 0.27, average_r = 0.16

# Stres

alpha(podaci[, c(11, 12)])
# raw_alpha = 0.089, average_r = 0.046

# Samopouzdanje

alpha(podaci[, c(13, 14, 15)])
# raw_alpha = 0.82, average_r = 0.60

# Socijalna povezanost

alpha(podaci[, c(16, 17, 18, 20)])
# raw_alpha = 0.74, average_r = 0.43

# Pamcenje/koncentracija

alpha(podaci[, c(21, 22, 24)])
# raw_alpha = 0.47, average_r = 0.25

# San/energija

alpha(podaci[, c(25, 26, 28)])
# raw_alpha = 0.69, average_r = 0.41



## INTERVAL POVERENJA ##
nP = 59
nN = 78
IP = 3.383003766
IN = 3.238782051

sP = 0.5878383976
sN = 0.5037490603
razlika = IP - IN
s2P = sP^2
s2N= sN^2
se=  sqrt(s2P / nP + s2N / nN)
v_t =((s2P / nP + s2N / nN)^2) /
  (((s2P / nP)^2) / (nP - 1) +
     ((s2N / nN)^2) / (nN - 1))
beta = 0.95
c <- qt((1 + beta) / 2, df = v_t)
donja_granica = razlika - c * se
gornja_granica = razlika + c * se
razlika
s2P
s2N
se
v_t
c
donja_granica
gornja_granica




## P-VREDNOST ##

nP = 59
nN = 78
IP = 3.383003766
IN = 3.238782051
sP = 0.5878383976
sN = 0.5037490603
SE = sqrt(sP^2 / nP + sN^2 / nN)
T <- (IP - IN) / SE
v_t <- ((sP^2 / nP + sN^2 / nN)^2) /
  (((sP^2 / nP)^2) / (nP - 1) +
     ((sN^2 / nN)^2) / (nN - 1))
p_vrednost = 1 - pt(T, df = v_t)
T
v_t
p_vrednost



# Poredjenje disperzija ukupnog indeksa kod plesaca i neplesaca
# Potrebni su prethodno pripremljeni objekti: plesaci i neplesaci.


nP = length(plesaci$UKUPNI_INDEKS)
nN = length(neplesaci$UKUPNI_INDEKS)
s2P = var(plesaci$UKUPNI_INDEKS)
s2N = var(neplesaci$UKUPNI_INDEKS)
F_stat = s2P / s2N
alpha = 0.25

df1 = nP - 1
df2 = nN - 1
c1 = qf(alpha / 2, df1, df2)
c2 = qf(1 - alpha / 2, df1, df2)
nP
nN
s2P
s2N
F_stat
c1
c2
F_stat < c1 || F_stat > c2
var.test(
  plesaci$UKUPNI_INDEKS,
  neplesaci$UKUPNI_INDEKS,
  conf.level = 1 - alpha
)
