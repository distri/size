Size = require "../main"

describe "Size", ->
  it "should have a width and height", ->
    size = Size(10, 10)

    assert.equal size.width, 10
    assert.equal size.height, 10

  it "should be createable from an array", ->
    size = Size [5, 4]

    assert.equal size.width, 5
    assert.equal size.height, 4

  it "should be createable from an object", ->
    size = Size
      width: 6
      height: 7

    assert.equal size.width, 6
    assert.equal size.height, 7

  it "should iterate", ->
    size = Size(4, 5)
    total = 0

    size.each (x, y) ->
      total += 1

    assert.equal total, 20
