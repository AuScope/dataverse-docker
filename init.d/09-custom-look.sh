#!/bin/bash

# Disallow creating local accounts from the UI
curl -X PUT -d 'false' http://localhost:8080/api/admin/settings/:AllowSignUp

# Set aaf to be the default authentication provider
curl -X PUT -d aaf http://localhost:8080/api/admin/settings/:DefaultAuthProvider

# Set AuScope logo
cp /custom-ui/AuScopeLogoIcon.png /opt/payara/appserver/glassfish/domains/domain1/applications/dataverse/resources/images
curl -X PUT -d '/resources/images/AuScopeLogoIcon.png' http://localhost:8080/api/admin/settings/:LogoCustomizationFile
