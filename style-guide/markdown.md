# Writing in Markdown

## Writing in Markdown

We write our documentation using the Markdown markup language. It's a lightweight language, based on plain text, that lets us focus on the content while still being able to add formatting, structure, images, and tables. You can use HTML in your Markdown topics, but only if you have to, for complex tables or complex layouts.

Content is king in Markdown. Pay attention to your content and the document structure, and not how the topic displays. If you're converting content from HTML or PDF, don't try to replicate all of the formatting, particularly complex tables and "decorative" elements.

Keep it simple. Use white space, to let the text "breathe." When in doubt, add blank lines between different document elements. For example, you can add lines between headings, paragraphs, tables, and images. There are a few exceptions mentioned throughout this chapter.

See [Daring Fireball](https://daringfireball.net/projects/markdown/syntax) for more information about Markdown syntax.

### Markdown files

When creating a new Markdown file, make sure you follow the structure and naming conventions described in [Working with files](./working-with-files.md).

### Basic formatting

- **Bold**: Surround the words with `**` (two asterisks), no spaces.
- *Italic*: Surround the words with `_` (underscores), no spaces. You rarely, if ever, need italic.

**Example**

Markdown:

```markdown
Some **bold words** and some _italic words_.
```

Result:

Some **bold words** and some _italic words_.

### Headings

Headings are defined using one or more `#` (hash) characters placed in the first column of a given line. The number of `#` characters define the heading level.

General rules for headings:

- Use only one Heading 1 in a topic, because Heading 1 defines the topic title. Titles must only contain letters from the English alphabet, numbers, dashes, and periods.
- Don't skip heading levels. For example, don't use a Heading 3 right after a Heading 1, without a Heading 2 in-between.
- Always leave an empty line before and after a heading line.

**Example**

A Markdown snippet with three headings:

```markdown
# Heading 1

This is content under Heading 1.

## Heading 2

This is content under Heading 2.

### Heading 3

This is content under Heading 3.
```

### The URL of the documentation pages

By default, the URL of the topic is defined by the topic title. The topic title is the first Heading 1 line in the file. If you change the title of a topic, *you also change the final URL of the topic*.

**Example**

Here's a sample Markdown snippet, with a file header and title.

```markdown
---
summary: <page summary>
tags: <page tags>
---

# The title of the page
```
