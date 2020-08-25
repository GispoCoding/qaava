<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" version="1.1.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ogc="http://www.opengis.net/ogc" xmlns:se="http://www.opengis.net/se">
  <NamedLayer>
    <se:Name>Yleiskaava_pisteet</se:Name>
    <UserStyle>
      <se:Name>Yleiskaava_pisteet</se:Name>
      <se:FeatureTypeStyle>
	  
	  <se:Rule> 
	   <se:Name>MRL_yk_10</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 10</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>10</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
		<se:TextSymbolizer>
			  <se:Label>
                !
              </se:Label>
				  <se:Font>
				  <se:SvgParameter name="font-family">Arial</se:SvgParameter>
				  <se:SvgParameter name="font-size">29</se:SvgParameter>
				  <se:SvgParameter name="font-style">normal</se:SvgParameter>
				  <se:SvgParameter name="font-weight">normal</se:SvgParameter>
				</se:Font>
			<se:Fill>
				<se:SvgParameter name="fill">#FFFFFF</se:SvgParameter>
			</se:Fill>  
			</se:TextSymbolizer>
	   </se:Rule>
	  
	  <se:Rule> 
	   <se:Name>MRL_yk_11</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 11</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>11</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
		<se:TextSymbolizer>
			  <se:Label>
                !
              </se:Label>
				  <se:Font>
				  <se:SvgParameter name="font-family">Arial</se:SvgParameter>
				  <se:SvgParameter name="font-size">29</se:SvgParameter>
				  <se:SvgParameter name="font-style">normal</se:SvgParameter>
				  <se:SvgParameter name="font-weight">normal</se:SvgParameter>
				</se:Font>
			<se:Fill>
				<se:SvgParameter name="fill">#000000</se:SvgParameter>
			</se:Fill>  
			</se:TextSymbolizer>
	   </se:Rule>
	   
	   <se:Rule>
          <se:Name>MRL_yk_84</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 84</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>84</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
          <se:PointSymbolizer>
            <se:Graphic>
              <se:Mark>
                <se:WellKnownName>circle</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#d63648</se:SvgParameter>
                </se:Fill>
                <se:Stroke>
                  <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                  <se:SvgParameter name="stroke-width">1.5</se:SvgParameter>
                </se:Stroke>
              </se:Mark>
              <se:Size>29</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
           <se:TextSymbolizer>
			  <se:Label>
                ca         
			  </se:Label>
				  <se:Font>
				  <se:SvgParameter name="font-family">Arial</se:SvgParameter>
				  <se:SvgParameter name="font-size">15</se:SvgParameter>
				  <se:SvgParameter name="font-style">normal</se:SvgParameter>
				  <se:SvgParameter name="font-weight">normal</se:SvgParameter>
				</se:Font>
           <se:LabelPlacement>
           <se:PointPlacement>
              <se:Displacement>
                <se:DisplacementX>-8</se:DisplacementX>
                <se:DisplacementY>-4</se:DisplacementY>
              </se:Displacement>
           </se:PointPlacement>
           </se:LabelPlacement>
			</se:TextSymbolizer>
        </se:Rule>
	   
	    <se:Rule>
          <se:Name>MRL_yk_85</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 85</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>85</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
          <se:PointSymbolizer>
            <se:Graphic>
              <se:Mark>
                <se:WellKnownName>circle</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#faab53</se:SvgParameter>
                </se:Fill>
                <se:Stroke>
                  <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                  <se:SvgParameter name="stroke-width">1.5</se:SvgParameter>
                </se:Stroke>
              </se:Mark>
              <se:Size>29</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
           <se:TextSymbolizer>
			  <se:Label>
                pl           
			  </se:Label>
				  <se:Font>
				  <se:SvgParameter name="font-family">Arial</se:SvgParameter>
				  <se:SvgParameter name="font-size">15</se:SvgParameter>
				  <se:SvgParameter name="font-style">normal</se:SvgParameter>
				  <se:SvgParameter name="font-weight">normal</se:SvgParameter>
				</se:Font>
           <se:LabelPlacement>
           <se:PointPlacement>
              <se:Displacement>
                <se:DisplacementX>-8</se:DisplacementX>
                <se:DisplacementY>0</se:DisplacementY>
              </se:Displacement>
           </se:PointPlacement>
           </se:LabelPlacement>
			</se:TextSymbolizer>
        </se:Rule>
	   
	    <se:Rule>
          <se:Name>MRL_yk_86</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 86</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>86</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
          <se:PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Graphic>
              <se:Mark>
                <se:WellKnownName>square</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#74ccd3</se:SvgParameter>
                </se:Fill>
                <se:Stroke>
                  <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                  <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                </se:Stroke>
              </se:Mark>
              <se:Size>20</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
        </se:Rule>

		<se:Rule>
          <se:Name>MRL_yk_87</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 87</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>87</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
          <se:PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Graphic>
              <se:Mark>
                <se:WellKnownName>triangle</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#008356</se:SvgParameter>
                </se:Fill>
                <se:Stroke>
                  <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                  <se:SvgParameter name="stroke-width">2.4</se:SvgParameter>
                </se:Stroke>
              </se:Mark>
              <se:Size>24</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
        </se:Rule>
	  
	  <se:Rule> 
		  <se:Name>MRL_yk_88</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 88</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>88</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
         <se:PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
                 <se:Graphic>
                  <se:ExternalGraphic>
                    <se:OnlineResource xlink:type="simple" xlink:href="https://raw.githubusercontent.com/GispoCoding/qaava/master/yleiskaavan-kuvaustekniikka/SVG/88.svg"/>
						<se:Format>image/svg+xml</se:Format>
                  </se:ExternalGraphic> 
                  <se:Size>
					<ogc:Literal>60</ogc:Literal>
				  </se:Size>
                </se:Graphic>
          </se:PointSymbolizer>        
        </se:Rule>
		
		<se:Rule> 
		  <se:Name>MRL_yk_89</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 89</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>89</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
         <se:PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
                 <se:Graphic>
                  <se:ExternalGraphic>
                    <se:OnlineResource xlink:type="simple" xlink:href="https://raw.githubusercontent.com/GispoCoding/qaava/master/yleiskaavan-kuvaustekniikka/SVG/89.svg"/>
						<se:Format>image/svg+xml</se:Format>
                  </se:ExternalGraphic> 
                  <se:Size>
					<ogc:Literal>70</ogc:Literal>
				  </se:Size>
                </se:Graphic>
          </se:PointSymbolizer>        
        </se:Rule>
		
		<se:Rule> 
		  <se:Name>MRL_yk_90</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 90</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>90</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
         <se:PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
                 <se:Graphic>
                  <se:ExternalGraphic>
                    <se:OnlineResource xlink:type="simple" xlink:href="https://raw.githubusercontent.com/GispoCoding/qaava/master/yleiskaavan-kuvaustekniikka/SVG/90.svg"/>
						<se:Format>image/svg+xml</se:Format>
                  </se:ExternalGraphic> 
                  <se:Size>
					<ogc:Literal>45</ogc:Literal>
				  </se:Size>
                </se:Graphic>
          </se:PointSymbolizer>        
        </se:Rule>
		
		<se:Rule> 
		  <se:Name>MRL_yk_91</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 91</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>91</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
         <se:PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
                 <se:Graphic>
                  <se:ExternalGraphic>
                    <se:OnlineResource xlink:type="simple" xlink:href="https://raw.githubusercontent.com/GispoCoding/qaava/master/yleiskaavan-kuvaustekniikka/SVG/91.svg"/>
						<se:Format>image/svg+xml</se:Format>
                  </se:ExternalGraphic> 
                  <se:Size>
					<ogc:Literal>50</ogc:Literal>
				  </se:Size>
                </se:Graphic>
          </se:PointSymbolizer>        
        </se:Rule>
		
		<se:Rule>
           <se:Name>MRL_yk_119</se:Name>
		  <!-- <Title> MRL:n oppaan yleiskaavamerkinta nro 119</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>119</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
          <se:PointSymbolizer>
            <se:Graphic>
              <se:Mark>
                <se:WellKnownName>circle</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#d63648</se:SvgParameter>
                </se:Fill>                
              </se:Mark>
              <se:Size>40</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
        </se:Rule>
		
	  <se:Rule>
          <se:Name>MRL_yk_129</se:Name>
		  <!-- <Title> MRL:n oppaan yleiskaavamerkinta nro 129</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>129</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>	
		  <se:PointSymbolizer>
            <se:Graphic>
              <se:Mark>
                <se:WellKnownName>circle</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#ff0000</se:SvgParameter>
                  <se:SvgParameter name="fill-opacity">0</se:SvgParameter>
                </se:Fill>
                <se:Stroke>
                  <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                  <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                </se:Stroke>
              </se:Mark>
              <se:Size>31</se:Size>
              <se:Displacement>
                <se:DisplacementX>0</se:DisplacementX>
                <se:DisplacementY>-11</se:DisplacementY>
              </se:Displacement>
            </se:Graphic>
          </se:PointSymbolizer>
          <se:PointSymbolizer>
            <se:Graphic>
              <se:Mark>
                <se:WellKnownName>line</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#000000</se:SvgParameter>
                </se:Fill>
                <se:Stroke>
                  <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                  <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                </se:Stroke>
              </se:Mark>
              <se:Size>7</se:Size>
              <se:Rotation>
                <ogc:Literal>180</ogc:Literal>
              </se:Rotation>
              <se:Displacement>
                <se:DisplacementX>0</se:DisplacementX>
                <se:DisplacementY>8</se:DisplacementY>
              </se:Displacement>
            </se:Graphic>
          </se:PointSymbolizer>
         <se:TextSymbolizer>
			  <se:Label>
                ab/12            
				<!-- <ogc:PropertyName>
                  ominaisuustieto_129
                </ogc:PropertyName> -->
              </se:Label>
				  <se:Font>
				  <se:SvgParameter name="font-family">Arial</se:SvgParameter>
				  <se:SvgParameter name="font-size">9</se:SvgParameter>
				  <se:SvgParameter name="font-style">normal</se:SvgParameter>
				  <se:SvgParameter name="font-weight">normal</se:SvgParameter>
				</se:Font>
           <se:LabelPlacement>
           <se:PointPlacement>
              <se:Displacement>
                <se:DisplacementX>-12</se:DisplacementX>
                <se:DisplacementY>9</se:DisplacementY>
              </se:Displacement>
           </se:PointPlacement>
           </se:LabelPlacement>
			</se:TextSymbolizer>
		</se:Rule>
		
		<se:Rule>
          <se:Name>MRL_yk_130</se:Name>
		  <!-- <Title> MRL:n oppaan yleiskaavamerkinta nro 130</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>130</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
		  <se:TextSymbolizer>
			  <se:Label>
				KUNT
				<!-- <ogc:PropertyName>
                  ominaisuustieto_130
                </ogc:PropertyName> -->
			  </se:Label>
				<se:Font>
				  <se:SvgParameter name="font-family">Arial</se:SvgParameter>
				  <se:SvgParameter name="font-size">29</se:SvgParameter>
				  <se:SvgParameter name="font-style">normal</se:SvgParameter>
				  <se:SvgParameter name="font-weight">normal</se:SvgParameter>
				</se:Font>
		  </se:TextSymbolizer>
		</se:Rule>	
		
		<se:Rule>
          <se:Name>MRL_yk_131</se:Name>
		  <!-- <Title> MRL:n oppaan yleiskaavamerkinta nro 131</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>131</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
		  <se:TextSymbolizer>
			  <se:Label>
				KUnn
				<!-- <ogc:PropertyName>
                  ominaisuustieto_131
                </ogc:PropertyName> -->
			  </se:Label>
				<se:Font>
				  <se:SvgParameter name="font-family">Arial</se:SvgParameter>
				  <se:SvgParameter name="font-size">18</se:SvgParameter>
				  <se:SvgParameter name="font-style">normal</se:SvgParameter>
				  <se:SvgParameter name="font-weight">normal</se:SvgParameter>
				</se:Font>
		  </se:TextSymbolizer>
		</se:Rule>	
		
		<se:Rule>
          <se:Name>MRL_yk_132</se:Name>
		  <!-- <Title> MRL:n oppaan yleiskaavamerkinta nro 132</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>132</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
		  <se:TextSymbolizer>
			  <se:Label>
				ALAK
				<!-- <ogc:PropertyName>
                  ominaisuustieto_132
                </ogc:PropertyName> -->
			  </se:Label>
				<se:Font>
				  <se:SvgParameter name="font-family">Arial</se:SvgParameter>
				  <se:SvgParameter name="font-size">14</se:SvgParameter>
				  <se:SvgParameter name="font-style">normal</se:SvgParameter>
				  <se:SvgParameter name="font-weight">normal</se:SvgParameter>
				</se:Font>
		  </se:TextSymbolizer>
		</se:Rule>	
		
	  </se:FeatureTypeStyle>
	  </UserStyle>	  
  </NamedLayer>
</StyledLayerDescriptor>