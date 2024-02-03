load("data.RData")
data

# サマリー
length(data)
summary(data)
table(data)

# 分布を見る
# hist(data, breaks=seq(-0.5, 9.5, 1))
var(data)
sd(data)
sqrt(var(data))

# ポアソン分布を仮定する
# 確率変数を計算する
y <- 0:9
prob <- dpois(y, lambda = 3.56)

# ヒストグラムとポアソン分布を重ねて表示する
# あってそうに見えるが定性的評価に過ぎない
# hist(data, breaks=seq(-0.5, 9.5, 1))
# lines(y, 50 * prob, type="b", lty=2)

# 様々なラムダによるポアソン分布
y <- 0:20
line1 <- dpois(y, lambda = 3.56)
line2 <- dpois(y, lambda = 7.7)
line3 <- dpois(y, lambda = 15.1)
plot(y,  line1, pch=1, lty=2)
lines(y, line2, pch=2, lty=2)
lines(y, line3, pch=2, lty=2)
