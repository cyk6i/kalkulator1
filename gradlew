#!/bin/sh
# Minimal wrapper bootstrap for CI. Downloads Gradle 8.9 when needed.
set -eu
VERSION="8.9"
BASE="${GRADLE_USER_HOME:-$HOME/.gradle}/wrapper/dists/gradle-${VERSION}-bin/local"
GRADLE_HOME="$BASE/gradle-${VERSION}"
if [ ! -x "$GRADLE_HOME/bin/gradle" ]; then
  mkdir -p "$BASE"
  ZIP="$BASE/gradle-${VERSION}-bin.zip"
  if [ ! -f "$ZIP" ]; then
    if command -v curl >/dev/null 2>&1; then curl -fL "https://services.gradle.org/distributions/gradle-${VERSION}-bin.zip" -o "$ZIP"
    else wget -O "$ZIP" "https://services.gradle.org/distributions/gradle-${VERSION}-bin.zip"; fi
  fi
  unzip -q -o "$ZIP" -d "$BASE"
fi
exec "$GRADLE_HOME/bin/gradle" "$@"
