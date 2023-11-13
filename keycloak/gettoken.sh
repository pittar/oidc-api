curl --insecure -X POST https://keycloak-sso.apps.cluster-gzwzm.dynamic.opentlc.com/auth/realms/quarkus2/protocol/openid-connect/token \
    --user backend-service:notMySecret \
    -H 'content-type: application/x-www-form-urlencoded' \
    -d 'username=alice&password=alice&grant_type=password' | jq --raw-output '.access_token'