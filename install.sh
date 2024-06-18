#!/bin/bash

version=${VERSION:-latest}
download_url="https://github.com/ardikabs/dotsh/releases/download"
script_dir=${SCRIPT_DIR:-/usr/local/bin}
shared_dir=${SHARED_DIR:-/opt/shared}
temp=$(mktemp -d)

_testfile="test.$$"

trap 'rm -rf "${temp}" "${script_dir}/${_testfile}" "${shared_dir}/${_testfile}"' EXIT

outdir="${temp}/scripts"
outfile="${temp}/scripts.zip"

if ! curl -sfL "${download_url}/${version}/scripts.zip" -o "${outfile}"; then
  cat >&2 <<'EOF'
    📎 Hey there! It looks like an error occurs when trying to download the scripts.

    It is probably an issue either from GitHub or the release is completely missing or unknown.

    Please contact the administrator (@ardikabs) for further details.

    Exiting...
EOF
  exit 1
fi

if ! touch "${script_dir}/${_testfile}" 2>/dev/null && ! touch "${shared_dir}/${_testfile}" 2>/dev/null; then
  echo >&2 "Please make sure you have the permission to write to ${script_dir} and ${shared_dir} directory."
  exit 1
fi

mkdir -p "${outdir}"
mkdir -p "${shared_dir}"

unzip -qq -o "${outfile}" -d "${outdir}"
mv "${outdir}/lib/*" "${script_dir}" 2>/dev/null || true
mv "${outdir}/shared/*" "${shared_dir}" 2>/dev/null || true

echo "dotsh ${version} has been installed successfully! 🎉"
