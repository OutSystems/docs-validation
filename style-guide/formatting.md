# Formatting

## Formatting

Use consistent formatting across all content.

### Typographical emphasis

- **Bold**: Use bold to denote the text as it's in the user interface (UI), such as labels, buttons, or links. You can also use bold for occasional emphasis.
- *Italic*: Don't use italic. Don't mix italic and bold.
- **Underline**: Don't use underline, as browsers use it to show links.

**Examples**

- In the **New Application** window, select **Phone App** or **Tablet App** app template.
- Click **Generate App**.
- Enter the information for the **Basics** blade and click **OK** to proceed to the next blade.
- Choose **USERS** and click the **New User** link.

### User inputs and interface labels

- Use **bold** for interface labels, and write them using the same capitalization as they display on the user interface.
- Use a monospace font to identify the text users need to enter. If you're using Markdown, use inline code to get a monospace font.

**Examples**

- Enter `"display-flex"` in the input field.
- Create a Container. Enter `MyContainer` in the **Name** property.

### Properties: names and values

- Use **bold** for property names and write them using the same capitalization as they appear on the UI.
- Use inline code for property values when the user enters/types the value.
- Use bold for variable values when the user selects the variable value, for example, from a dropdown.

**Example**

- To restrict the elements to internal network access, in the **Internal Access** property, enter `Yes`.
- To restrict the elements to internal network access, from the **Internal Access** dropdown, select **Yes**.

### Keyboard shortcuts

- Use sentence capitalization and spell the key name as it appears on the keyboard. Use bold when the shortcut appears in the sentence.

**Examples**

- Ctrl+Shift+S
- Esc
- F1
- To open a new window, select **Ctrl+N**.

### Code examples

- Use code blocks for code examples. If your text editor has that option, specify the programming language of the example code.

**Example**

A JavaScript code snippet:

```javascript
// Return success in GlobalAsyncAction client action
$parameters.Success = true;
$parameters.Out1 = 5.0;
$resolve();
```

A JSON code snippet:

```json
{
  "key": "value"
}
```

### Screenshots and illustrations

Screenshots and illustrations should be a useful addition to the content, and not critical to the understanding of the content or following a procedure.

- Use screenshots to guide users in a complicated or long procedure, to show complex windows or dialog boxes, or to emphasize a new feature.
