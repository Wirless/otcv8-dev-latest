const fs = require('fs');

// Function to extract shader names from shaders.lua
function extractShaderNames(luaContent) {
  const shaderNames = [];
  const regex = /g_shaders\.createOutfitShader\("([^"]+)",/g;
  let match;
  
  while ((match = regex.exec(luaContent)) !== null) {
    shaderNames.push(match[1]);
  }

  return shaderNames;
}

// Function to generate the XML content
function generateXML(shaderNames) {
  let xmlContent = '<?xml version="1.0" encoding="UTF-8"?>\n<shaders>\n';
  
  shaderNames.forEach((name, index) => {
    const id = index + 1; // Incrementing ID
    xmlContent += `    <shader id="${id}" name="${name}" premium="no" />\n`;
  });

  xmlContent += '</shaders>\n';
  return xmlContent;
}

// Main function
function main() {
  // Read shaders.lua file
  const luaContent = fs.readFileSync('shaders.lua', 'utf-8');
  
  // Extract shader names
  const shaderNames = extractShaderNames(luaContent);
  
  // Generate XML content
  const xmlContent = generateXML(shaderNames);
  
  // Write output.xml file
  fs.writeFileSync('output.xml', xmlContent);
  console.log('output.xml has been generated.');
}

main();
