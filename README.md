# reveal-teals

A template and plugin set for [`reveal-js`](https://github.com/hakimel/reveal.js) designed for use in the [TEALS](https://tealsk12.org) program. This framework can be generally used for classroom teaching.

This framework is not officially supported or endorsed by TEALS. As of now, it is a work in progress!

### Introduction

This framework allows you to create presentation slides for lessons with a single HTML file that can be rendered in your web browser.

### [Here is a live demo](https://tomocafe.github.io/reveal-teals/demo.html)

# Getting Started

Template HTML files are provided for you to add your content into. Based on your intended usage, pick from the following template files:

**_I want my presentation to be standalone and portable, but I understand it can only be rendered properly if I have an Internet connection._**

Use the template file `template-standalone.html`.

You can [download](https://tomocafe.github.io/reveal-teals/template-standalone.html) and copy this file anywhere, then add your content without any additional setup. To present the slides, simply open the file in your web browser.

**_I want my presentation to be able to render offline, but I understand I must also include the necessary `reveal-teals` files, with the right file structure._**  
_OR_  
**_I want to host my presentations on a web server._**

Use the template file `template-local.html`.

First download the latest release [here](https://github.com/tomocafe/reveal-teals/releases). Once extracted, it will contain the template file, which you can copy and modify. The presentation HTML files must be located in the root `reveal-teals` directory for the browser to render the slides correctly.

If you prefer to clone the GitHub repository, you can do so instead of downloading a release archive. After cloning the repository, run `make submodules` to fetch all the dependencies.

# Drafting a Presentation

Some very basic HTML knowledge is assumed, though if you are starting with no prior HTML knowledge, you can make do by simply modifying the template and/or demo files.

In general, you should leave the part between `<head>` and `</head>` untouched, with the exception of the text between `<title>` and `</title>`. (This sets the title of the page in the web browser.)

Within the `<body>` part, you can add a slide after `<div class="slides">`. Each slide starts and ends with `<section>` and `</section>`, respectively.

Here's an example of a single slide, with a title, a paragraph, and an unordered list with 2 items:

```html
<section>
    <h2>Slide title</h2>
    <p>This is a paragraph</p>
    <ul>
        <li>This is an...</li>
        <li>unordered list!</li>
    </ul>
</section>
```

Each `<section>` level directly underneath `<div class="slides">` in the page hierarchy creates a new horizontal slide (i.e., navigate left-to-right).

By nesting another section within the section, you can create vertical slides that can be navigated top-down.

```html
<section>
    <section>
        <h2>This slide is on top</h2>
        <p>Head down from here!</p>
    </section>
    <section>
        <h2>This slide is on the bottom</h2>
        <p>Head up from here!</p>
    </section>
</section>
```

You can animate certain parts of the slide to appear one after the other like this:

```html
<section id="fragments">
    <h2>Animated slide</h2>
    <p class="fragment">This shows up next</p>
    <p class="fragment">Followed by this</p>
</section>
```

The [demo slides](https://tomocafe.github.io/reveal-teals/demo.html) give a demonstration of most available features (images, code, embedding Snap<em>!</em>, etc.). View its source code [here](https://github.com/tomocafe/reveal-teals/blob/master/demo.html).

The [`reveal-js`](https://github.com/hakimel/reveal.js) documentation is even more comprehensive.

# Features

In addition to the basic functionality from `reveal.js`, this framework provides support for:

* Countdown timer embedded in the slide (e.g. for Do Now activities) -- **in progress**
* Embedding Snap<em>!</em> in the slides, interactively!
* Displaying code in slides with syntax highlighting