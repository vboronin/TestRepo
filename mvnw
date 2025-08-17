#!/bin/sh

# ----------------------------------------------------------------------------
# Maven Start Up Batch script
# ----------------------------------------------------------------------------

MVNW_REPOURL="https://repo.maven.apache.org/maven2"
WRAPPER_DIR=".mvn/wrapper"
PROPERTIES_FILE="$WRAPPER_DIR/maven-wrapper.properties"

# Find Java
if [ -z "$JAVA_HOME" ] ; then
  JAVA_EXE="java"
else
  JAVA_EXE="$JAVA_HOME/bin/java"
fi

# Download wrapper jar if needed
if [ ! -f "$WRAPPER_DIR/maven-wrapper.jar" ]; then
  mkdir -p "$WRAPPER_DIR"
  WRAPPER_URL=$(grep -E "^wrapperUrl=" "$PROPERTIES_FILE" | cut -d'=' -f2-)
  if command -v curl >/dev/null 2>&1; then
    curl -fsSL "$WRAPPER_URL" -o "$WRAPPER_DIR/maven-wrapper.jar"
  elif command -v wget >/dev/null 2>&1; then
    wget -q "$WRAPPER_URL" -O "$WRAPPER_DIR/maven-wrapper.jar"
  else
    echo "Error: curl or wget is required to download maven-wrapper.jar" >&2
    exit 1
  fi
fi

# Execute Wrapper
exec "$JAVA_EXE" -Dmaven.multiModuleProjectDirectory="$PWD" \
  -cp "$WRAPPER_DIR/maven-wrapper.jar" \
  org.apache.maven.wrapper.MavenWrapperMain "$@"