hubot-tumblrbot-bysetting
================

Description
-----------

You can get from tumblr image without coding scirpts.


## Installation

Add `hubot-sushiyuki` to your package.json, run `npm install` and add hubot-sushiyuki to `external-scripts.json`.

Add `hubot-tumblrbot-bysetting` to your `package.json` dependencies.

```
"dependencies": {
  "hubot-tumblrbot-bysetting": "0.0.1"
}
```

Add `hubot-tumblrbot-bysetting` to `external-scripts.json`.

```
 [
  "hubot-tumblrbot-bysetting"
 ]
```

### Config

You can set some tumblr and some keyword.


```
HUBOT_TUMBLR_SOURCES='{ "aaa.tumblr.com": "xxx", "bbb.tumblr.com": "yyy", "ccc.tumblr.com": "zzz" }
```

If you set above, Hubot replys

- "xxx"  Returns a image from aaa.tumblr.com
- "yyy"  Returns a image from bbb.tumblr.com
- "zzz"  Returns a image from ccc.tumblr.com
