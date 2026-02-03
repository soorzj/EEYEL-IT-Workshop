# IT Workshop - CSS Implementation Examples

> This repository contains examples demonstrating the three primary methods of applying CSS (Cascading Style Sheets) to HTML documents: **Inline**, **Internal**, and **External**.



## Files Included

### 1. Inline CSS (`inline_css.html`)

This file demonstrates applying styles directly within HTML elements using the `style` attribute.

* **Key Features**:
* Uses a `<span>` with `hsl()` color values.
* Demonstrates font size manipulation (`xx-large`) and color nesting within `<div>` and `<p>` tags.



### 2. Internal CSS (`internal_css.html`)

This file shows how to define styles within a `<style>` block inside the `<head>` section of an HTML document.

* **Key Features**:
* **Class Selectors**: Uses `.MainHeading` to center-align specific `<h1>` elements.
* **Pseudo-classes**: Demonstrates interactive states like `:hover` (turns red) and `:active` (turns green) for the paragraph class `.cust`.
* **Border Styling**: Implements a `5pt` inset border with a `6pt` radius.



### 3. External CSS (`external_css.html` & `external_style.css`)

This example separates the structure (HTML) from the presentation (CSS) by linking to an external stylesheet.

* **`external_css.html`**: Uses the `<link rel="stylesheet" href="external_style.css">` tag to pull in styles.
* **`external_style.css`**: Contains the CSS rules, including maroon-colored headers and custom interactive paragraph styling identical to the internal example.

---

## Comparison Table

| Method | Implementation | Best For |
| --- | --- | --- |
| **Inline** | `style` attribute inside tags | Quick fixes or unique elements |
| **Internal** | `<style>` tag in `<head>` | Single-page websites |
| **External** | Separate `.css` file | Large websites with multiple pages |

---

## How to View

1. Clone this repository.
2. Open any of the `.html` files in a web browser (Chrome, Firefox, Safari, etc.).
3. For the **Internal** and **External** examples, try hovering your mouse over or clicking on the blue-bordered text to see the color changes.
