#!/bin/bash

curl -X PUT -d 'false' http://localhost:8080/api/admin/settings/:AllowSignUp
curl -X PUT -d google http://localhost:8080/api/admin/settings/:DefaultAuthProv
ider
