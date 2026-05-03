#!/usr/bin/env bash

REPO_DIR="$(git rev-parse --show-toplevel 2>/dev/null)"
[ -z "$REPO_DIR" ] && echo "No se detectó un repositorio git." && exit 0
cd "$REPO_DIR" || exit 0

BRANCH=$(git branch --show-current)
STAGED=$(git diff --cached --name-only)
UNSTAGED=$(git diff --name-only)
UNTRACKED=$(git ls-files --others --exclude-standard)

echo ""
echo "=============================="
echo "  Verificación de estado git"
echo "=============================="
echo "Repositorio : $REPO_DIR"
echo "Rama actual : $BRANCH"
echo ""

if [ -z "$STAGED" ] && [ -z "$UNSTAGED" ] && [ -z "$UNTRACKED" ]; then
  echo "Todo limpio. No hay cambios pendientes."
else
  [ -n "$STAGED" ]    && echo "En stage:"    && echo "$STAGED"    | sed 's/^/  + /' && echo ""
  [ -n "$UNSTAGED" ]  && echo "Sin stagear:" && echo "$UNSTAGED"  | sed 's/^/  ~ /' && echo ""
  [ -n "$UNTRACKED" ] && echo "Sin rastrear:" && echo "$UNTRACKED" | sed 's/^/  ? /' && echo ""
  echo "Recordatorio: ¿querés hacer commit antes de cerrar?"
fi

echo "=============================="
echo ""
