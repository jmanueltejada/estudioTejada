# Estudio Jurídico Tejada — Instrucciones para Claude Code

## Descripción del proyecto

Sitio web del Estudio Jurídico Tejada. Incluye páginas HTML, estilos CSS/SASS y recursos multimedia.

## Reglas generales

- Responder siempre en **español**.
- Mantener el código limpio, semántico y accesible.
- No agregar dependencias externas sin aprobación explícita.
- No modificar imágenes ni archivos multimedia sin instrucción clara.
- Preferir edición de archivos existentes sobre creación de nuevos.

## Convenciones de código

- HTML: indentación con 2 espacios, atributos en minúsculas.
- CSS/SASS: BEM cuando sea posible, variables para colores y tipografía.
- Commits: mensajes en español, en imperativo (ej. "Agrega sección de contacto").

## Git

- Rama principal: `main`
- Ramas de desarrollo: `claude/<descripcion>`
- Nunca hacer push directo a `main` sin revisión.

## Hooks configurados

- `hooks/stop-hook-git-check.sh`: verifica el estado de git al finalizar cada sesión.
