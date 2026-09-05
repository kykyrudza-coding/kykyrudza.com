#!/bin/bash
set -e

cat > /usr/share/nginx/html/index.html <<HTML
<pre>
MY_VAR    = ${MY_VAR:-not set}
SECRET    = ${SECRET:-not set}
</pre>
HTML

exec "$@"