package org.osflash.dom.path.parser.expressions.instances
{
	import org.osflash.dom.path.parser.expressions.DOMPathExpression;
	import org.osflash.dom.path.parser.expressions.DOMPathExpressionType;
	import org.osflash.dom.path.parser.expressions.IDOMPathExpression;
	import org.osflash.dom.path.parser.expressions.IDOMPathLeftRightNodeExpression;
	import org.osflash.dom.path.stream.IDOMPathOutputStream;
	/**
	 * @author Simon Richardson - simon@ustwo.co.uk
	 */
	public final class DOMPathInfixAttributeExpression extends DOMPathExpression
													implements IDOMPathLeftRightNodeExpression
	{
		
		/**
		 * @private
		 */
		private var _left : IDOMPathExpression;
		
		/**
		 * @private
		 */
		private var _right : IDOMPathExpression;
		
		public function DOMPathInfixAttributeExpression(	left : IDOMPathExpression,
													right : IDOMPathExpression
													)
		{
			if(null == left) throw new ArgumentError('Given left can not be null');
			if(null == right) throw new ArgumentError('Given right can not be null');
			
			_left = left;
			_right = right;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function describe(stream : IDOMPathOutputStream) : void
		{
			_left.describe(stream);
			
			stream.writeUTF('@');
			_right.describe(stream);
		}

		/**
		 * @inheritDoc
		 */
		override public function get type() : DOMPathExpressionType
		{
			return DOMPathExpressionType.INFIX_ATTRIBUTE;
		}
		
		public function get left() : IDOMPathExpression
		{
			return _left;
		}

		public function get right() : IDOMPathExpression
		{
			return _right;
		}
	}
}
