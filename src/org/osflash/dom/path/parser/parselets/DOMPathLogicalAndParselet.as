package org.osflash.dom.path.parser.parselets
{
	import org.osflash.dom.path.parser.tokens.DOMPathTokenType;
	import org.osflash.dom.path.parser.DOMPathPrecedence;
	import org.osflash.dom.path.parser.IDOMPathParser;
	import org.osflash.dom.path.parser.expressions.DOMPathLogicalAndExpression;
	import org.osflash.dom.path.parser.expressions.IDOMPathExpression;
	import org.osflash.dom.path.parser.tokens.DOMPathToken;
	/**
	 * @author Simon Richardson - simon@ustwo.co.uk
	 */
	public final class DOMPathLogicalAndParselet implements IDOMPathInfixParselet
	{
		
		
		/**
		 * @inheritDoc
		 */
		public function parse(	parser : IDOMPathParser, 
								expression : IDOMPathExpression, 
								token : DOMPathToken
								) : IDOMPathExpression
		{
			parser.consumeToken(DOMPathTokenType.AMPERSAND);
			
			const right : IDOMPathExpression = parser.parseExpression();
			return new DOMPathLogicalAndExpression(expression, right);
		}
		
		/**
		 * @inheritDoc
		 */
		public function get precedence() : int
		{
			return DOMPathPrecedence.EQUALITY;
		}
	}
}
