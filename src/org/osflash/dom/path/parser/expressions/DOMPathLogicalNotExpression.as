package org.osflash.dom.path.parser.expressions
{
	import org.osflash.dom.path.parser.stream.IDOMPathOutputStream;
	/**
	 * @author Simon Richardson - simon@ustwo.co.uk
	 */
	public final class DOMPathLogicalNotExpression extends DOMPathExpression
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

		public function DOMPathLogicalNotExpression(	left : IDOMPathExpression, 
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
						
			stream.writeUTF("||");
			
			_right.describe(stream);
		}
		
		/**
		 * @inheritDoc
		 */
		override public function get type() : DOMPathExpressionType
		{
			return DOMPathExpressionType.LOGICAL_NOT;
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
