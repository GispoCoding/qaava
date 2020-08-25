<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" version="1.1.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ogc="http://www.opengis.net/ogc" xmlns:se="http://www.opengis.net/se">
  <NamedLayer>
    <se:Name>Yleiskaava_viivat</se:Name>
    <UserStyle>
      <se:Name>Yleiskaava_viivat</se:Name>
      <se:FeatureTypeStyle>
	  
	  <se:Rule>
         <se:Name>MRL_yk_1</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 1</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>1</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
           <se:LineSymbolizer>
             <se:Stroke>
               <se:SvgParameter name="stroke">#e2c096</se:SvgParameter>
               <se:SvgParameter name="stroke-width">12</se:SvgParameter>
             </se:Stroke>
           </se:LineSymbolizer>
           <se:PointSymbolizer>
             <se:Geometry>
               <ogc:Function name="endPoint">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
               </ogc:Function>
             </se:Geometry>
             <se:Graphic>
                <se:Mark>
                  <se:WellKnownName>shape://carrow</se:WellKnownName>
                    <se:Fill>
                      <se:SvgParameter name="fill">#e2c096</se:SvgParameter>
                      <se:SvgParameter name="fill-opacity">1.0</se:SvgParameter>
                    </se:Fill>
                    <se:Stroke>
                      <se:SvgParameter name="stroke">#e2c096</se:SvgParameter>
                      <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                    </se:Stroke>
                    </se:Mark>
                    <se:Size>50</se:Size>
                    <se:Rotation>
                       <ogc:Function name="endAngle">
                          <ogc:PropertyName>the_geom</ogc:PropertyName>
                       </ogc:Function>
                    </se:Rotation>
             </se:Graphic>
          </se:PointSymbolizer>
      </se:Rule>
	  
	  <se:Rule>
        <se:Name>MRL_yk_4</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 4</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>4</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
          <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">40</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">butt</se:SvgParameter>
              <se:SvgParameter name="stroke-dasharray">100 20 </se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
      </se:Rule>
	  
	  <se:Rule>
          <se:Name>MRL_yk_5</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 5</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>5</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
                    <se:LineSymbolizer>
                        <se:Stroke>
                            <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                            <se:SvgParameter name="stroke-width">5</se:SvgParameter>
                            <se:SvgParameter name="stroke-dasharray">10 3</se:SvgParameter>
                        </se:Stroke>
                    </se:LineSymbolizer>
                   <se:PointSymbolizer>
                        <se:Geometry>
                            <ogc:Function name="startPoint">
                                <ogc:PropertyName>the_geom</ogc:PropertyName>
                            </ogc:Function>
                        </se:Geometry>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>shape://carrow</se:WellKnownName>
                                <se:Fill>
                                <se:SvgParameter name="fill">#000000</se:SvgParameter>
                                <se:SvgParameter name="fill-opacity">1.0</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>30</se:Size>
                            <se:Rotation>
                              <ogc:Add>
                                <ogc:Function name="startAngle">
                                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                                </ogc:Function>
                                <ogc:Literal>180.0</ogc:Literal>
                              </ogc:Add>
                            </se:Rotation>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Geometry>
                            <ogc:Function name="endPoint">
                                <ogc:PropertyName>the_geom</ogc:PropertyName>
                            </ogc:Function>
                        </se:Geometry>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>shape://carrow</se:WellKnownName>
                                <se:Fill>
                                <se:SvgParameter name="fill">#000000</se:SvgParameter>
                                <se:SvgParameter name="fill-opacity">1.0</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                   
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>30</se:Size>
                            <se:Rotation>
                                <ogc:Function name="endAngle">
                                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                                </ogc:Function>
                            </se:Rotation>
                        </se:Graphic>
                    </se:PointSymbolizer>
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_yk_6</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 6</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>6</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
                    <se:LineSymbolizer>
                        <se:Stroke>
                            <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                            <se:SvgParameter name="stroke-width">5</se:SvgParameter>
                            <se:SvgParameter name="stroke-dasharray">10 3</se:SvgParameter>
                        </se:Stroke>
                    </se:LineSymbolizer>
                    <se:PointSymbolizer>
                        <se:Geometry>
                            <ogc:Function name="startPoint">
                                <ogc:PropertyName>the_geom</ogc:PropertyName>
                            </ogc:Function>
                        </se:Geometry>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>shape://carrow</se:WellKnownName>
                                <se:Fill>
                                <se:SvgParameter name="fill">#000000</se:SvgParameter>
                                <se:SvgParameter name="fill-opacity">1.0</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>30</se:Size>
                            <se:Rotation>
                              <ogc:Add>
                                <ogc:Function name="startAngle">
                                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                                </ogc:Function>
                                <ogc:Literal>180.0</ogc:Literal>
                              </ogc:Add>
                            </se:Rotation>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Geometry>
                            <ogc:Function name="endPoint">
                                <ogc:PropertyName>the_geom</ogc:PropertyName>
                            </ogc:Function>
                        </se:Geometry>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>shape://carrow</se:WellKnownName>
                                <se:Fill>
                                <se:SvgParameter name="fill">#000000</se:SvgParameter>
                                <se:SvgParameter name="fill-opacity">1.0</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>30</se:Size>
                            <se:Rotation>
                                <ogc:Function name="endAngle">
                                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                                </ogc:Function>
                            </se:Rotation>
                        </se:Graphic>
                    </se:PointSymbolizer>
                  <se:TextSymbolizer>
         			<se:Label>jl</se:Label>
                    <se:Font>
						<se:SvgParameter name="font-family">Arial</se:SvgParameter>
						<se:SvgParameter name="font-size">17</se:SvgParameter>
						<se:SvgParameter name="font-style">normal</se:SvgParameter>
						<se:SvgParameter name="font-weight">normal</se:SvgParameter>
					</se:Font>
        			 <se:LabelPlacement>
           				<se:LinePlacement>
							<se:PerpendicularOffset>
								15
							</se:PerpendicularOffset>
						</se:LinePlacement>
         			 </se:LabelPlacement>
         			<se:Fill>
           				<se:SvgParameter name="fill">#000000</se:SvgParameter>
         			</se:Fill>
       			  </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_yk_7</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 7</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>7</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
                <se:LineSymbolizer>
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
						<se:SvgParameter name="stroke-width">1</se:SvgParameter>
					</se:Stroke>
						</se:Mark>
							<se:Size>5</se:Size>
					</se:Graphic>
					</se:GraphicStroke>
						<se:SvgParameter name="stroke-dasharray">5 7</se:SvgParameter>
                  </se:Stroke>
                </se:LineSymbolizer>
                <se:PointSymbolizer>
                        <se:Geometry>
                            <ogc:Function name="startPoint">
                                <ogc:PropertyName>the_geom</ogc:PropertyName>
                            </ogc:Function>
                        </se:Geometry>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>shape://carrow</se:WellKnownName>
                                <se:Fill>
                                <se:SvgParameter name="fill">#000000</se:SvgParameter>
                                <se:SvgParameter name="fill-opacity">1.0</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>20</se:Size>
                            <se:Rotation>
                              <ogc:Add>
                                <ogc:Function name="startAngle">
                                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                                </ogc:Function>
                                <ogc:Literal>180.0</ogc:Literal>
                              </ogc:Add>
                            </se:Rotation>
                        </se:Graphic>
                </se:PointSymbolizer>
                <se:PointSymbolizer>
                        <se:Geometry>
                            <ogc:Function name="endPoint">
                                <ogc:PropertyName>the_geom</ogc:PropertyName>
                            </ogc:Function>
                        </se:Geometry>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>shape://carrow</se:WellKnownName>
                                <se:Fill>
                                <se:SvgParameter name="fill">#000000</se:SvgParameter>
                                <se:SvgParameter name="fill-opacity">1.0</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>25</se:Size>
                            <se:Rotation>
                                <ogc:Function name="endAngle">
                                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                                </ogc:Function>
                            </se:Rotation>
                        </se:Graphic>
                </se:PointSymbolizer>
        </se:Rule>
	  
	    <se:Rule>
          <se:Name>MRL_yk_8</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 8</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>8</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
                    <se:LineSymbolizer>
                        <se:Stroke>
                            <se:SvgParameter name="stroke">#23923e</se:SvgParameter>
                            <se:SvgParameter name="stroke-width">4</se:SvgParameter>
                            <se:SvgParameter name="stroke-dasharray">10 3</se:SvgParameter>
                        </se:Stroke>
                    </se:LineSymbolizer>
                   <se:PointSymbolizer>
                        <se:Geometry>
                            <ogc:Function name="startPoint">
                                <ogc:PropertyName>the_geom</ogc:PropertyName>
                            </ogc:Function>
                        </se:Geometry>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>shape://carrow</se:WellKnownName>
                                <se:Fill>
                                <se:SvgParameter name="fill">#23923e</se:SvgParameter>
                                <se:SvgParameter name="fill-opacity">1.0</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#23923e</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>30</se:Size>
                            <se:Rotation>
                              <ogc:Add>
                                <ogc:Function name="startAngle">
                                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                                </ogc:Function>
                                <ogc:Literal>180.0</ogc:Literal>
                              </ogc:Add>
                            </se:Rotation>
                        </se:Graphic>
                    </se:PointSymbolizer>
                    <se:PointSymbolizer>
                        <se:Geometry>
                            <ogc:Function name="endPoint">
                                <ogc:PropertyName>the_geom</ogc:PropertyName>
                            </ogc:Function>
                        </se:Geometry>
                        <se:Graphic>
                            <se:Mark>
                                <se:WellKnownName>shape://carrow</se:WellKnownName>
                                <se:Fill>
                                <se:SvgParameter name="fill">#23923e</se:SvgParameter>
                                <se:SvgParameter name="fill-opacity">1.0</se:SvgParameter>
                                </se:Fill>
                                <se:Stroke>
                                    <se:SvgParameter name="stroke">#23923e</se:SvgParameter>
                                    <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                                   
                                </se:Stroke>
                            </se:Mark>
                            <se:Size>30</se:Size>
                            <se:Rotation>
                                <ogc:Function name="endAngle">
                                    <ogc:PropertyName>the_geom</ogc:PropertyName>
                                </ogc:Function>
                            </se:Rotation>
                        </se:Graphic>
                    </se:PointSymbolizer>
      </se:Rule>
		
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
		  <se:Name>MRL_yk_98</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 98</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>98</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
			<se:PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
                <se:Graphic>
                  <se:ExternalGraphic>
                    <se:OnlineResource xlink:type="simple" xlink:href="https://raw.githubusercontent.com/GispoCoding/qaava/master/yleiskaavan-kuvaustekniikka/SVG/98.svg"/>
						<se:Format>image/svg+xml</se:Format>
                  </se:ExternalGraphic> 
                  <se:Size>
					<ogc:Literal>50</ogc:Literal>
				  </se:Size>
                </se:Graphic>
            </se:PointSymbolizer>        
      </se:Rule> 
		
		<se:Rule> 
		  <se:Name>MRL_yk_99</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 99</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>99</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
			<se:PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
                <se:Graphic>
                  <se:ExternalGraphic>
                    <se:OnlineResource xlink:type="simple" xlink:href="https://raw.githubusercontent.com/GispoCoding/qaava/master/yleiskaavan-kuvaustekniikka/SVG/99.svg"/>
						<se:Format>image/svg+xml</se:Format>
                  </se:ExternalGraphic> 
                  <se:Size>
					<ogc:Literal>50</ogc:Literal>
				  </se:Size>
                </se:Graphic>
            </se:PointSymbolizer>        
      </se:Rule> 
		
		<se:Rule> 
		  <se:Name>MRL_yk_100</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 100</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>100</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
			<se:PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
                <se:Graphic>
                  <se:ExternalGraphic>
                    <se:OnlineResource xlink:type="simple" xlink:href="https://raw.githubusercontent.com/GispoCoding/qaava/master/yleiskaavan-kuvaustekniikka/SVG/100.svg"/>
						<se:Format>image/svg+xml</se:Format>
                  </se:ExternalGraphic> 
                  <se:Size>
					<ogc:Literal>50</ogc:Literal>
				  </se:Size>
                </se:Graphic>
            </se:PointSymbolizer>        
      </se:Rule> 
		
	  <se:Rule> 
		  <se:Name>MRL_yk_101</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 101</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>101</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
			<se:PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
                <se:Graphic>
                  <se:ExternalGraphic>
                    <se:OnlineResource xlink:type="simple" xlink:href="https://raw.githubusercontent.com/GispoCoding/qaava/master/yleiskaavan-kuvaustekniikka/SVG/101.svg"/>
						<se:Format>image/svg+xml</se:Format>
                  </se:ExternalGraphic> 
                  <se:Size>
					<ogc:Literal>50</ogc:Literal>
				  </se:Size>
                </se:Graphic>
            </se:PointSymbolizer>        
      </se:Rule> 
	  
	   <se:Rule> 
		  <se:Name>MRL_yk_102</se:Name>
		  <!-- <Title>MRL:n oppaan yleiskaavamerkinta nro 102</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>102</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
			<se:PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
                <se:Graphic>
                  <se:ExternalGraphic>
                    <se:OnlineResource xlink:type="simple" xlink:href="https://raw.githubusercontent.com/GispoCoding/qaava/master/yleiskaavan-kuvaustekniikka/SVG/102.svg"/>
						<se:Format>image/svg+xml</se:Format>
                  </se:ExternalGraphic> 
                  <se:Size>
					<ogc:Literal>50</ogc:Literal>
				  </se:Size>
                </se:Graphic>
            </se:PointSymbolizer>        
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
		 <se:Name>MRL_Yk_105</se:Name>
		 <!-- <Title> MRL:n oppaan yleiskaavamerkinta nro 105</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>105</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>	
		<se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
           <se:Stroke>
              <se:GraphicStroke>
                <se:Graphic>
                  <se:Mark>
                    <se:WellKnownName>circle</se:WellKnownName>
                    <se:Stroke>
                      <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                      <se:SvgParameter name="stroke-width">0.5</se:SvgParameter>
                    </se:Stroke>
                  </se:Mark>
                  <se:Size>4</se:Size>
                </se:Graphic>
               </se:GraphicStroke>
               <se:SvgParameter name="stroke-dasharray">4 7</se:SvgParameter>
              <se:SvgParameter name="stroke-dashoffset">0</se:SvgParameter>
          </se:Stroke>
         </se:LineSymbolizer>					
		</se:Rule>
		
	  <se:Rule>
		 <se:Name>MRL_Yk_106</se:Name>
		  <!--<Title> MRL:n oppaan yleiskaavamerkinta nro 106</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>106</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>	
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
                      <se:SvgParameter name="stroke-width">0.5</se:SvgParameter>
                    </se:Stroke>
                  </se:Mark>
                  <se:Size>4</se:Size>
                </se:Graphic>
               </se:GraphicStroke>
               <se:SvgParameter name="stroke-dasharray">4 7</se:SvgParameter>
              <se:SvgParameter name="stroke-dashoffset">0</se:SvgParameter>
          </se:Stroke>
         </se:LineSymbolizer>					
		</se:Rule>
	  
	   <se:Rule>
          <se:Name>MRL_yk_107</se:Name>
		  <!-- <Title> MRL:n oppaan yleiskaavamerkinta nro 107</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>107</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
          <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
              <se:SvgParameter name="stroke-dasharray">4 6</se:SvgParameter>
            </se:Stroke>
            <se:PerpendicularOffset>-5</se:PerpendicularOffset>
          </se:LineSymbolizer>
          <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
              <se:SvgParameter name="stroke-dasharray">4 6</se:SvgParameter>
            </se:Stroke>
            <se:PerpendicularOffset>5</se:PerpendicularOffset>
          </se:LineSymbolizer>
          <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <se:Stroke>
              <se:GraphicStroke>
                <se:Graphic>
                  <se:Mark>
                    <se:WellKnownName>line</se:WellKnownName>
                    <se:Fill>
                      <se:SvgParameter name="fill">#ff0000</se:SvgParameter>
                    </se:Fill>
                    <se:Stroke>
                      <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                      <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                      <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            		  <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                    </se:Stroke>
                  </se:Mark>
                  <se:Size>10</se:Size>
                </se:Graphic>
                <!--<se:Gap>
                  <ogc:Literal>15</ogc:Literal>
                </se:Gap>-->
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
          <se:Name>MRL_yk_110</se:Name>
		  <!-- <Title> MRL:n oppaan yleiskaavamerkinta nro 110</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>110</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
		  <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
			<se:Stroke>
			  <se:GraphicStroke>
						<se:Graphic>
							<se:ExternalGraphic>
								<se:OnlineResource xlink:type="simple" xlink:href="https://raw.githubusercontent.com/GispoCoding/qaava/master/yleiskaavan-kuvaustekniikka/SVG/110.svg"/>
								<se:Format>image/svg+xml</se:Format>
						</se:ExternalGraphic>
						  <se:Size>
							<ogc:Literal>150</ogc:Literal>
						  </se:Size>
						</se:Graphic>
			  </se:GraphicStroke>
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