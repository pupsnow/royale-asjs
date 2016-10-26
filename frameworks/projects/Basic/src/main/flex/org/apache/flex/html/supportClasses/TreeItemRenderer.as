////////////////////////////////////////////////////////////////////////////////
//
//  Licensed to the Apache Software Foundation (ASF) under one or more
//  contributor license agreements.  See the NOTICE file distributed with
//  this work for additional information regarding copyright ownership.
//  The ASF licenses this file to You under the Apache License, Version 2.0
//  (the "License"); you may not use this file except in compliance with
//  the License.  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
////////////////////////////////////////////////////////////////////////////////
package org.apache.flex.html.supportClasses
{	
	public class TreeItemRenderer extends StringItemRenderer
	{
		/**
		 * Constructor.
         *
         *  @langversion 3.0
         *  @playerversion Flash 10.2
         *  @playerversion AIR 2.6
         *  @productversion FlexJS 0.0
		 */
		public function TreeItemRenderer()
		{
			super();
		}
		
		/**
		 * Sets the data for the itemRenderer instance along with the listData
		 * (TreeListData).
         *
         *  @langversion 3.0
         *  @playerversion Flash 10.2
         *  @playerversion AIR 2.6
         *  @productversion FlexJS 0.0
		 */
		override public function set data(value:Object):void
		{
			super.data = value;
			
			var treeData:TreeListData = listData as TreeListData;
			var indentSpace:String = "    ";
			
			COMPILE::JS {
				indentSpace = "&nbsp;&nbsp;&nbsp;&nbsp;"
			}
			
			var indent:String = treeData.hasChildren ? (treeData.isOpen ? "▼" : "▶") : " ";
			for (var i:int=0; i < treeData.depth; i++) {
				indent += indentSpace;
			}
			
			this.text = indent + this.text;
		}
	}
}
