// The MIT License (MIT)
//
// Copyright © 2022 Egor Badmaev
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

/// An object that represents emoji.
public struct Emoji: Decodable, Identifiable {
    /// Emoji identifier.
    public let id: String
    /// Name of an emoji.
    public let name: String
    /// Keywords for an emoji.
    public let keywords: [String]
    /// Skin tones.
    public let skins: [Skin]
    /// Version in which the emoji appeared.
    public let version: Double
    /// Skin tone number. We save it so user can use the skin he chose.
    public var skinToneIndex = 0
    
    enum CodingKeys: String, CodingKey {
        case id, name, keywords, skins, version
    }
}

extension Emoji {
    /// String emoji. For example: 😄
    ///
    /// Shows in the collection view.
    public var emoji: String {
        return skins[skinToneIndex].native
    }
}
