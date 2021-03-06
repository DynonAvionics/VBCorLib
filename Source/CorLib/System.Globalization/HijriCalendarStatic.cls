VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "HijriCalendarStatic"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
'The MIT License (MIT)
'Copyright (c) 2017 Kelly Ethridge
'
'Permission is hereby granted, free of charge, to any person obtaining a copy
'of this software and associated documentation files (the "Software"), to deal
'in the Software without restriction, including without limitation the rights to
'use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
'the Software, and to permit persons to whom the Software is furnished to do so,
'subject to the following conditions:
'
'The above copyright notice and this permission notice shall be included in all
'copies or substantial portions of the Software.
'
'THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
'INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
'PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
'FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
'OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
'DEALINGS IN THE SOFTWARE.
'
'
' Module: HijriCalendarStatic
'

''
' Provides static methods to support the Hijri calendar.
'
' @remarks To access the methods of this class, use the <a href="HijriCalendar.html">HijriCalendar</a> method name followed by the method to execute.
' <p><h4>Example</h4><br>
' <pre>
' i = HijriCalendar.HijriEra
' </pre>
'
' @see HijriCalendar
'
Option Explicit

Private mMinDateTime As CorDateTime
Private mMaxDateTime As CorDateTime


''
' Returns the current era for the Hijra calendar. This returns a constant of 1.
'
' @return The current era.
'
Public Property Get HijriEra() As Long
    HijriEra = 1
End Property

Friend Property Get MinDateTime() As CorDateTime
    Set MinDateTime = mMinDateTime
End Property

Friend Property Get MaxDateTime() As CorDateTime
    Set MaxDateTime = mMaxDateTime
End Property


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'   Constructors
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Private Sub Class_Initialize()
    Set mMinDateTime = Cor.NewDate(#7/18/622#)
    Set mMaxDateTime = CorDateTime.MaxValue
End Sub
