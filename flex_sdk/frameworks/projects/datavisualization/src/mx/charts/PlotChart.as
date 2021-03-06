////////////////////////////////////////////////////////////////////////////////
//
//  ADOBE SYSTEMS INCORPORATED
//  Copyright 2009 Adobe Systems Incorporated
//  All Rights Reserved.
//
//  NOTICE: Adobe permits you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

package mx.charts
{

import mx.charts.chartClasses.CartesianChart;
import mx.charts.chartClasses.DataTip;
import mx.charts.renderers.BoxItemRenderer;
import mx.charts.renderers.CircleItemRenderer;
import mx.charts.renderers.DiamondItemRenderer;
import mx.charts.styles.HaloDefaults;
import mx.core.ClassFactory;
import mx.core.IFactory;
import mx.graphics.IFill;
import mx.graphics.SolidColor;
import mx.graphics.Stroke;
import mx.styles.CSSStyleDeclaration;
import mx.core.IFlexModuleFactory;
import mx.core.mx_internal;

use namespace mx_internal;

[DefaultBindingProperty(destination="dataProvider")]

[DefaultTriggerEvent("itemClick")]

[IconFile("PlotChart.png")]

/**
 *  The PlotChart control represents data with two values for each data point.
 *  One value determines the position of the data point along the horizontal
 *  axis, and one value determines its position along the vertical axis.
 *  
 *  <p>The PlotChart control expects its <code>series</code> property
 *  to contain an Array of PlotSeries objects.</p>
 * 
 *  @mxml
 *  
 *  The <code>&lt;mx:PlotChart&gt;</code> tag inherits all the properties
 *  of its parent classes and adds the following properties:</p>
 *  
 *  <pre>
 *  &lt;mx:PlotChart
 *  /&gt;
 *  </pre> 
 *  
 *  
 *  @includeExample examples/PlotChartExample.mxml
 *  
 *  @see mx.charts.series.PlotSeries
 *  
 *  @langversion 3.0
 *  @playerversion Flash 9
 *  @playerversion AIR 1.1
 *  @productversion Flex 3
 */
public class PlotChart extends CartesianChart
{
    include "../core/Version.as";

	//--------------------------------------------------------------------------
	//
	//  Class initialization
	//
	//--------------------------------------------------------------------------

	//--------------------------------------------------------------------------
	//
	//  Constructor
	//
	//--------------------------------------------------------------------------

	/**
	 *  Constructor.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 9
	 *  @playerversion AIR 1.1
	 *  @productversion Flex 3
	 */
	public function PlotChart()
	{
		super();
	}

	//--------------------------------------------------------------------------
	//
	//  Variables
	//
	//--------------------------------------------------------------------------
	
	/**
	 *  @private
	 */
	private var _moduleFactoryInitialized:Boolean = false;
	
	//--------------------------------------------------------------------------
	//
	//  Overridden methods: UIComponent
	//
	//--------------------------------------------------------------------------
	
	/**
	 *  @private
	 */
	private function initStyles():Boolean
	{
		HaloDefaults.init(styleManager);
		
		var plotChartStyle:CSSStyleDeclaration =
			HaloDefaults.createSelector("mx.charts.PlotChart", styleManager);
		
		var plotChartSeriesStyles:Array /* of Object */ = [];
		
		var defaultSkins:Array /* of IFactory */ = [ new ClassFactory(DiamondItemRenderer),
			new ClassFactory(CircleItemRenderer),
			new ClassFactory(BoxItemRenderer) ];
		var defaultSizes:Array /* of Number */ = [ 5, 3.5, 3.5 ];
		
		var n:int = HaloDefaults.defaultFills.length;
		for (var i:int = 0; i < n; i++)
		{
			var styleName:String = "haloPlotSeries"+i;
			plotChartSeriesStyles[i] = styleName;
			
			var o:CSSStyleDeclaration =
				HaloDefaults.createSelector("." + styleName, styleManager);
			
			var f:Function = function(o:CSSStyleDeclaration, skin:IFactory,
									  fill:IFill, radius:Number):void
			{
				o.defaultFactory = function():void
				{
					this.fill = fill;
					this.itemRenderer = skin;
					this.radius = radius
				}
			}
			
			f(o, defaultSkins[i % defaultSkins.length],
				HaloDefaults.defaultFills[i],
				defaultSizes[i % defaultSizes.length]);
		}
		
		plotChartStyle.defaultFactory = function():void
		{
			this.axisColor = 0xD5DEDD;
			this.chartSeriesStyles = plotChartSeriesStyles;
			this.dataTipRenderer = DataTip;
			this.fill = new SolidColor(0xFFFFFF, 0);
			this.calloutStroke = new Stroke(0x888888,2);			
			this.fontSize = 10;
			this.gridLinesStyleName = "bothGridLines";
			this.horizontalAxisStyleName = "blockNumericAxis";
			this.secondHorizontalAxisStyleName = "blockNumericAxis";
			this.secondVerticalAxisStyleName = "blockNumericAxis";
			this.textAlign = "left";
			this.verticalAxisStyleName = "blockNumericAxis";
			this.horizontalAxisStyleNames = ["blockNumericAxis"];
			this.verticalAxisStyleNames = ["blockNumericAxis"];
		}
		
		return true;
	}

	
	/**
	 *  @inheritDoc
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 9
	 *  @playerversion AIR 1.1
	 *  @productversion Flex 3
	 */
	override public function set moduleFactory(factory:IFlexModuleFactory):void
	{
		super.moduleFactory = factory;
		
		if (_moduleFactoryInitialized)
			return;
		
		_moduleFactoryInitialized = true;
		
		// our style settings
		initStyles();
	}
	
	//--------------------------------------------------------------------------
	//
	//  Overridden methods: CartesianChart
	//
	//--------------------------------------------------------------------------

	/**
	 *  @private
	 */
	override protected function initSecondaryMode():void
	{
		super.initSecondaryMode();
		
		if (!secondVerticalAxis)
			secondVerticalAxis = new LinearAxis();
		
		if (!secondHorizontalAxis)
			secondHorizontalAxis = new LinearAxis();
		
		if (!secondVerticalAxisRenderer)
			secondVerticalAxisRenderer = new AxisRenderer();			

		if (!secondHorizontalAxis)
			secondHorizontalAxis = new LinearAxis();
		
		if (!secondHorizontalAxisRenderer)
			secondHorizontalAxisRenderer = new AxisRenderer();			
	}
}

}
