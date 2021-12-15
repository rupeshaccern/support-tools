import time

import redis
from flask import Flask

app = Flask(__name__)
cache = redis.Redis(host='redis', port=6379)

def get_hit_count():
    """
    Get the number of hits in the cache.

    Args:
    """
    retries = 5
    while True:
        try:
            return cache.incr('hits')
        except redis.exceptions.ConnectionError as exc:
            if retries == 0:
                raise exc
            retries -= 1
            time.sleep(0.5)

@app.route('/')
def hello():
    """
    Returns a hello world.

    Args:
    """
    count = get_hit_count()
    return 'Hello World! I have been seen {} times.\n'.format(count)    