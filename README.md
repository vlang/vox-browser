## V Browser

Development will start after V 1.0, but brainstorming can already take place.

HTML/CSS - pure V, rendering via the V graphics module (DirectX 11, Metal, OpenGL, FreeType/stb_truetype).

GUI - V UI

JS - reuse V8

### Goals

The goal is to develop a free, clean, fast to compile (a couple of seconds), easily embeddable (like Electron), efficient and low memory (like Opera's old Presto) browser engine.

Today's web is dominated by the Chromium engine. It's slow to compile (5 hours on top tier 2020 desktop hardware), hard to develop because of the huge and complicated C++ code base, uses a huge amount of resources.

Firefox, the last alternative to Chromium, has unfortunately strayed away from its initial focus on privacy (it has huge amounts of telemetry and questionable partnerships), it's not embeddable at all, is even harder to build and develop than Chromium due to an older code base, has worse performance and battery usage.

There's a clear room for a new fresh alternative. Having more browsers is healthier for the open web.

Developing a browser is a very difficult task because of the ever increasing complexity of the web. Companies like Opera and Microsoft gave up developing their own engines and switched to Chromium. However it's not impossible. For example, a new proprietary browser Flow now successfully works with Gmail, one of the most complicated web apps. The NetSurf browser works quite well with websites that don't rely on JavaScript for rendering.

We will not be developing a new JavaScript engine, that simplifies the task significantly. The graphics/text rendering is handled completely by V's builtin libraries, and cross platform UI is handled by V UI.

All we need to do is write a simple CSS & HTML engine. With the V language which focuses on simple and maintainable code with fast compilation time, this will be a much easier task.  

