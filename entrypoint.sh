#!/bin/bash
set -e

cat > /usr/share/nginx/html/index.html <<HTML
<pre>
MY_VAR    = ${MY_VAR:-not set}
SECRET    = ${SECRET:-not set}


1231231
3213123
1231231
</pre>
HTML

exec "$@"