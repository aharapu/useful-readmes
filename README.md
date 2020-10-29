### My custom snippets
#### For VSCode's ES7 React/Redux/GraphQL/React-Native snippets extension

```javascript
    "beforeAll": {
      "prefix": "ball",
      "body": [
        "beforeAll(() => {",
        "\t$1",
        "})"
      ],
      "description": "Writes a beforeAll function in your test file."
    },
```

### My bash scripts

#### Syntax:&nbsp;&nbsp; `rfc component-name`
Creates a react component with the following folders and files:

    .
    ├── ...
    ├── component-name                      # Parent folder
    │   ├── component-name.js               # Main file
    │   ├── component-name.test.js          # Test file
    │   ├── component-name.scss             # Styling file
    │   └── package.json                    # Used for imports
    └── ...

Also works with multiple components.
#### Syntax:&nbsp;&nbsp; `rfc Comp1 Comp2 Comp3`

    .
    ├── ...
    ├── Comp1
    ├── Comp2
    ├── Comp3
    └── ...