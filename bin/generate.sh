mkdir vscode/

vscode-snippet generate ./src/Component.js \
  -o vscode/Component.json \
  -n "React Component" \
  -p "rc" \
  -d "Generates a React Component"

vscode-snippet generate ./src/PureComponent.js \
  -o vscode/PureComponent.json \
  -n "React PureComponent" \
  -p "rpc" \
  -d "Generates a React PureComponent"

vscode-snippet generate ./src/ComponentContainer.js \
  -o vscode/ComponentContainer.json \
  -n "React Component Container" \
  -p "rcc" \
  -d "Generates a React Component Container"

vscode-snippet generate ./src/StructuredComponentIndex.js \
  -o vscode/StructuredComponentIndex.json \
  -n "React Structued Component Index" \
  -p "rsc" \
  -d "Generates an index.js for a React structured component"

bin/combine.js