# Firebase

## Rule set

```json
{
    "rules": {
        ".read": "auth != null",
        ".write": true,

        "team": {
          ".read": "data.child(auth.uid).exists()",
          ".write": "auth.group === 'mod'",
          ".validate": "(newData.hasChild('teamOne') || newData.hasChild('teamTwo'))"
        },

        "total": {
          ".write": true,
          ".validate": "newData.hasChildren(['totalOne','totalTwo']) && newData.child('totalOne').isNumber() && newData.child('totalTwo').isNumber()"
        }
    }
}
```
