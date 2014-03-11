from tweepy import OAuthHandler, API


def post_to_twitter(tweet_message="Visit www.vikalpsangam.org"):
    keys = open("vikalp/twitter_keys.txt", "r").read().split(',')

    try:
        api_key = keys[0]
        api_secret = keys[1]
        oauth_token = keys[2]
        oauth_token_secret = keys[3]

        auth = OAuthHandler(api_key, api_secret)
        auth.set_access_token(oauth_token, oauth_token_secret)

        api_stream = API(auth)
    except:
        pass

    try:
        api_stream.update_status(tweet_message)
    except Exception as e:
        print "Exception log: " + str(e)
