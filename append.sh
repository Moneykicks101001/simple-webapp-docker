#!/bin/bash

# New route definition
new_route="@app.route('/jenkins')\n    def jenkins():\n        return 'this page changed by Jenkins pipeline'\n"

# Use sed to insert the new route at line 12 of app.py
sed -i '12i\'"$new_route" app.py
