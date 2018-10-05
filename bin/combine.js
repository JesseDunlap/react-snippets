#!/usr/bin/env node

const fs = require('fs');
const path = require('path');

const parseSnippetFile = (snippetFileName) => {
  const fullPath = path.join('./vscode', snippetFileName);
  const contents = fs.readFileSync(fullPath, 'utf-8');
  return JSON.parse(contents);
}

const snippetObjects = fs.readdirSync('./vscode').map(parseSnippetFile);
const mergedSnippets = Object.assign(...snippetObjects);

const outputFilePath = path.join('./vscode/javascript.json');
fs.writeFileSync(outputFilePath, JSON.stringify(mergedSnippets, null, 2));