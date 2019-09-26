---
title: "Home"
description: Hugo Starter Kit including patterns for SASS and ELM component builds
date: 2019-09-26T09:59:32-05:00
draft: false
---

{{% section class="white" %}}

## Hugo Elm Starter

This is a starter kit for Hugo which sets up a simple layout and website template with minimal boilerplate. The boilerplate that is here is opinionated and includes

- SASS build and home html template
- sanitize.css for CSS reset and system font stack
- includes a material color mixin b/c it is really helpful for keeping colors consistent.
- includes some basic core styles for flex layout
- Parcel is included for component compilation.

There are basic styles for forms & buttons included, but they are very much intended as boilerplate that you can mess around with. If they are not needed, then delete them.

{{% /section %}}

{{% section class="white" %}}

## Buttons

<a href="#" class="btn">Normal Button</a>
<a href="#" class="btn ghost">Ghost Button</a>

{{% /section %}}

{{% section class="white" %}}

## Text Fields

```
<div class="field username">
  <label for="username">Username</label>
  <input type="text" name="username" placeholder="e.g. Bob Marley" />
</div>
<div class="field password">
  <label for="password">Password</label>
  <input type="text" name="password"  />
</div>
```

<div class="field username">
  <label for="username">Username</label>
  <input type="text" name="username" placeholder="e.g. Bob Marley" />
</div>
<div class="field pass">
  <label for="pass">Password</label>
  <input type="password" name="pass"  />
</div>

{{% /section %}}

{{% section class="white" %}}

## Select

```
<div class="field sandwich">
  <label for="sandwich">Sandwich</label>
  <select>
    <option></option>
    <option>Club Sandwich</option>
    <option>Hot Dog</option>
    <option>Hamburger</option>
    <option>Gyro</option>
  </select>
</div>
```

<div class="field sandwich">
  <label for="sandwich">Sandwich</label>
  <select>
    <option></option>
    <option>Club Sandwich</option>
    <option>Hot Dog</option>
    <option>Hamburger</option>
    <option>Gyro</option>
  </select>
</div>

{{% /section %}}

{{% section class="white" %}}

## Checkboxes

```
<div class="field check hotdog">
  <div class="checkbox checked">
    <i class="material-icons">check</i>
  </div>
  <label>I agree that a hotdog is a sandwich!</label>
</div>
```

<div class="field check hotdog">
  <div class="checkbox checked">
    <i class="material-icons">check</i>
  </div>
  <label>I agree that a hotdog is a sandwich!</label>
</div>

<div class="field check hotdog">
  <div class="checkbox">
    <i class="material-icons">check</i>
  </div>
  <label>I'm a sandwich inclusionist</label>
</div>
{{% /section %}}

{{% section class="white" %}}

## Loader

To show a loader.

```
<div class="loader"></div>
```

Below is a trivial Elm component that toggles the loader.

<div id="loader_demo"></div>

{{% /section %}}
