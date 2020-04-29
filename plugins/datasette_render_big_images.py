from datasette import hookimpl
import base64
import imghdr
import jinja2


@hookimpl
def render_cell(value):
    # Only act on byte columns
    if not isinstance(value, bytes):
        return None
    # Only render images < 100kb
    if len(value) > 200 * 1024:
        return None
    # Is this an image?
    image_type = imghdr.what(None, h=value)
    if image_type not in ("png", "jpeg", "gif"):
        return None
    # Render as a data-uri
    return jinja2.Markup(
        '<img src="data:image/{};base64,{}">'.format(
            image_type, base64.b64encode(value).decode("utf8")
        )
    )
