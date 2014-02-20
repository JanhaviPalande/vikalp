import os
from tweepy import OAuthHandler, API


def post_to_twitter(tweet_message="Visit www.vikalpsangam.org"):
    app_key = os.environ.get('TWITTER_APP_KEY')
    app_secret = os.environ.get('TWITTER_APP_SECRET')
    oauth_token = os.environ.get('TWITTER_OAUTH_TOKEN')
    oauth_token_secret = os.environ.get('TWITTER_OAUTH_TOKEN_SECRET')

    auth = OAuthHandler(app_key, app_secret)
    auth.set_access_token(oauth_token, oauth_token_secret)

    api_stream = API(auth)

    try:
        api_stream.update_status(tweet_message)
    except Exception as e:
        print "Exception log: " + str(e)
