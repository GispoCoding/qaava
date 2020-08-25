<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" version="1.1.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ogc="http://www.opengis.net/ogc" xmlns:se="http://www.opengis.net/se">
  <NamedLayer>
    <se:Name>Yleiskaava_osa_alueet</se:Name>
    <UserStyle>
      <se:Name>Yleiskaava_osa_alueet</se:Name>
      <se:FeatureTypeStyle>	  	
		
		<se:Rule>
          <se:Name>MRL_yk_2</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>2</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>			
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#e2c096</se:SvgParameter>
              <se:SvgParameter name="stroke-width">8</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">square</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
              <se:SvgParameter name="stroke-dasharray">24 14</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
		
		 <se:Rule>
	      <se:Name>MRL_yk_3</se:Name>
		  <!-- <Title> MRL:n oppaan yleiskaavamerkinta nro 3</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>3</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
       <se:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
         <se:Stroke>
           <se:GraphicStroke>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>shape://carrow</se:WellKnownName>
                  <se:Fill>
                    <se:SvgParameter name="fill">#000000</se:SvgParameter>
                    <se:SvgParameter name="fill-opacity">1.0</se:SvgParameter>
                  </se:Fill>
                <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                </se:Stroke>
               </se:Mark>
               <se:Size>35</se:Size>
               <se:Rotation>
                  <ogc:Literal>90.0</ogc:Literal>
               </se:Rotation>
             </se:Graphic>
           </se:GraphicStroke>
         </se:Stroke>
       </se:LineSymbolizer>
	  </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_yk_12</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>12</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>			
			<se:LineSymbolizer>
				<se:Stroke>
				  <se:SvgParameter name="stroke">#000000</se:SvgParameter>
				  <se:SvgParameter name="stroke-width">1.5</se:SvgParameter>
				  <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
				  <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
				  <se:SvgParameter name="stroke-dasharray">22 7 5 7</se:SvgParameter>
				</se:Stroke>
			  <se:PerpendicularOffset>5</se:PerpendicularOffset>
			  </se:LineSymbolizer>
			  <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
       	<se:PolygonSymbolizer>
        <se:Fill>
           <se:GraphicFill>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>shape://horline</se:WellKnownName>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">0.1</se:SvgParameter>
                 </se:Stroke>
               </se:Mark>
               <se:Size>16</se:Size>
             </se:Graphic>
           </se:GraphicFill>
         </se:Fill>
         <se:PerpendicularOffset>-15</se:PerpendicularOffset>
       </se:PolygonSymbolizer>
           <se:TextSymbolizer>
          <se:Label>
          	ma
          </se:Label>
              <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">15</se:SvgParameter>
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
		</se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_yk_13</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>13</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter>
		   <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>	
		  			
			<se:LineSymbolizer>
				<se:Stroke>
				  <se:SvgParameter name="stroke">#000000</se:SvgParameter>
				  <se:SvgParameter name="stroke-width">1.5</se:SvgParameter>
				  <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
				  <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
				  <se:SvgParameter name="stroke-dasharray">22 7 5 7</se:SvgParameter>
				</se:Stroke>
			  <se:PerpendicularOffset>5</se:PerpendicularOffset>
			  </se:LineSymbolizer>
			  <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
       	<se:PolygonSymbolizer>
        <se:Fill>
           <se:GraphicFill>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>shape://horline</se:WellKnownName>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">0.1</se:SvgParameter>
                 </se:Stroke>
               </se:Mark>
               <se:Size>16</se:Size>
             </se:Graphic>
           </se:GraphicFill>
         </se:Fill>
         <se:PerpendicularOffset>-15</se:PerpendicularOffset>
       </se:PolygonSymbolizer>
  			<se:PolygonSymbolizer>
        <se:Fill>
           <se:GraphicFill>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>shape://vertline</se:WellKnownName>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">0.1</se:SvgParameter>
                 </se:Stroke>
               </se:Mark>
               <se:Size>16</se:Size>
             </se:Graphic>
           </se:GraphicFill>
         </se:Fill>
         <se:PerpendicularOffset>-15</se:PerpendicularOffset>
       </se:PolygonSymbolizer>
           <se:TextSymbolizer>
          <se:Label>
          	sk
          </se:Label>
              <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">15</se:SvgParameter>
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
        </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
		<se:Name>MRL_Yk_14</se:Name>
		<ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>14</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter>
		   <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>	
		<se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
       	<se:PolygonSymbolizer>
        <se:Fill>
           <se:GraphicFill>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>shape://vertline</se:WellKnownName>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">0.1</se:SvgParameter>
                 </se:Stroke>
               </se:Mark>
               <se:Size>16</se:Size>
             </se:Graphic>
           </se:GraphicFill>
         </se:Fill>
        </se:PolygonSymbolizer>
		</se:Rule>
		
		<se:Rule>
          <se:Name>MRL_yk_15</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>15</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>			
			<se:LineSymbolizer>
				<se:Stroke>
				  <se:SvgParameter name="stroke">#000000</se:SvgParameter>
				  <se:SvgParameter name="stroke-width">1.5</se:SvgParameter>
				  <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
				  <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
				  <se:SvgParameter name="stroke-dasharray">22 7 5 7</se:SvgParameter>
				</se:Stroke>
			  <se:PerpendicularOffset>5</se:PerpendicularOffset>
			  </se:LineSymbolizer>
			  <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
       		<se:PolygonSymbolizer>
         <se:Fill>
           <se:GraphicFill>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>shape://slash</se:WellKnownName>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">0.1</se:SvgParameter>
                 </se:Stroke>
               </se:Mark>
               <se:Size>16</se:Size>
             </se:Graphic>
           </se:GraphicFill>
         </se:Fill>
               <se:PerpendicularOffset>-15</se:PerpendicularOffset>
       </se:PolygonSymbolizer>
           <se:TextSymbolizer>
          <se:Label>
          	ge
          </se:Label>
              <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">15</se:SvgParameter>
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
		   </se:TextSymbolizer>
		</se:Rule>
		
		<se:Rule>
		  <se:Name>MRL_yk_16</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>16</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>			
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1.5</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
              <se:SvgParameter name="stroke-dasharray">22 7 5 7</se:SvgParameter>
            </se:Stroke>
          <se:PerpendicularOffset>5</se:PerpendicularOffset>
          </se:LineSymbolizer>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#b3d7f1</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
               
          </se:LineSymbolizer>
       	  <se:TextSymbolizer>
          <se:Label>
          	pv
          </se:Label>
              <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">15</se:SvgParameter>
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
		  </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
		<se:Name>MRL_yk_17</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>17</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>	
       <!-- ulkoraja -->
			<se:LineSymbolizer>
				<se:Stroke>
				  <se:SvgParameter name="stroke">#c4c4c4</se:SvgParameter>
				  <se:SvgParameter name="stroke-width">1</se:SvgParameter>
				  <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
				  <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
				</se:Stroke>
			  </se:LineSymbolizer>
			  <se:LineSymbolizer>
				<se:Stroke>
				<se:GraphicStroke>
				 <se:Graphic>
				   <se:Mark>
					 <se:WellKnownName>circle</se:WellKnownName>
						<se:Fill>
							<se:SvgParameter name="fill">#c4c4c4</se:SvgParameter>
						</se:Fill>
						<se:Stroke>
							<se:SvgParameter name="stroke">#c4c4c4</se:SvgParameter>
							<se:SvgParameter name="stroke-width">1</se:SvgParameter>
						</se:Stroke>
				   </se:Mark>
				   <se:Size>4</se:Size>
				 </se:Graphic>
			   </se:GraphicStroke>
			   <se:SvgParameter name="stroke-dasharray">4 6</se:SvgParameter>
			 </se:Stroke>
				<se:PerpendicularOffset>0</se:PerpendicularOffset>
			</se:LineSymbolizer>
			<se:PolygonSymbolizer>
           	 <se:Fill>
			   <se:GraphicFill>
				 <se:Graphic>
				   <se:Mark>
					 <se:WellKnownName>shape://dot</se:WellKnownName>
					 <se:Stroke>
					   <se:SvgParameter name="stroke">#c4c4c4</se:SvgParameter>
					   <se:SvgParameter name="stroke-width">2</se:SvgParameter>
					 </se:Stroke>
				   </se:Mark>
				   <se:Size>7</se:Size>
				 </se:Graphic>
			   </se:GraphicFill>
			 </se:Fill>
             <!--  <se:PerpendicularOffset>-15</se:PerpendicularOffset> -->
		   </se:PolygonSymbolizer> 
			   <se:TextSymbolizer>
			  <se:Label>
				nat
			  </se:Label>
				  <se:Font>
				  <se:SvgParameter name="font-family">Arial</se:SvgParameter>
				  <se:SvgParameter name="font-size">15</se:SvgParameter>
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
			</se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
		  <se:Name>MRL_yk_18</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>18</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>			
        <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1.5</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
              <se:SvgParameter name="stroke-dasharray">22 7 5 7</se:SvgParameter>
            </se:Stroke>
          <se:PerpendicularOffset>5</se:PerpendicularOffset>
          </se:LineSymbolizer>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#58ad41</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
       	  <se:TextSymbolizer>
          <se:Label>
          	luo
          </se:Label>
              <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">15</se:SvgParameter>
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
		  </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_yk_19</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>19</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>	
		   <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
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
               <se:Size>4</se:Size>
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">4 6</se:SvgParameter>
         </se:Stroke>
		</se:LineSymbolizer>
		  <se:TextSymbolizer>
          <se:Label>
          	un
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">15</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">normal</se:SvgParameter>
            </se:Font>
              <se:LabelPlacement>
				<se:LinePlacement>
					<se:PerpendicularOffset>
						8
					</se:PerpendicularOffset>
				</se:LinePlacement>
			  </se:LabelPlacement>   
           </se:TextSymbolizer>
		</se:Rule>
		
		<se:Rule>
          <se:Name>MRL_yk_20</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>20</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>	
		   <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
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
               <se:Size>4</se:Size>
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">4 6</se:SvgParameter>
         </se:Stroke>
		</se:LineSymbolizer>
		  <se:TextSymbolizer>
          <se:Label>
          	kp
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">15</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">normal</se:SvgParameter>
            </se:Font>
              <se:LabelPlacement>
				<se:LinePlacement>
					<se:PerpendicularOffset>
						8
					</se:PerpendicularOffset>
				</se:LinePlacement>
			  </se:LabelPlacement>   
           </se:TextSymbolizer>
		</se:Rule>
		
		<se:Rule>
          <se:Name>MRL_yk_21</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>21</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>	
			<se:LineSymbolizer>
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
                <se:PerpendicularOffset>-9</se:PerpendicularOffset>
          </se:LineSymbolizer>   
			  <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#c4c4c4</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
                  <se:PerpendicularOffset>-15</se:PerpendicularOffset>
          </se:LineSymbolizer>
     	<se:PolygonSymbolizer>
         <se:Fill>
           <se:GraphicFill>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>shape://dot</se:WellKnownName>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#c4c4c4</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">3</se:SvgParameter>
                 </se:Stroke>
               </se:Mark>
               <se:Size>9</se:Size>
             </se:Graphic>
           </se:GraphicFill>
         </se:Fill>
            <se:PerpendicularOffset>15</se:PerpendicularOffset>
       </se:PolygonSymbolizer>
           <se:TextSymbolizer>
          <se:Label>
          	me
          </se:Label>
              <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">15</se:SvgParameter>
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
		   </se:TextSymbolizer>
		</se:Rule>
		
		<se:Rule>
          <se:Name>MRL_yk_22</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>22</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>	
			<se:LineSymbolizer>
				<se:Stroke>
				  <se:SvgParameter name="stroke">#000000</se:SvgParameter>
				  <se:SvgParameter name="stroke-width">1.5</se:SvgParameter>
				  <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
				  <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
				  <se:SvgParameter name="stroke-dasharray">22 7 5 7</se:SvgParameter>
				</se:Stroke>
			  <se:PerpendicularOffset>5</se:PerpendicularOffset>
			  </se:LineSymbolizer>
			  <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
       		<se:PolygonSymbolizer>
         <se:Fill>
           <se:GraphicFill>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>shape://times</se:WellKnownName>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">0.1</se:SvgParameter>
                 </se:Stroke>
               </se:Mark>
               <se:Size>16</se:Size>
             </se:Graphic>
           </se:GraphicFill>
         </se:Fill>
               <se:PerpendicularOffset>-15</se:PerpendicularOffset>
       </se:PolygonSymbolizer>
           <se:TextSymbolizer>
          <se:Label>
          	saa
          </se:Label>
              <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">15</se:SvgParameter>
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
		   </se:TextSymbolizer>
		</se:Rule>
		
		<se:Rule>
          <se:Name>MRL_yk_23</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>23</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>		
		<se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1.5</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
              <se:SvgParameter name="stroke-dasharray">22 7 5 7</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
           <se:TextSymbolizer>
          <se:Label>
          	va
          </se:Label>
         
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">15</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">normal</se:SvgParameter>
            </se:Font>
              <se:LabelPlacement>
				<se:LinePlacement>
					<se:PerpendicularOffset>
						8
					</se:PerpendicularOffset>
				</se:LinePlacement>
			  </se:LabelPlacement>   
           </se:TextSymbolizer>
		</se:Rule>
		
		
		<se:Rule>
          <se:Name>MRL_yk_24</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>24</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>		
		<se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1.5</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
              <se:SvgParameter name="stroke-dasharray">22 7 5 7</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
           <se:TextSymbolizer>
          <se:Label>
          	sv
          </se:Label>
         
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">15</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">normal</se:SvgParameter>
            </se:Font>
              <se:LabelPlacement>
				<se:LinePlacement>
					<se:PerpendicularOffset>
						8
					</se:PerpendicularOffset>
				</se:LinePlacement>
			  </se:LabelPlacement>   
           </se:TextSymbolizer>
		</se:Rule>
		
		
		<se:Rule>
          <se:Name>MRL_yk_25</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>25</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>		
		<se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1.5</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
              <se:SvgParameter name="stroke-dasharray">22 7 5 7</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
           <se:TextSymbolizer>
          <se:Label>
          	ke
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">15</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">normal</se:SvgParameter>
            </se:Font>
              <se:LabelPlacement>
				<se:LinePlacement>
					<se:PerpendicularOffset>
						8
					</se:PerpendicularOffset>
				</se:LinePlacement>
			  </se:LabelPlacement>   
           </se:TextSymbolizer>
		</se:Rule>
		
		<se:Rule>
          <se:Name>MRL_yk_26</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>26</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>		
		<se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1.5</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
              <se:SvgParameter name="stroke-dasharray">22 7 5 7</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
           <se:TextSymbolizer>
          <se:Label>
          	st
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">15</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">normal</se:SvgParameter>
            </se:Font>
              <se:LabelPlacement>
				<se:LinePlacement>
					<se:PerpendicularOffset>
						8
					</se:PerpendicularOffset>
				</se:LinePlacement>
			  </se:LabelPlacement>   
           </se:TextSymbolizer>
		</se:Rule>
		
		  <se:Rule>
          <se:Name>MRL_Yk_111</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>111</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
			<se:LineSymbolizer>
				<se:Stroke>
				  <se:SvgParameter name="stroke">#000000</se:SvgParameter>
				  <se:SvgParameter name="stroke-width">1.5</se:SvgParameter>
				  <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
				  <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
				  <se:SvgParameter name="stroke-dasharray">22 7 5 7</se:SvgParameter>
				</se:Stroke>
			  <se:PerpendicularOffset>5</se:PerpendicularOffset>
			  </se:LineSymbolizer>
           <se:TextSymbolizer>
          <se:Label>
          	tv
          </se:Label>
              <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">15</se:SvgParameter>
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
		</se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_yk_112</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>112</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
		 <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.1</se:SvgParameter>
			  <se:SvgParameter name="stroke-opacity">0.0</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
		   <se:TextSymbolizer>
          <se:Label>
          	ma
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">22</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">normal</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_yk_113</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>113</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
		 <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.1</se:SvgParameter>
			  <se:SvgParameter name="stroke-opacity">0.0</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
		   <se:TextSymbolizer>
          <se:Label>
          	mav
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">22</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">normal</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_yk_114</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>114</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
		 <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.1</se:SvgParameter>
			  <se:SvgParameter name="stroke-opacity">0.0</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
		   <se:TextSymbolizer>
          <se:Label>
          	/k
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">22</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">normal</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_yk_115</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>115</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
		 <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.1</se:SvgParameter>
			  <se:SvgParameter name="stroke-opacity">0.0</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
		   <se:TextSymbolizer>
          <se:Label>
          	/v
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">22</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">normal</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_yk_116</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>116</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>		
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#e2c096</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
		
		 <se:Rule>
           <se:Name>MRL_yk_117</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>117</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#e2c096</se:SvgParameter>
                 <se:SvgParameter name="stroke-width">5</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
          	<se:PolygonSymbolizer>
        <se:Fill>
           <se:GraphicFill>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>shape://horline</se:WellKnownName>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#e2c096</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">2.6</se:SvgParameter>
                 </se:Stroke>
               </se:Mark>
               <se:Size>16</se:Size>
             </se:Graphic>
           </se:GraphicFill>
         </se:Fill>
         <se:PerpendicularOffset>-15</se:PerpendicularOffset>
       </se:PolygonSymbolizer>
  			<se:PolygonSymbolizer>
        <se:Fill>
           <se:GraphicFill>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>shape://vertline</se:WellKnownName>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#e2c096</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">2.6</se:SvgParameter>
                 </se:Stroke>
               </se:Mark>
               <se:Size>16</se:Size>
             </se:Graphic>
           </se:GraphicFill>
         </se:Fill>
         <se:PerpendicularOffset>-15</se:PerpendicularOffset>
       </se:PolygonSymbolizer>
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_yk_118</se:Name>
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>yk_merk</ogc:PropertyName>
				<ogc:Literal>118</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>80000</se:MaxScaleDenominator>	
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#e2c096</se:SvgParameter>
                 <se:SvgParameter name="stroke-width">8</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
		
	  </se:FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
		  