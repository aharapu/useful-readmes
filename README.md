## My custom snippets

[How to create custom snippets in VSCode](https://code.visualstudio.com/docs/editor/userdefinedsnippets#_create-your-own-snippets)

#### ball
```javascript
beforeAll(() => {

})
```

<hr><br>

## My bash scripts

##### To use a script command, use the ".sh" file with the same name.
<br>

### React Component

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