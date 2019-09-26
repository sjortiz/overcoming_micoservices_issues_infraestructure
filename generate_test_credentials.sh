export token=$(curl -H "X-Vault-Token: SuperSecretToken" \
                      -X POST http://127.0.0.1:8200/v1/auth/token/create| jq '.auth.client_token')
echo $token
