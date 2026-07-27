---
description: What to do about generic or unclassified GeoDin error messages that do not point to a specific known cause.
---

# General error messages

This page is the home for generic error messages that do not carry enough
information to point to a specific, known cause. If your message matches one
of the other troubleshooting pages, use that page instead - the steps below
are for messages that do not fit anywhere else.

## Access violation

<!-- src: support/access-violation#fix -->

Unfortunately, this message does not carry precise diagnostic information -
the numbers it displays do not reliably identify the cause.

* First, close GeoDin completely and open it again. The underlying error can
  persist in the background even after you dismiss the dialog, so the message
  may reappear on a later, unrelated action that has nothing to do with the
  original cause.
* If the message keeps recurring, contact [support](../get-support.md) and
  describe:
  * Which action triggered the error.
  * What you did immediately before it appeared.
  * Which methods or windows were open in the background at the time.

Unsaved edits left open in another input mask, followed by a switch to a
different method, are a common factor - mention this if it applies to your
case. This detail helps support reproduce and resolve the problem faster.
