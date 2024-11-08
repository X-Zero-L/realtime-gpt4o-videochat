# Realtime GPT-4o photo, video & voice chat
A lightweight demo application for real-time GPT-4o communication including photo/video support, GPT-4o vision integration and voice chat.

[![Watch the video](https://i3.ytimg.com/vi/Bh5tORytR90/hqdefault.jpg)](https://www.youtube.com/watch?v=Bh5tORytR90)

https://youtu.be/nTQUwghvy5Q


## Introduction
While OpenAI has [demonstrated](https://www.youtube.com/watch?v=RI-BxtCx32s) GPT-4's vision capabilities, these features are not yet accessible to the public. This demo application shows how you could utilize their APIs to implement similar real-time voice/video communication with integrated AI vision functionalities.

## Quick Start
### Configuration, installation & running
```bash
mv config.js.example config.js  // change key + language
npm install
npm run start
```

Open: http://localhost:3000

### How it works:
- Turn on your webcam and microphone
- Click "Connect" and hold the "Push to Talk" while speaking
- Ask something about an object/situation on the video stream
- Release the button, and the question/screenshot will be analyzed by GPT-4o vision
- From there you can ask follow-up questions or ask other questions
- Have fun!

## Dev notes: 
- Code is unsafe for production, key is exposed in the client-side code.
- Requirements: NodeJS, modern web browser and an OpenAI API key
- By default, Chrome camera access via HTTP is disabled. Could be changed: `chrome://flags/#unsafely-treat-insecure-origin-as-secure`

## Disclaimer
- Most of the code is based on [OpenAI demo repo](https://github.com/openai/openai-realtime-console/), their code is slightly modified/minified
- The model(`gpt-4o-realtime-preview`) has currently [strict usage](https://platform.openai.com/settings/organization/limits) limitations. Expect only 5 minutes of usage in Tier 1 (tbh; the realtime model is quite expensive to run)
