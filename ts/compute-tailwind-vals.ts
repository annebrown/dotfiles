//--------@/ts/compute-tailwind-vals.ts---------------------------------------->
// Compute Tailwind Utility Equivs
const tailwindConfig = require('./tailwind.config.js'); // Your config file
const fs = require('fs');

function generateSpacingList(config) {
  let markdown = "# Tailwind Spacing Utilities\n\n";

  for (const key in config.theme.spacing) {
    const value = config.theme.spacing[key];
    markdown += `* \`${key}\`: \`${value}\`\n`;
  }

  fs.writeFileSync('tailwind-spacing.md', markdown);
}

generateSpacingList(tailwindConfig);
//--------@/ts/compute-tailwind-vals.ts---------------------------------------->