** VBCorLib **

version 3.0 (BREAKING CHANGES)
	* Renamed cArray to CorArray.
	* Renamed cString to CorString.
	* Renamed cDateTime to CorDateTime.
	* Fixed CorArray.Copy and CorArray.CopyEx for type Double.
	* Added NewDecimals array creator.
	* Fixed CorArray.IndexOf when searching byte arrays.
	* Fixed CorArray.LastIndexOf when searching byte arrays.
	* Fixed array comparison of objects. Would break if element was Nothing.
	* Fixed CorArray.FindIndex. Returned incorrect result when supplying index.
	* Refactored CorArray.BinarySearch signature to include a CorArray.BinarySearchEx, removing need for optional values. *POSSIBLE BREAKING*
	* Updated CorArray.CreateInstance to build multi-dimension arrays in same order as VB6. *BREAKING*
	* Updated CorArray.CreateInstance to support multi-dimension arrays with selected 0 lengths.
	* Removed ciArrayTypes. Replaced with VbVarType. *BREAKING*
	* Removed CorArray.NewArray. *BREAKING*
	* Renamed CorArray.GetLength to CorArray.Length.
	* Renamed CorArray.GetRank to CorArray.Rank.
	* Fixed missing floating point leading zero before decimal.
	* Fixed max negative Long not displaying correct number.
	* Changed Convert.ToString(Nothing) returns "" instead of "Nothing".
	* Removed CorString.CharCount method. *BREAKING*
	* Removed Comparer parameter from Queue.Contains method to align more with .NET.
	* Removed Comparer parameter from Stack.Contains method to align more with .NET.
	* Added LeaveOpen constructor parameter to StreamReader.
	* Added EndOfStream property to StreamReader.
	* Added SafeHandle and SafeHandleBase types.
	* Added SafeFileHandle type.
	* Added MyBase methods to separate IObject implementations from standard Object.* calls.
	* Reordered 'Message' and 'ParamName' arguments in ArgumentException to more align with .NET. **
	* Reordered 'Message', 'ParamName', and 'ActualValue' arguments in ArgumentOutOfRangeException to more align with .NET. **
	* Fixed ArrayList.SetRange when using ICollection source would insert instead of overwriting.
	* Fixed MemoryStream SeekPosition when using FromEnd. Was off by 1.
	* Fixed MemoryStream ReadBlock not honoring lower-bound of output buffer.
	* Refactored ArrayList binary search method into BinarySearch and BinarySearchEx to require the index and count in a separate call. **
	* TimeSpan.Add and TimeSpan.Subtract now support argument of Nothing as equating to zero.
	* Added Guid.TryParse, Guid.TryParseExact and Guid.ParseExact methods.
	* Enhanced Guid parsing methods to support 'B', 'b', 'D', 'd', 'P', 'p', 'N', 'n', 'X', 'x' format specifications.
	* Changed default ToString method for Guid with no format specified from 'B' to 'D' to align with .NET 2.0.
	* Guid objects are now always read-only when using a constructor or parsing.
	* Removed Guid.FromByteArray and Guid.FromMemory methods.
	* NewGuid now accepts a byte array or memory pointer.
	* Added Char static class.
	* Fixed CorDateTime.ToLocalTime and CorDateTime.ToUniversalTime. Were not setting corret DateTimeKind.
	* Removed 'Format' parameter from Convert.ToString to align with .NET.
	* Added StringComparer class with Ordinal and OrdinalIgnoreCase implementations.
	* Removed IHashCodeProvider. *BREAKING*
	* Added IEqualityComparer.
	* Updated Hashtable to use IEqualityComparer instead of IHashCodeProvider/IComparer combination. *BREAKING*
	* Converting as many ByVal string parameters to ByRef as possible. *POSSIBLE BREAKING*
	* Fixed SHA512Managed and SHA384Managed to produce correct .NET 2.0 values instead of broken 1.0 values.
	* Added EnumeratorBase to help easily build list enumerators.
	* Path class will attempt to expand short path formats if the path exists.
	* CorString.Join method signature changed to match .NET. *BREAKING*
	* CorString.Join Separator is now required.
	* CorString.Join improved to support any array or enumerable collection of items.
	* Added CorString.IsNullOrWhiteSpace method.
	* Added Restart method to StopWatch class.
	* Removed RSAParameters InverseQ property from serialization process.
	* Updated SecurityElement Attributes property to match .NET characteristics.
	* Fixed SecurityElement AddAttributes. Should throw ArgumentException when adding duplicate attribute name.
	* Fixed SecurityElement GetAttribute. Was not unescaping escaped sequences.
	* Fixed SecurityElement constructor. Was not validating tag or text.
	* Fixed RijndaelManaged encrypting. TransformFinalBlock when using PaddingMode.None and partial block length of data would still return full block length.
	* Fixed RijndaelManaged encrypting. TransformFinalBlock when using PaddingMode.Zero and full block length of data would return additional block.
	* Removed RegistryKey support for HKEY_DYN_DATA.
	* Removed Registry.GetRootKey to align with .NET framework.
	* Removed Registry.GetSubKey to align with .NET framework.
	* Added DecoderFallback to Encoding interface.
	* Added EncoderFallback to Encoding interface.
	* Fixed UTF8Encoding to error on invalid surrogates.
	* Re-implemented UnicodeEncoding.
	* Added LeaveOpen option to BinaryReader constructor.
	* Fixed BinaryReader ReadChars and ReadBytes now return zero-length arrays if no data can be read instead of throwing an exception.
	* Fixed BinaryReader to use Decoder instead of Encoding when reading data from stream so multi-byte characters are correctly read across reads.
	* Changed CorArray.IsNull to return False for uninitialized array of objects because calling the method will initialize the array to an empty array. *BREAKING*
	* Fixed BigInteger Negate. Would fail to return positive value for boundry aligned values such as 0x80000000.
	* Fixed BigInteger Negate. Would fail to update precision when changing negative value to positive.
	* Fixed BigInteger DevRem. When dividing by a negative value, remainder should still be positive.
	* Renamed BigInteger.ToArray to BigInteger.ToByteArray to match the .net method name. *BREAKING*
	* Updated BigInteger.Parse to match .NET implementation closely. Now utilizes the NumberStyles enum.
	* Fixed CorDateTime.MaxValue to include max ticks.
	* Fixed HebrewCalendar to correctly identify all days in leap month as a leap day.
	* Added Convert.ToDateTime method.
	* Renamed ResByteEncoder to BinaryResourceEncoder. *BREAKING*
	* Renamed ResBitMapEncoder to BitMapResourceEncoder. *BREAKING*
	* Fixed BitMapResourceEncoder Encode. Was crashing because of an improper pointer being passed to an API.
	* Fixed Object.GetHashCode. Would crash with vbNullString.
	* Added additional SpecialFolder enums defined in .NET 4.
	* Added Environment.Is64BitOperatingSystem method.
	* Added StringBuilder.Clear method.
	* Renamed BinaryReader "ReadLong" and "ReadInteger" methods to "ReadInt32" and "ReadInt16" to align with .NET methods. *BREAKING*
	* Renamed IniFile "GetLong" and "GetInteger" methods to "GetInt32" and "GetInt16" to more align with .NET naming. *BREAKING*
	* Renamed IniSectionWriter to IniResourceWriter. *BREAKING*
	* Implemented IResourceWriter.CloseWriter in IniResourceWriter.
	* Fixed tests that would break when run against a compiled VBCorLib.
	* Fixed BitMapResourceDecoder. Was crashing when compiled because of improper release of resources.
	* Removed WeakReference class because it is severely limited and unstable.
	* Added CorArray.IsNullOrEmpty method.
	* Added optional parameters to Path.Combine method.
	* Added Path.CombineArray method.
	* Renamed incorrectly spelled static method TimeSpan.CompareTo to TimeSpan.Compare.
	* Added formatting functionality to TimeSpan.ToString method.
	* Added StringBuilder.AppendFormatArray and StringBuilder.AppendFormatArrayEx methods.
	* Changed StringReader contructor to accept parameter indicating of string should be copied, replacing parameter indicating string should be stolen. *BREAKING*
	* Fixed CorDateTime.ToAODAte. Would round to incorrect time when having enough milliseconds.
	* Added Int64 user-defined type.
	* Added user-defined type support in ObjectStatic.
	* Re-implemented MemoryMappedFile to create a MemoryMappedViewAccessor.
	* Added MemoryMappedViewAccessor to access mapped views of a file.
	* Fixed MemoryStream. Should through ObjectDisposedException when reading Position property when closed.
	* Re-implemented MemoryMappedFile to align with .NET 4.0.
	* Added CopyTo method to Stream interface to align with .NET 4.0.
	* Renamed IVersionableCollection interface to IVersionable.
	* Added ReadInt64 to BinaryReader to support Int64 structure.	
	* Added support for Int64 to BinaryWriter.WriteValue method.
	* Renamed BitConverter class ToLong and ToInteger to ToInt32 and ToInt16 to match .NET. *BREAKING*
	* Changed BinaryReader.ReadDate to read binary data that represents ticks to match .NET. *BREAKING*
	* Changed BinaryWriter.WriteDate to write binary data that represents ticks to match .NET. *BREAKING*
	* Changed BitConverter class to handle Date as ticks to match .NET. *BREAKING*
	* Added Int64 static methods for manipulating and creating an Int64 data-type.
	* Added CInt64 for easy conversion to Int64 data-type.
	* Added support for BigInteger to be initialized from an Int64.
	* Fixed NewCultureInfo(String). Should not be case-sensitive.
	* Fixed BinaryWriter.SeekPostion. Was not returning new position.
	* Fixed BinaryWriter.WriteChar. Was not converting large 32-bit values to 16-bit correctly.
	* Added charactor formatting for Long, Integer, Byte, and Int64 to Object.ToString method. '$' forces the numeric value to converted to a character.
	* Replaced CorString.FromCharArray with NewString constructor.
	* Added BigMul to CorMath class.
	* Added Int64 support to CorMath.Max and CorMath.Min methods.

version 2.3
	* Updated ASM code to not trigger DEP protection.
	* Updated ArrayList to include the ArrayList.Adapter method, wrapping an IList object.
	* Fixed the StringBuilder.Remove method.
	* Updated Console class to automatically disable the close button on a command prompt when working in the IDE.
	* Added TryParse to TimeSpan.
	* Added TryParse to cDateTime.

version 2.2
	* Added the BigInteger class
	* Fixed Queue class. Incorrectly zeroed out memory, causing a crash.
	* Fixed Path class. Incorrectly handled files begining with a period.
	* Fixed Path class. Incorrectly handled directory names that include '..' to move up a directory.
	* Fixed HebrewCalendard class. Incorrectly handled day 355 of a leap year.
	* Fixed JapaneseCalender class. Incorrectly handled the start of each year after the first of an era.
	* Fixed DSAParameter class. Now includes the J parameter on XML export.

version 2.1
	* Added Wide Character API support to INIFile and INISectionWriter classes
	* Added EmptyGuid to the GuidStatic class.
	* Fixed the Wide Character support for file API calls used on NT machines.
	* Fixed the return types for SHA384Static and SHA512Static create methods.

version 2.0
	* Many many cryptography classes have been added.
	* This list is only a portion of all the additions and changes to the library.

Symmetric Algorithms
--------------------
Rijndael
DES
Triple DES
RC2

Asymmetric Algorithms
---------------------
RSA

Asymmetric signing and verification algorithms
----------------------------------------------
RSA
DSA

Hash Algorithms
---------------
SHA-1
SHA-256
SHA-384
SHA-512
MD5
RIPEMD160

Message Authentication Code Algorithms
--------------------------------------
HMACSHA-1
HMACSHA-256
HMACSHA-384
HMACSHA-512
HMACMD5
HMACRIPEMD160
TripleDES Mac

Password Generators
-------------------
Rfc2898DeriveBytes

Utility Classes
---------------
CryptoStream
CryptoConfig
SecurityElement
RNGCryptoServiceProvider


Unicode API support
-------------------
All of the file, directory and registry classes support Unicode directly on NT
machines. This allows for long file names (over 32k).

VBCultures.nlp and Resource File
--------------------------------
The VBCultures.nlp file has been included as a resource to be compiled directly
into the library. This is to reduce the dependency of handling multiple files
for distribution.

There are also several code updates through the library.


If you have any questions, please visit the VBCorLib website:
http://www.kellyethridge.com/vbcorlib
