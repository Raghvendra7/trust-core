// Copyright © 2017-2018 Trust.
//
// This file is part of Trust. The full Trust copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.

import TrustCore
import XCTest

class IconAddressTests: XCTestCase {

    func testInvalid() {
        XCTAssertNil(IconAddress(string: "abc"))
        XCTAssertNil(IconAddress(string: "dshadghasdghsadadsadjsad"))
    }

    func testIsValid() {
        XCTAssertFalse(IconAddress.isValid(string: "abc"))
        XCTAssertFalse(IconAddress.isValid(string: "0x5aAeb6053F3E94C9b9A09f33669435E7Ef1BeAed"))
        XCTAssertTrue(IconAddress.isValid(string: "hx116f042497e5f34268b1b91e742680f84cf4e9f3"))
        XCTAssertTrue(IconAddress.isValid(string: "cx116f042497e5f34268b1b91e742680f84cf4e9f3"))
    }

    func testFromPrivateKey() {
        let privateKey = PrivateKey(data: Data(hexString: "94d1a980d5e528067d44bf8a60d646f556e40ca71e17cd4ead2d56f89e4bd20f")!)!
        let address = privateKey.publicKey().iconAddress
        XCTAssertEqual(address.description, "hx98c0832ca5bd8e8bf355ca9491888aa9725c2c48")
    }

    func testDescription() {
        let address = IconAddress(string: "hx116f042497e5f34268b1b91e742680f84cf4e9f3")!
        XCTAssertEqual(address.description, "hx116f042497e5f34268b1b91e742680f84cf4e9f3")
    }
}
