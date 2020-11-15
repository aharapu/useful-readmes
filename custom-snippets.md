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
