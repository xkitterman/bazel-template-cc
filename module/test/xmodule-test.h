//
// MIT License
// 
// Copyright (c) 2016 Jordan Kitterman
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//

#pragma once

#include "gmock/gmock.h"
#include "gtest/gtest.h"

//-----------------------------------------------------------------------------
// Test Fixture Class Template
//-----------------------------------------------------------------------------
template <class XModule>
class XModuleTest : public testing::Test
{
    protected:
        XModuleTest()
        {

        }

        virtual ~XModuleTest()
        {

        }

        XModule module;
};

//-----------------------------------------------------------------------------
// Test Case Setup
//-----------------------------------------------------------------------------
TYPED_TEST_CASE_P(XModuleTest);

//-----------------------------------------------------------------------------
// Test Case(s)
//-----------------------------------------------------------------------------
TYPED_TEST_P(XModuleTest, Test1)
{
    const std::string name = "";

    this->module.setName(name);
    EXPECT_EQ(name, this->module.getName());
}

TYPED_TEST_P(XModuleTest, Test2)
{
    const std::string name = "Module1";

    this->module.setName(name);
    EXPECT_EQ(name, this->module.getName());
}

//-----------------------------------------------------------------------------
// Test Case Registration
//-----------------------------------------------------------------------------
REGISTER_TYPED_TEST_CASE_P
(
    XModuleTest,
    Test1,
    Test2
);
