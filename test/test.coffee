Size = require "../main"

describe "Size", ->
  it "should have a width and height", ->
    size = Size(10, 10)

    assert.equal size.width, 10
    assert.equal size.height, 10
