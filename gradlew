#!/usr/bin/env sh

# Minimal Gradle wrapper launcher. The wrapper JAR and distribution URL are pinned in the repo;
# this keeps Linux CI and local Unix builds working without a separately installed Gradle.
APP_HOME=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd -P) || exit 1
CLASSPATH="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"

if [ -n "$JAVA_HOME" ]; then
    JAVA="$JAVA_HOME/bin/java"
else
    JAVA=java
fi

if [ ! -x "$JAVA" ] && ! command -v "$JAVA" >/dev/null 2>&1; then
    echo "ERROR: Java was not found. Set JAVA_HOME or put java on PATH." >&2
    exit 1
fi

exec "$JAVA" -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
