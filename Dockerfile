FROM flownative/composer:7.4

# Github Actions only support running as "root", otherwise the action
# does not have access to the `GITHUB_WORKSPACE`.
USER root

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
