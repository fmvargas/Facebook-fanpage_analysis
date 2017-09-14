library(devtools)
library(Rfacebook)

token <- "EAACEdEose0cBAJNMD9FCiFBt2uO88GV4i61OgHFYxWfyVd3ZAYh5fCldjRFmKrb8phl6QNCltYZBMVwqgTSJyzOgY71whNggAkVVCWv94NZAANT9X1Mn9sIFjDrtV6Ejx6PWaPG0QxwFel0cYgBCdBRjAyXz0ooUGOGuVLyLgVVAKlf8oaKFhsDaDVZC1Fgagb6wUSKDXqoTOSjbbr2URaGFd1YALI7QoCIwkGb8jQZDZD"

#PÁGINAS MENCIONARAM DETERMINADO ASSUNTO
assunto <- searchPages("chico xavier", token, n = 10)

#FANPAGE
page <- getPage("pgqp.cachoeira", token, n = 50, reactions = TRUE)

#GROUPS
group <- getGroup("150048245063649", token, n=50)

# POST
## LIKES
postInfo <- getPost(post="984534081624382_1470540419690410", token)
postLikes <- postInfo$likes
## COMMENTS
postCommentsNames <- postInfo$comments$from_name
## SHARES
postShares <- getShares(post="984534081624382_1470540419690410", token)


# INSIGHTS
getInsights("pgqp.cachoeira", token, metric = "page_fan_adds")

