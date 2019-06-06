### Overview

VBCorLib is a Visual Basic 6 implementation of many classes found in the .NET framework. The classes within VBCorLib can be used nearly identically as the .NET counterpart. This allows for easy data sharing between a .NET application and VB6.

* Provides several collection types: ArrayList, Stack, Queue and Hashtable.
* Provides several encryption algorithms: Rijndael, RSA, TripleDES, DES.
* Provides many hashing algorithms: SHA1, SHA256, SHA384, SHA516, RIPMED160, MD5.
* Sign and verify data using HMAC.
* Provides easy access to many encodings for text and file handling: UTF8, UTF7, UTF16, and Windows supported encodings.
* Easy String, Array and Date manipulation with a variety of functions.
* Manipulate files with a variety of file handling classes.
* Handles files larger than 2 gigs.
* Provides a BigInteger to perform large calculations.
* Provides easy access to a console window.
* And much more...

### Documentation

The currently available documentation is for version 2.3 and is online at http://www.kellyethridge.com/vbcorlib/doc/VBCorLib.html

### Blog

There is a blog that I attempt to update on occasion at http://vbcorlib.blogspot.com/

### Binary Compatibility Mode

When VB6 builds DLLs in its "Project Compatibility" or "No Compatibility" modes, the resulting auto-
registered DLL gets a different CLSID every time. When you're building repetitively, this means that
the projects that depend on this DLL would change their GUID for that project reference with every
DLL build. In the best case, that means that the dependent project's `.vbp` file would change even
though nothing else in the project changed. In a worse case it means that project would have to be
manually reconfigured to use the new DLL every time. In the worst case, your system registry could
become polluted with thousands of registered CLSIDs at various levels, all pointing to non-existent
DLLs from temporary build directories and previously-used SCM working copies. This state is
difficult to clean up and requires some 3rd-party registry tooling to help, like maybe
[NirSoft's registry utilities](https://www.nirsoft.net/windows_registry_tools.html).

In order to avoid the above varieties of DLL hell, the main library DLL should be built in "Binary
Compatibility" mode. This will keep the CLSID of the generated DLL the same, as long as [certain
types of changes are never made](
https://docs.microsoft.com/en-us/previous-versions/visualstudio/visual-basic-6/aa242136%28v%3dvs.60%29#version-incompatible-interfaces).

See the ["Version Compatibility in ActiveX Components"](
https://docs.microsoft.com/en-us/previous-versions/visualstudio/visual-basic-6/aa733715%28v%3dvs.60%29)
section of Microsoft's VB6 documentation for full details. It consists of several in-depth articles
documenting all of the implications and tradeoffs, and should be considered carefully when
evaluating when to make certain version incompatibility breaks and how to execute them properly.

Here are some other articles that may be helpful:

* ["Demystifying version compatibility settings in Visual Basic"](
  https://www.techrepublic.com/article/demystifying-version-compatibility-settings-in-visual-basic/)
* ["INTEROP - CLSID changes every new build. How can I solve it as application asp.net does not stop
  when new DLL is registered?"](https://forums.asp.net/post/3786765.aspx)
* ["GUID Generation and VB6 Binary Compatibility"](
  https://blogs.msdn.microsoft.com/adam_nathan/2003/10/19/guid-generation-and-vb6-binary-compatibility/)
