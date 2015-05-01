library(twitteR)

key <- 'txNHnsN48CFpoM4e9vrS6VvrB'
secret <- 'How1y3RqO85VhMDV5d4Sxh5eMusYOLdDQ1vsu7g49kP2DV1qTk'
access <- '286976735-ltrF1PIA573UVceBCKhJOMLPPRCobEDnp35qJGr2'
access_secret <- 'mp4aHXUl4NqUtuoF7O0npAGptt1YoYJoU5uhERppTLdBh'

setup_twitter_oauth(key,secret,access,access_secret)

lachack <- searchTwitter("LACHack",n=25)

sps <- searchTwitter("",n=10,geocode='15.5,-88.03,20km')
sps_f <- do.call("rbind", lapply(sps,as.data.frame))

sps_f$created
sps_f$text
closestTrendLocations(lat=15.5, long=-88.03)
getTrends(closestTrendLocations(lat=15.5, long=-88.03)[1,3])$name

