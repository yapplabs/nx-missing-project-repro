
Reproduce bug in nx where project is not seen by nx (in this case "mobile-ui")

Reproduction steps:
1) pnpm install
2) pnpm exec nx reset
3) pnpm exec nx graph --file=graph.json

Expected behavior: graph.json should include mobile-ui and global-ui
Actual behavior: graph.json only includes global-ui
