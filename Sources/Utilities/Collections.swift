/*:
# Collections

Becuase we have a way to generically "compose" things, we can derive a bunch of interesting operations on collections of such things.
*/

extension Sequence where Iterator.Element: Magma {
	public func concatenatedWith(initial: Iterator.Element) -> Iterator.Element {
		return reduce(initial, <>)
	}
}

extension Sequence where Iterator.Element: Monoid {
	public var concatenated: Iterator.Element {
		return concatenatedWith(initial: Iterator.Element.e)
	}
}