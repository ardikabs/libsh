# ⚒️ dosth

This repository is a collection of shell scripts designed to automate and simplify various tasks. Each script in this collection serves a unique purpose and is designed with efficiency and ease-of-use in mind.

## Installation

You can install the scripts by downloading them from [the release page](https://github.com/ardikabs/dotsh/releases), where they are available as a `scripts.zip` file.

For example, referring to the [latest](https://github.com/ardikabs/dotsh/releases/tag/main), you can install it like below:

```bash
TEMPDIR=$(mktemp -d)
if ! curl -sfL "https://github.com/ardikabs/dotsh/releases/download/main/scripts.zip" -o "${TEMPDIR}"/scripts.zip; then
cat >&2 <<'EOF'
    📎 Hey there! It looks like an error occurs when trying to download the scripts.

    It is probably an issue either from GitLab or the job is completely missing or unknown.

    Please contact the administrator (@admin) for further details.

    Exiting...
EOF
exit 1
fi

mkdir -p "${TEMPDIR}/scripts"
mkdir -p /opt/shared

unzip -qq -o "${TEMPDIR}"/scripts.zip -d "${TEMPDIR}"/scripts
mv "${TEMPDIR}"/scripts/lib/* /usr/local/bin/ || true
mv "${TEMPDIR}"/scripts/shared/* /opt/shared || true
```

## Script Status

| Name | Status | Documentation |
| ----------- | ------ | ------------- |
| `dpl` | Active | [Link](docs/dpl/README.md) |
| `tfx` | Active | [Link](docs/tfx/README.md) |

## Contributing

> WIP

## License

[MIT](./LICENSE)
