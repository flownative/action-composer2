FROM flownative/composer2:8.4

# Github Actions only support running as "root", otherwise the action
# does not have access to the `GITHUB_WORKSPACE`.
USER root

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
