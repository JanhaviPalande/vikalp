import os
from tweepy import OAuthHandler, API


def post_to_twitter(self, tweet_message="Visit www.vikalpsangam.org"):
    self.app_key = os.environ.get('TWITTER_APP_KEY')
    self.app_secret = os.environ.get('TWITTER_APP_SECRET')
    self.oauth_token = os.environ.get('TWITTER_OAUTH_TOKEN')
    self.oauth_token_secret = os.environ.get('TWITTER_OAUTH_TOKEN_SECRET')

    auth = OAuthHandler(self.app_key, self.app_secret)
    auth.set_access_token(self.oauth_token, self.oauth_token_secret)

    api_stream = API(auth)

    try:
        api_stream.update_status(tweet_message)
    except Exception as e:
        print self.app_key
        print self.app_secret
        print tweet_message
        print "Exception log: " + str(e)
