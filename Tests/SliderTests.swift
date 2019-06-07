//
//  SliderTests.swift
//
//
//  SwiftySettings
//  Created by Tomasz Gebarowski on 24/08/15.
//  Copyright © 2015 codica Tomasz Gebarowski <gebarowski at gmail.com>.
//  All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//
import Quick
import Nimble

@testable import SwiftySettings

class SliderTests: QuickSpec {
    
    override func spec() {
        describe("Slider") {

            it("should trigger ValueChanged when value changes") {
                let sliderKey = "key1"
                let slider1 = Slider(key: sliderKey,
                                     title: "Title 1")
                slider1.storage = StorageStub()
                triggersChangedValueFor(item: slider1,
                                        assertedKey: sliderKey,
                                        assertedValue: 89)
            }
        }
    }
}
