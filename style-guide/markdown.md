# Writing in Markdown

## Writing in Markdown

We write our documentation using the Markdown markup language. It's a lightweight language, based on plain text, that lets us focus on the content while still being able to add formatting, structure, images, and tables. You can use HTML in your Markdown topics, but only if you have to, for complex tables or complex layouts.

Content is king in Markdown. Pay attention to your content and the document structure, and not how the topic displays. If you're converting content from HTML or PDF, don't try to replicate all of the formatting, particularly complex tables and "decorative" elements.

Keep it simple. Use white space, to let the text "breathe." When in doubt, add blank lines between different document elements. For example, you can add lines between headings, paragraphs, tables, and images. There are a few exceptions mentioned throughout this chapter.

See [Daring Fireball](https://daringfireball.net/projects/markdown/syntax) for more information about Markdown syntax.

### Markdown files

When creating a new Markdown file, make sure you follow the structure and naming conventions described in [Working with files](./working-with-files.adoc).

### Basic formatting

Bold. Surround the words with ** (two asterisks), no spaces.

Italic. Surround the words with _ (underscores), no spaces. You rarely, if ever, need italic.

**Example**

Markdown:

[source, markdown]
----
Some **bold words** and some _italic words_.
----

**Result:**

Some *bold words* and some _italic words_.

### Headings

Headings are defined using one or more # (hash) characters placed in the first column of a given line. The number of # characters define the heading level.

General rules for headings:

* Use only one Heading 1 in a topic, because Heading 1 defines the topic title. Titles must only contain letters from the English alphabet, numbers, dashes, and periods.
* Don't skip heading levels. For example, don't use a Heading 3 right after a Heading 1, without a Heading 2 in-between.
* Always leave an empty line before and after a heading line.

**Example**

A Markdown snippet with three headings:

[source, markdown]
----
# Heading 1

This is content under Heading 1.

## Heading 2

This is content under Heading 2.

### Heading 3

This is content under Heading 3.
----

### The URL of the documentation pages

By default, the URL of the topic is defined by the topic title. The topic title is the first Heading 1 line in the file. If you change the title of a topic, *you also change the final URL of the topic*. 

**Example**

Here's a sample Markdown snippet, with a file header and title.

[source, markdown]
----
---
summary: <page summary>
tags: <page tags>
---

# The title of the page
----

Once the page is published, these are the URL and title:

* Title: The title of the Page
* URL: /the_title_of_the_page

### Anchors

You can create anchors to headings to be used in links. Choose a short expression for you anchor, representative of the heading.

A Markdown snippet with an anchor on a heading:

[source, markdown]
----
## Overview { #overview }

## AI models { #ai-models }

When the heading is more than one word, instead of a space use a hyphen. 
----

Check the links section for examples on how to link to an anchor on a subtopic.

### Links

Put links inline. If the URL contains spaces, replace them with %20.

Don't write bare links in the middle of a sentence, without any markup (for example, by just pasting a URL). 

Use relative paths to specify the destination. To help you build this path, use the [Relative Path extension for VSCode](https://marketplace.visualstudio.com/items?itemName=jakob101.RelativePath) and always open the repository folder in the editor, not in individual Markdown files.

Every relative link, if its destination is present in the toc.yml file, is validated when it is published. If the final URL of a relative link cannot be determined, and that link won't work, you get a warning message.

**Examples**

An example with a link to a file in the *same* folder:

[source, markdown]
----
For more information, refer to the [introduction](intro.md).
----

An example with a link to a file in a *different* folder:

[source, markdown]
----
Check out the [Integration Studio overview](../integration-studio/intro.md).
----

An example with links to a subtopic:

[source, markdown]
----
# Sample links

A markdown links demo.

* This is an anchor to the [Subtopic](#subtopic).

## Subtopic  { #subtopic }

Some content.

----

An example where the URL and the text of the link are the same:

[source, markdown]
----
See the URL: [https://example.com](https://example.com)
----


Another example, with external and internal links:

[source, markdown]
----
# Sample links

A markdown links demo.

* This is an [external link](http://example.com/).
* This is an internal link [pointing to a file in an upper directory](../../sample/sample.md).
* This is an anchor to a [subtopic](#subtopic-2-with-a-really-long-name).
* This is an anchor to a [subtopic in another file](../../sample/sample.md#subtopic).

## Subtopic 1  { #subtopic-1 }

Some content.

## Subtopic 2 with a really long name { subtopic-2-with-a-really-long-name }

Some content.
----

### Links to other repositories

To link to articles in other repositories, do not use relative links. Instead, use the following format:

`https://www.outsystems.com/tk/redirect?g=GUID`

Replace `GUID` with the unique identifier of the target article.

*Example*

To link to an article, use the following URL:

`https://www.outsystems.com/tk/redirect?g=e9f6f711-2df2-42a0-90c1-3b9bc8b3926b`


### Writing body text

Separate each paragraph from the previous and from the next element (another paragraph, a heading, a table, an image) with one empty line.

Each paragraph of the text should be contained in a single line. Don't add hard line breaks by pressing Enter mid-paragraph. Instead, set up your text editor to wrap long lines for display. See [settings for word wrap in Visual Studio Code](https://code.visualstudio.com/docs/getstarted/settings#_settings-editor) for more information.

To improve the readability of the Markdown file, add a line break at the end of a sentence. Note that this doesn't create a line break in the final rendered version of the topic.

To add a line break:

* In a sentence (equivalent to the `<br>` tag in HTML): add two spaces to the end of the line and press Enter.
* Inside a table cell: add %% (two percent characters) or `<br>` (the HTML tag). Note that the %% syntax isn't part of the standard Markdown and won't render correctly in GitHub preview.

### Images

Images in documentation should be in PNG (static images) or GIF (for animated images) format. In the image isn't decorative, supply the alternate text so the screen readers can read out the content.

Include an image in a topic using the following syntax:

[source, markdown]
----
![a description of the image content](images/my-image.png)
----

WARNING: Setting the width like `my-image.png?width=<size>` is *deprecated*. Instead of forcing the image width, edit the image so it has the width you need.

**Example**

A Markdown snippet:

[source, markdown]
----
![alt text](images/my-image.png)
----

The resulting HTML:

[source, html]
----
<img src="images/my-image.png" alt="alt text" />
----

### Lists: order, unordered, nested

*Unordered*. Start an unordered list by using an * (asterisk) character followed by a space. This creates the first list item. 

*Ordered*. Start an ordered list by using "1." followed by a space. All list items of numbered lists should start with "1." as the correct numbering is rendered in the final document.

*Nested*. Lists within lists have their list items indented with four spaces, with additional four spaces for each sub-list level.

If your list items only have a few words, don't insert an empty line between the list items. This puts the text in the list item element, which doesn't add extra space between list items.

To get lists in code blocks check the section "Code block alternative syntax".

*Examples*

A Markdown snippet with lists:

[source, markdown]
----
* First item of a list.
* Second item.
    * First item of the sub-list.

1. First item of an ordered list.
1. Second item.
    1. First item of the sub-list.

* Short list item one
* Short list item two
* Short list item three
----

### Definition lists

Definition lists are composed of terms and definitions. Definition lists aren't directly supported in Markdown and they aren't rendered in the GitHub preview. We use an extension to have definition lists in our documentation.

Line breaks and additional paragraphs in a definition are handled just like line breaks and additional paragraphs that are part of list items.

This is the syntax:

[source, markdown]
----
Definition term goes here
:   The definition itself starts in the next line after the term, starting with a ":" (colon) character, three spaces, and the definition text.

Second term here, after an empty line
:   Definition of the second term.
----

**Example**

An example of a list definition you can create with our tools:

[source, markdown]
----
MABS
:   Mobile Apps Build Service
----

### List breaks and paragraphs

If the list items have some text, add an empty line between list items. This adds more space between list items, since the list item text is rendered inside a `<p>` element.

Note that, if there are no empty lines between list items except for two list items, all the items will have extra space between them. The extra spacing is added as long as there's at least one empty line between list items.

To include a line break in a list item, use the "two spaces and end of line" method mentioned in "Writing body text".

As a convention, indent the line right after the break with 4 spaces to make it clearer that there's a line break in the line before.

To add a second paragraph to the same list item, add an empty line between paragraphs and indent the second paragraph with 4 spaces per list level. For example, if you're adding a second paragraph to a list item in the first level of a list (not an element in a sub-list of that list), indent it with 4 spaces.

**Examples**

A Markdown snippet with breaks in paragraphs:

[source, markdown]
----

* This line ends with two spaces to create a line break.  
    Even though the initial 4 spaces in this second line aren't mandatory, we use it as a convention to make it clearer that the previous line has a line break.

    Second paragraph of the first list item, indented with 4 spaces after an empty line.

    * Second-level list item (indented with 4 spaces).

        Second paragraph of the same list item, indented according to the level of the list item it belongs to (2nd level list, indenting with 4 + 4 spaces).
----

### Tables

Most tables should be written using GFM (GitHub Flavored Markdown) syntax, since table notation isn't part of the Markdown basic syntax.
You can use Markdown Table Generator to generate the basic structure of the table you want to include in your Markdown document.

GFM Markdown table syntax is straightforward and doesn't allow row or cell spanning or putting multi-line text in a cell. The first row is always the header, followed by an extra line with `-` (dashes) and optional `:` (colon) to force column alignment.

[source, markdown]
----
| Tables   |      Are      |  Cool |
|----------|:-------------:|------:|
| col 1 is |  left-aligned | $1600 |
| col 2 is |    centered   |   $12 |
| col 3 is | right-aligned |    $1 |
----

To insert a new line inside a table cell, use a `<br/>` HTML tag.
For more complex situations involving row or column spans, use HTML tags. In this case, add a `markdown="1"` attribute to the table element so that the build tool also parses the text inside the `<table>` as Markdown-formatted content.

[source, html]
----
<table markdown="1">
<tr>
<th>Heading 1</th>
<th>Heading 2</th>
</tr>
<tr>
<td>Text 1</td>
<td>**Text 2** with *italics.*</td>
</tr>
</table>
----

IMPORTANT: Don't indent `<tr>/<th>/<td>` elements with four spaces when formatting tables in Markdown, because you get a preformatted block. Use a two-space indent for the HTML elements inside the `<table>` element, or don't indent these elements at all.

### Lists inside table cells

To insert a list in a cell of Markdown table, format the list as one line of HTML.

**Examples**

Unordered list:

[source, markdown]
----
| First Header | Second Header                                   |
| ------------ | ----------------------------------------------- |
| Content Cell | <ul><li>Bullet one</li><li>Bullet two</li></ul> |
| Content Cell | Content Cell                                    |
----

Ordered list:

[source, markdown]
----
| First Header | Second Header                                   |
| ------------ | ----------------------------------------------- |
| Content Cell | <ol><li>Bullet one</li><li>Bullet two</li></ol> |
| Content Cell | Content Cell                                    |
----

### Inline code and code blocks

To include inline code in the middle of a sentence, surround the code text with ``` (grave accent) characters.

To define a code block that spans one or more lines, use the code block syntax. Put three grave accent characters at the beginning and at the end of the block. Start your code blocks in the first column, with no indentation. Create any required indentation levels using four spaces. Don't use tabs for indentation. Only use straight quotes ("" or '') in the code sample.

Optionally, put the programming language name at the beginning, to get syntax highlighting in the final document. The supported languages are: css, csharp, html, java, javascript, sql, xml. Use javascript for JSON blocks.

**Examples**

In this sentence there is `some code`.

Here is a block with JavaScript:

[source, markdown]
----
```javascript
   // This is a sample JavaScript code snippet
   var index = 0;

   for (i=0; i<5; i++) {
       console.log('Am I being repetitive?');
   }
```
----

And the result is:

[source, javascript]
----
// This is a sample JavaScript code snippet
var index = 0;

for (i=0; i<5; i++) {
    console.log('Am I being repetitive?');
}
----

### Code block alternative syntax

Indent the code text with at least four spaces more than the current indentation level and don't use the code block syntax (```). The alternative syntax for code blocks doesn't let you specify the language for syntax highlighting. 

For example, in body text, indent any code with four spaces. Inside a level-1 list item, indent your code with eight spaces to obtain a code block formatting, since extra paragraphs for the list item are defined using four spaces. For list items in deeper levels, follow the same approach, adding four spaces to the required indentation for adding more paragraphs to the list item.

**Example**

A Markdown snippet with the alternative block syntax:

[source, markdown]
----
Check the following code sample:

    var myVariable = "world";
    console.log("Hello " + myVariable);

1. This is a list item containing a code block.

    This is the second paragraph of the item. Here's the code:

        var myVariable = "world";
        console.log("Hello " + myVariable);
----

### Warning and information sections

To insert a warning or information box, use a HTML `<div>` element with `class="warning"` or `class="info"`. Include a `markdown="1"` attribute in the `<div>` element so that the build script parses the text as Markdown-formatted content. Avoid using a **Note:** section. 

Add a blank newline after the opening `<div>` tag and before the corresponding closing tag so that the VS Code previewer parses the `<div>` content as Markdown.

**Examples**

An example of warning:

[source, html]
----
```
<div class="warning" markdown="1">
 
Include your warning text here.
 
</div>
```
----
An example of additional information:

[source, html]
----
```
<div class="info" markdown="1">
 
Include your informational text here.
 
</div>
```
----
