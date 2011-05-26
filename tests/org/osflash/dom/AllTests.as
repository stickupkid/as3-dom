package org.osflash.dom
{
	import org.osflash.dom.element.DOMDocumentTest;
	import org.osflash.dom.element.utils.CloneFromDisplayObjectsTest;
	import org.osflash.dom.path.DOMPathAttributeTest;
	import org.osflash.dom.path.DOMPathNameIndexAccessTest;
	import org.osflash.dom.path.DOMPathNameTest;
	import org.osflash.dom.path.DOMPathWildcardIndexAccessTest;
	import org.osflash.dom.path.DOMPathWildcardTest;
	[Suite]
	public class AllTests
	{
		
		// Document
		public var _CloneFromDisplayObjectsTest:CloneFromDisplayObjectsTest;
		public var _DOMDocumentTest:DOMDocumentTest;
		
		// Path
		public var _DOMPathAttributeTest:DOMPathAttributeTest;
		public var _DOMPathNameIndexAccessTest:DOMPathNameIndexAccessTest;
		public var _DOMPathNameTest:DOMPathNameTest;
		public var _DOMPathWildcardIndexAccessTest:DOMPathWildcardIndexAccessTest;
		public var _DOMPathWildcardTest:DOMPathWildcardTest;
	}
}
