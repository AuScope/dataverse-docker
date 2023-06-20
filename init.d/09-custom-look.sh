#!/bin/bash

curl -X PUT -d 'false' http://localhost:8080/api/admin/settings/:AllowSignUp
