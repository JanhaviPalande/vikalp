from mezzanine.conf import register_setting

register_setting(
    name="NUMBER_OF_CAROUSEL_ITEMS",
    description="Number of carousel items",
    editable=True,
    default=3,
)

register_setting(
    name="NUMBER_OF_FEATURED_ITEMS",
    description="Number of featured items",
    editable=True,
    default=3,
)