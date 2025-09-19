library(gamlss)
library(gamlss.demo)


abline(v = 5, col = "red", lty = 2)
abline(h = 0.1061, col = "blue", lty = 2)

red <- "#c50030"
blue <- "#1f77b4"

png("/home/msales/Documents/UFPE/2025.2/gamlss/avaliacao_1/slide/images/dist_1.png", width = 1000, height = 800)

curve(dST4(x, mu = 0, sigma = 1, nu = 1, tau = 1), col = "black", from = -20, to = 20, ylim = c(0, 0.45), lwd = 2, ylab = "")
# abline(v = 0, lty = 2, col = red, lwd = 2)
curve(dST4(x, mu = 0, sigma = 1, nu = 1, tau = 50), add = TRUE, col = blue, lwd = 3, lty = 2)
curve(dST4(x, mu = 0, sigma = 1, nu = 1, tau = 0.1), add = TRUE, col = red, lwd = 4, lty = 3)
legend("right", legend = expression(tau == 1, tau == 0.3, tau == 30), col = c("black", blue, red), lty = 1:3)

dev.off()


curve(dST4(x, mu = -1.83, sigma = 1.5, nu = 0.1, tau = 7.8), col = "black", from = -15, to = 15, lwd = 2, ylab = "")



curve(dST4(x, mu = 0, sigma = 3, nu = 1, tau = 50), col = "black", from = 0, to = 15, lwd = 2, ylab = "")

curve(dexp(x), add = TRUE, col = red, lty = 2)


demoDist()
