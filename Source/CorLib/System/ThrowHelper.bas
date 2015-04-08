Attribute VB_Name = "ThrowHelper"
'The MIT License (MIT)
'Copyright (c) 2015 Kelly Ethridge
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
' Module: ThrowHelper
'
Option Explicit

Public Sub ThrowArgumentException(Optional ByVal Message As ResourceString = Argument_Exception, Optional ByVal ParameterName As ResourceString = Parameter_None)
    Throw Cor.NewArgumentException(Environment.GetResourceString(Message), Environment.GetResourceString(ParameterName))
End Sub

Public Sub ThrowArgumentOutOfRangeException(Optional ByVal ParameterName As ResourceString = Parameter_None, Optional ByVal Message As ResourceString = ArgumentOutOfRange_Exception)
    Throw Cor.NewArgumentOutOfRangeException(Environment.GetResourceString(ParameterName), Message:=Environment.GetResourceString(Message))
End Sub

'Public Sub CannotBeLessThanLBound(Optional ByVal Parameter As Param = Param.Index)
'    Throw Cor.NewArgumentOutOfRangeException(Environment.GetResourceString(Parameter), Message:=Environment.GetResourceString(ArgumentOutOfRange.LowerBound))
'End Sub
'
'Public Sub CannotBeNegative(Optional ByVal Parameter As Param = Param.Count)
'    Throw Cor.NewArgumentOutOfRangeException(Environment.GetResourceString(Parameter), Message:=Environment.GetResourceString(ArgumentOutOfRange.NeedNonNegNum))
'End Sub
'
'Public Sub PositionNotValidForCollection()
'    Throw Cor.NewArgumentException(Environment.GetResourceString(Argument_InvalidOffLen))
'End Sub
