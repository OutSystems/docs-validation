---
summary: 
tags:
guid:
locale: en-us
app_type: traditional web apps, mobile apps, reactive web apps
platform-version: o11
---

# <title>

<--!
     
* The <title> should speak to the error message or symptom that the user sees. 
  
For example:
"ORA-01000: maximum open cursors exceeded" or "Application deployment takes too long after adding a new Entity Attribute".
-->
  
## Symptoms

<--!

 * Describe the impact of the issue as it presents to the end-user or to the developer. Think of all the manifestations and symptoms as opposed to the root cause.
     
For example:
"When publishing you may encounter the following error: <error>. You may see it when publishing a module in Service Studio, when publishing a solution in Service Center, or when deploying an app in LifeTime."

-->

## Causes

<--!

* If there is more than one cause, order the causes from the easiest to confirm to the most complex to confirm.
     
-->
  
### <Cause n>

<--!

* Replace <Cause n> with a short sentence that describes the cause
* Describe the root cause
* Explain how to confirm if this is the cause impacting the user

For example:
"### Database locks
It is also possible that locks in the tables prevent the foreign key from being created by simply causing a timeout as described above. In Oracle, you might even see the following error in the event of a lock:

ORA-00054: resource busy and acquire with NOWAIT specified or timeout expired

To check if this is the case, you should work with your Database Administrator to determine if there are locks that affect the publish operation and how to resolve them."

or
 
"### Circular dependencies 
A Delete Rule can loop back to the table being deleted, which would cause the database engine to follow the delete cascade path indefinitely.
You can create an entity diagram that includes both tables in the error, to confirm this hypotheses."
         
-->

#### Resolution

<--!

* Describe how to solve the issue so that the symptom disappears:
  * Describe the steps that the user needs to do to avoid or resolve the issue
  * Or link to existing documentation that already addresses the issue
  * As a last resort, recommend to open a support case

For example:
"Review the topology of the entity model such that either:

* one of the Foreign Key relationships doesn't exist
* one of the delete rules isn't “Delete”"

-->
  
### <Cause n+1>

#### Resolution
