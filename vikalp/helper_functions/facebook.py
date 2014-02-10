from facepy import GraphAPI


access_token = 'CAACEdEose0cBANhze081KZAmhdnLoWgz7GlcPllA4WDSAjbhZCW7jFHuZC2aFrhnB82dD4lpxCnCLemwNcVDuPJOn0WcnZAIwhcbbJQZCIX6ZBSEfswe4aWTDcAUB1B916KdZAlBfiaKzmfZAzNZBozQmBnQLU7Kmx0ay28kQYJZCJZBfEBJbSPi78av1xh2kaaXBx1ZBUkjwpNBKAZDZD'

GraphAPI(access_token).post(path='me/feed',
                            message='This was posted without routing via Twitter!!')
