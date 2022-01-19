### before all

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

### prevent default

```javascript
	"Event Prevent Default": {
		"prefix": [
			"epd"
		],
		"body": [
			"$1.preventDefault();$0"
		],
		"description": "To place at begining of event handlers when creating custom behavior."
	}
```

### named log

```javascript
	"Log Valle": {
		"scope": "javascript,typescript,javascriptreact",
		"prefix": "clgv",
		"body": [
			"console.log(`%c[Valle]%c ${1:information}`, 'font-size: 0.8em; color: hsla(206, 74%, 65%, 1);', '');",
			"$0"
		],
		"description": "Log with a [Valle] prefix, to help find it among other logs."
	}
```

### named log group

```javascript
	"Log Valle Group": {
		"scope": "javascript,typescript,javascriptreact",
		"prefix": "clgr",
		"body": [
			"console.groupCollapsed('%c[Valle]%c ${1:group name}', 'font-size: 0.8em; color: hsla(206, 74%, 65%, 1);', '');",
			"console.log(`${2:first log}`);",
			"console.log(`${3:second log}`);",
			"console.groupEnd();",
			"$0"
		],
		"description": "Group logs with a [Valle] prefix, to help find it among other logs."
	}
```
