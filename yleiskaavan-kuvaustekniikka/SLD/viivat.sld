<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" version="1.1.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ogc="http://www.opengis.net/ogc" xmlns:se="http://www.opengis.net/se">
  <NamedLayer>
    <se:Name>Yleiskaava_viivat</se:Name>
    <UserStyle>
      <se:Name>Yleiskaava_viivat</se:Name>
      <se:FeatureTypeStyle>
	  
	  <se:Rule> 
		  <se:Name>MRL_yk_9</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 9</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>9</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
         <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
           <se:Stroke>
             <se:GraphicStroke>
                 <se:Graphic>
                  <se:ExternalGraphic>
                    <se:OnlineResource xlink:type="simple" xlink:href="https://raw.githubusercontent.com/GispoCoding/qaava/master/yleiskaavan-kuvaustekniikka/SVG/9.svg"/>
						<se:Format>image/svg+xml</se:Format>
                  </se:ExternalGraphic> 
                  <se:Size>
					<ogc:Literal>30</ogc:Literal>
				  </se:Size>
                </se:Graphic>
             </se:GraphicStroke>
           </se:Stroke>
          </se:LineSymbolizer>        
      </se:Rule>
	  
	   <se:Rule>
          <se:Name>MRL_yk_92</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 92</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>92</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
          <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">30</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">butt</se:SvgParameter>
            </se:Stroke>
            <se:PerpendicularOffset>-25</se:PerpendicularOffset>
          </se:LineSymbolizer>
          <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">5</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">butt</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
          <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">30</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">butt</se:SvgParameter>
            </se:Stroke>
            <se:PerpendicularOffset>25</se:PerpendicularOffset>
          </se:LineSymbolizer>
           <se:TextSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
          <se:Label>
          	mo
          </se:Label>
              <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">30</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">normal</se:SvgParameter>
            </se:Font>
              <se:LabelPlacement>
				<se:LinePlacement>
					<se:PerpendicularOffset>
						60
					</se:PerpendicularOffset>
				</se:LinePlacement>
             </se:LabelPlacement>
		</se:TextSymbolizer>
        </se:Rule>
        
		 <se:Rule>
         <se:Name>MRL_yk_93</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 93</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>93</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
          <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">30</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">butt</se:SvgParameter>
            </se:Stroke>
            <se:PerpendicularOffset>-25</se:PerpendicularOffset>
          </se:LineSymbolizer>
         
          <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">30</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">butt</se:SvgParameter>
            </se:Stroke>
            <se:PerpendicularOffset>25</se:PerpendicularOffset>
          </se:LineSymbolizer>
           <se:TextSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
          <se:Label>
          	vt/kt/st/pk
          </se:Label>
              <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">30</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">normal</se:SvgParameter>
            </se:Font>
              <se:LabelPlacement>
				<se:LinePlacement>
					<se:PerpendicularOffset>
						60
					</se:PerpendicularOffset>
				</se:LinePlacement>
             </se:LabelPlacement>
		</se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
        <se:Name>MRL_yk_94</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 94</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>94</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
          <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">50</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">butt</se:SvgParameter>
            </se:Stroke>
            <se:PerpendicularOffset>0</se:PerpendicularOffset>
          </se:LineSymbolizer>
           <se:TextSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
          <se:Label>
          vt/kt
          </se:Label>
              <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">30</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">normal</se:SvgParameter>
            </se:Font>
              <se:LabelPlacement>
				<se:LinePlacement>
					<se:PerpendicularOffset>
						50
					</se:PerpendicularOffset>
				</se:LinePlacement>
             </se:LabelPlacement>
		</se:TextSymbolizer>
        </se:Rule>
        
        <se:Rule>
        <se:Name>MRL_yk_95</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 95</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>95</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
          <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">40</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">butt</se:SvgParameter>
            </se:Stroke>
            <se:PerpendicularOffset>0</se:PerpendicularOffset>
          </se:LineSymbolizer>
           <se:TextSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
          <se:Label>
          st/pk
          </se:Label>
              <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">30</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">normal</se:SvgParameter>
            </se:Font>
              <se:LabelPlacement>
				<se:LinePlacement>
					<se:PerpendicularOffset>
						40
					</se:PerpendicularOffset>
				</se:LinePlacement>
             </se:LabelPlacement>
		</se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
        <se:Name>MRL_yk_96</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 96</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>96</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
          <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">30</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">butt</se:SvgParameter>
            </se:Stroke>
            <se:PerpendicularOffset>0</se:PerpendicularOffset>
          </se:LineSymbolizer>
           <se:TextSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
          <se:Label>
          yt/kk
          </se:Label>
              <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">30</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">normal</se:SvgParameter>
            </se:Font>
              <se:LabelPlacement>
				<se:LinePlacement>
					<se:PerpendicularOffset>
						30
					</se:PerpendicularOffset>
				</se:LinePlacement>
             </se:LabelPlacement>
		</se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
        <se:Name>MRL_yk_97</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 97</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>97</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
          <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">30</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">butt</se:SvgParameter>
            </se:Stroke>
            <se:PerpendicularOffset>0</se:PerpendicularOffset>
          </se:LineSymbolizer>
           <se:TextSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
          <se:Label>
          jl
          </se:Label>
              <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">30</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">normal</se:SvgParameter>
            </se:Font>
              <se:LabelPlacement>
				<se:LinePlacement>
					<se:PerpendicularOffset>
						30
					</se:PerpendicularOffset>
				</se:LinePlacement>
             </se:LabelPlacement>
		</se:TextSymbolizer>
        </se:Rule>
        
        
		
	  <se:Rule>
	      <se:Name>MRL_yk_103</se:Name>
		  <!-- <Title> MRL:n oppaan yleiskaavamerkinta nro 103</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>103</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
       <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
         <se:Stroke>
           <se:SvgParameter name="stroke">#000000</se:SvgParameter>
           <se:SvgParameter name="stroke-width">14</se:SvgParameter>
         </se:Stroke>
       </se:LineSymbolizer>
       <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
         <se:Stroke>
           <se:GraphicStroke>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>shape://vertline</se:WellKnownName>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">5</se:SvgParameter>
                 </se:Stroke>
               </se:Mark>
               <se:Size>30</se:Size>
             </se:Graphic>
           </se:GraphicStroke>
         </se:Stroke>
       </se:LineSymbolizer>
	  </se:Rule>
	  
	  <se:Rule>
	      <se:Name>MRL_yk_104</se:Name>
		  <!-- <Title> MRL:n oppaan yleiskaavamerkinta nro 104</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>104</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
       <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
         <se:Stroke>
           <se:SvgParameter name="stroke">#000000</se:SvgParameter>
           <se:SvgParameter name="stroke-width">10</se:SvgParameter>
         </se:Stroke>
       </se:LineSymbolizer>
       <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
         <se:Stroke>
           <se:GraphicStroke>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>shape://vertline</se:WellKnownName>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">5</se:SvgParameter>
                 </se:Stroke>
               </se:Mark>
               <se:Size>25</se:Size>
             </se:Graphic>
           </se:GraphicStroke>
         </se:Stroke>
       </se:LineSymbolizer>
	  </se:Rule>
	  
	  <se:Rule>
	  <se:Name>MRL_yk_108</se:Name>
		  <!-- <Title> MRL:n oppaan yleiskaavamerkinta nro 108</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>108</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
       <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
         <se:Stroke>
           <se:SvgParameter name="stroke">#000000</se:SvgParameter>
           <se:SvgParameter name="stroke-width">20</se:SvgParameter>
         </se:Stroke>
       </se:LineSymbolizer>
       <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
         <se:Stroke>
           <se:GraphicStroke>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>circle</se:WellKnownName>
                 <se:Fill>
                   <se:SvgParameter name="fill">#000000</se:SvgParameter>
                 </se:Fill>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">0</se:SvgParameter>
                 </se:Stroke>
               </se:Mark>
               <se:Size>30</se:Size>
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">30 80</se:SvgParameter>
           <se:SvgParameter name="stroke-dashoffset">30</se:SvgParameter>
         </se:Stroke>
       </se:LineSymbolizer>
     </se:Rule>
	 
	   <se:Rule>
	   <se:Name>MRL_yk_109</se:Name>
		  <!-- <Title> MRL:n oppaan yleiskaavamerkinta nro 109</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>109</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
       <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
         <se:Stroke>
           <se:SvgParameter name="stroke">#000000</se:SvgParameter>
           <se:SvgParameter name="stroke-width">10</se:SvgParameter>
            <se:SvgParameter name="stroke-dasharray">80 20</se:SvgParameter>  
         </se:Stroke>
       </se:LineSymbolizer>
       <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
         <se:Stroke>
           <se:GraphicStroke>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>circle</se:WellKnownName>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">3</se:SvgParameter>
                 </se:Stroke>
               </se:Mark>
               <se:Size>20</se:Size>
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">20 80</se:SvgParameter>
           <se:SvgParameter name="stroke-dashoffset">20</se:SvgParameter>
         </se:Stroke>
       </se:LineSymbolizer>
     </se:Rule>
	  
	  <se:Rule>
          <se:Name>MRL_yk_120</se:Name>
		  <!-- <Title> MRL:n oppaan yleiskaavamerkinta nro 120</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>120</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>	
			<se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">6</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">butt</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>	
		</se:Rule>
		
		<se:Rule>
          <se:Name>MRL_yk_121</se:Name>
		  <!-- <Title> MRL:n oppaan yleiskaavamerkinta nro 121</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>121</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>	
			  <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">6</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">butt</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
          <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Stroke>
              <se:SvgParameter name="stroke">#900027</se:SvgParameter>
              <se:SvgParameter name="stroke-width">2</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">butt</se:SvgParameter>
            </se:Stroke>
            <se:PerpendicularOffset>2</se:PerpendicularOffset>
          </se:LineSymbolizer>	
		</se:Rule>
		
		 <se:Rule>
          <se:Name>MRL_yk_122</se:Name>
		  <!-- <Title> MRL:n oppaan yleiskaavamerkinta nro 122</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>122</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>	
			<se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Stroke>
              <se:SvgParameter name="stroke">#900027</se:SvgParameter>
              <se:SvgParameter name="stroke-width">6</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">butt</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>	
		</se:Rule>
		
		 
	   <se:Rule>
          <se:Name>MRL_yk_123</se:Name>
		  <!-- <Title> MRL:n oppaan yleiskaavamerkinta nro 123</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>123</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">3</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
              <se:SvgParameter name="stroke-dasharray">18 7 2 7 2 7 </se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
	  
	   <se:Rule>
          <se:Name>MRL_yk_124</se:Name>
		  <!-- <Title> MRL:n oppaan yleiskaavamerkinta nro 124</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>124</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">3</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
              <se:SvgParameter name="stroke-dasharray">18 7 2 7 2 7 2 7</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
	  
	  <se:Rule>
          <se:Name>MRL_yk_125</se:Name>
		  <!-- <Title> MRL:n oppaan yleiskaavamerkinta nro 125</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>125</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>	
			<se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>			
		</se:Rule>	

		<se:Rule>
          <se:Name>MRL_yk_126</se:Name>
		  <!-- <Title> MRL:n oppaan yleiskaavamerkinta nro 126</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>126</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>	
			<se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
              <se:SvgParameter name="stroke-dasharray">21 7 7 7</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>			
		</se:Rule>			
		
		<se:Rule>
          <se:Name>MRL_yk_127</se:Name>
		  <!-- <Title> MRL:n oppaan yleiskaavamerkinta nro 127</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>127</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>	
			<se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">2</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
              <se:SvgParameter name="stroke-dasharray">14 7</se:SvgParameter>
            </se:Stroke>
			</se:LineSymbolizer>		
		</se:Rule>

		<se:Rule>
          <se:Name>MRL_yk_128</se:Name>
		  <!-- <Title> MRL:n oppaan asemakaavamerkinta nro 128</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>128</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>	
			<se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">2</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
              <se:SvgParameter name="stroke-dasharray">30 10 10 10 </se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>		
          <se:LineSymbolizer>
         <se:Stroke>
           <se:GraphicStroke>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>shape://vertline</se:WellKnownName>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#333333</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                    <se:SvgParameter name="stroke-dasharray">10 10</se:SvgParameter>           
                 </se:Stroke>
               </se:Mark>
               <se:Size>20</se:Size>
             </se:Graphic>
            </se:GraphicStroke>
         </se:Stroke>
        </se:LineSymbolizer>	
		</se:Rule>


  </se:FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>