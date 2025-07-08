# [Process title - starts with verb+ing]
**Example:** "Creating a screen template"

{A process document describes in high-level the steps needed to complete a task end-to-end. For example, the process to set up log streaming involves the following steps:
1. Retrieve the APM server tool authentication credentials.
2. (Optional) Set up OpenTelemetry collector.
3. Configure LifeTime.

Some of these steps can be separate procedures.

The process document helps developers to quickly understand the overall workflow, the sequence of major tasks, and the end result. It also serve as a bridge between conceptual information and detailed procedures, offering essential context and guidance for successfully implementing a capability.}

## [Paragraph] *(No heading)*
{ An intro sentence or paragraph that provides a summary of steps needed to complete the task. For example, To set up the log streaming, you must retrieve the APM server authentication details then if needed set up the OpenTelemetry collector and configure log streaming in LifeTime with these details.  } 

## Prerequisites

Before you {insert a brief description of the process}, ensure:
* Prerequisite 1   
* Prerequisite 2  
* Prerequisite 3


## High-level process to {describe the task}

**Example:** "High-level process to set up log streaming", "High-level process to authenticate ODC REST API"

{

* Add a high-level diagram such as sequence diagram, flow charts, process flow that describes the steps to complete the task end-to-end.
  
* List the high-level steps to complete the task.

Start with a lead-in sentence, followed by a bulleted or numbered list of the high-level steps or procedures.

* Describe the high-level steps, not detailed step-by-step instructions.  
  Answer questions like:  
    * What are the steps needed to complete the task?  
    * Why do you need those steps?
 
}

**Example**  
To set up log streaming, follow these steps:

1. Retrieve the APM tool's server URL and the authentication credentials.

2. (Optional) [Set up OpenTelemetry collector](procedure.md).

3. [Configure LifeTime](procedure.md).

4. Test and validate the connection In LifeTime, test if your app has established a connection with the APM tool and validate if the test data is sent to the destination tool. 

## Next steps

{Include references and links to other related documentation such as the individual procedures users can follow. Ensure these references create a logical connection from the current process to guide users on their journey. This helps users easily find additional information or next steps to continue their task. 

* Procedure link 1
* Procedure link 2
* Troubleshooting link}

## Related resources

{Optional: Include links to concepts or external resources that can help users accomplish the task or learn more about the feature. These additional resources provide users with further guidance and information to enhance their understanding and proficiency. If there are multiple resources, consider grouping them by content type and include a short introductory sentence.

* Concept
* Relevant external link
}
_________________________________________________________________________________________________________________________________________________________________
**DELETE THIS SECTION:**  
For more information, go to the [TK Template Confluence](https://outsystemsrd.atlassian.net/wiki/spaces/TK/pages/2488336658/Technical+Knowledge+Templates#Process) page.
