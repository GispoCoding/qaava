<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" version="1.1.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ogc="http://www.opengis.net/ogc" xmlns:se="http://www.opengis.net/se">
  <NamedLayer>
    <se:Name>Asemakaava_kaavayks</se:Name>
    <UserStyle>
      <se:Name>Asemakaava_kaavayks</se:Name>
      <se:FeatureTypeStyle>
		<se:Rule>
          <se:Name>MRL_ak_1</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 1</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>1</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#e2c096</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	A
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_2</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 2</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>2</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#b98444</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	AK
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
        		
		
		<se:Rule>
          <se:Name>MRL_ak_3</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 3</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>3</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#e2c096</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	AP
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
	    <se:Rule>
          <se:Name>MRL_ak_4</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 4</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>4</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#e2c096</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	AR
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_5</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 5</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>5</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#e2c096</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	AO
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_6</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 6</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>6</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#b98444</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	AL
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_7</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 7</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>7</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#e2c096</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	AH
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_8</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 8</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>8</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#e2c096</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	AM
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_9</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 9</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>9</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#faab53</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	P
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		
		<se:Rule>
          <se:Name>MRL_ak_10</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 10</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>10</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#faab53</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	PL
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_11</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 11</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>11</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#faab53</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	PV
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_12</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 12</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>12</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ddd4e9</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	Y
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
				
		<se:Rule>
          <se:Name>MRL_ak_13</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 13</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>13</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ddd4e9</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	YL
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_14</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 14</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>14</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ddd4e9</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	YH
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_15</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 15</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>15</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ddd4e9</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	YO
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_16</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 16</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>16</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ddd4e9</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	YS
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_17</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 17</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>17</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ddd4e9</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	YY
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_18</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 18</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>18</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ddd4e9</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	YM
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_19</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 19</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>19</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ddd4e9</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	YK
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_20</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 20</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>20</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ddd4e9</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	YU
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_21</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 21</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>21</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#d63648</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	C
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_22</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 22</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>22</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter>
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#faab53</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	K
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
				
		<se:Rule>
          <se:Name>MRL_ak_23</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 23</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>23</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#faab53</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	KL
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_24</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 24</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>24</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#faab53</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	KM
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_25</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 25</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>25</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#faab53</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	KT
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_26</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 26</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>26</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#faab53</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	KTY
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_27</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 27</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>27</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#c1c3c5</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	T
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
	
		
		<se:Rule>
          <se:Name>MRL_ak_28</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 28</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>28</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#c1c3c5</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	TT
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		
		<se:Rule>
          <se:Name>MRL_ak_29</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 29</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>29</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#c1c3c5</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	TV
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		
		<se:Rule>
          <se:Name>MRL_ak_30</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 30</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>30</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#c1c3c5</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	TY
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		
		<se:Rule>
          <se:Name>MRL_ak_31</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 31</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>31</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#c1c3c5</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	T/kem
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_32</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 32</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>32</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#58ad41</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	V  
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
		   <se:LineSymbolizer>
			<se:Stroke>
			   <se:GraphicStroke>
				<se:Graphic>
				<se:ExternalGraphic>
					<se:OnlineResource xlink:type="simple" xlink:href="https://raw.githubusercontent.com/GispoCoding/qaava/master/asemakaavan-kuvaustekniikka/kaavasymbolien-svg-kuvat/32-38.svg"/>
					<se:Format>image/svg+xml</se:Format>
				</se:ExternalGraphic>
				  <se:Size>
					<ogc:Literal>20</ogc:Literal>
				  </se:Size>
				</se:Graphic>
				</se:GraphicStroke>
			</se:Stroke>
			<se:PerpendicularOffset>-12</se:PerpendicularOffset>
		   </se:LineSymbolizer>
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_33</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 33</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>33</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#58ad41</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	VP  
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
		   <se:LineSymbolizer>
			<se:Stroke>
			   <se:GraphicStroke>
				<se:Graphic>
				<se:ExternalGraphic>
					<se:OnlineResource xlink:type="simple" xlink:href="https://raw.githubusercontent.com/GispoCoding/qaava/master/asemakaavan-kuvaustekniikka/kaavasymbolien-svg-kuvat/32-38.svg"/>
					<se:Format>image/svg+xml</se:Format>
				</se:ExternalGraphic>
				  <se:Size>
					<ogc:Literal>20</ogc:Literal>
				  </se:Size>
				</se:Graphic>
				</se:GraphicStroke>
			</se:Stroke>
			<se:PerpendicularOffset>-12</se:PerpendicularOffset>
		   </se:LineSymbolizer>
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_34</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 34</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>34</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#58ad41</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	VL
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
		   <se:LineSymbolizer>
			<se:Stroke>
			   <se:GraphicStroke>
				<se:Graphic>
				<se:ExternalGraphic>
					<se:OnlineResource xlink:type="simple" xlink:href="https://raw.githubusercontent.com/GispoCoding/qaava/master/asemakaavan-kuvaustekniikka/kaavasymbolien-svg-kuvat/32-38.svg"/>
					<se:Format>image/svg+xml</se:Format>
				</se:ExternalGraphic>
				  <se:Size>
					<ogc:Literal>20</ogc:Literal>
				  </se:Size>
				</se:Graphic>
				</se:GraphicStroke>
			</se:Stroke>
			<se:PerpendicularOffset>-12</se:PerpendicularOffset>
		   </se:LineSymbolizer>
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_35</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 35</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>35</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#58ad41</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	VK 
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
		   <se:LineSymbolizer>
			<se:Stroke>
			   <se:GraphicStroke>
				<se:Graphic>
				<se:ExternalGraphic>
					<se:OnlineResource xlink:type="simple" xlink:href="https://raw.githubusercontent.com/GispoCoding/qaava/master/asemakaavan-kuvaustekniikka/kaavasymbolien-svg-kuvat/32-38.svg"/>
					<se:Format>image/svg+xml</se:Format>
				</se:ExternalGraphic>
				  <se:Size>
					<ogc:Literal>20</ogc:Literal>
				  </se:Size>
				</se:Graphic>
				</se:GraphicStroke>
			</se:Stroke>
			<se:PerpendicularOffset>-12</se:PerpendicularOffset>
		   </se:LineSymbolizer>
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_36</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 36</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>36</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#58ad41</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	VU 
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
		   <se:LineSymbolizer>
			<se:Stroke>
			   <se:GraphicStroke>
				<se:Graphic>
				<se:ExternalGraphic>
					<se:OnlineResource xlink:type="simple" xlink:href="https://raw.githubusercontent.com/GispoCoding/qaava/master/asemakaavan-kuvaustekniikka/kaavasymbolien-svg-kuvat/32-38.svg"/>
					<se:Format>image/svg+xml</se:Format>
				</se:ExternalGraphic>
				  <se:Size>
					<ogc:Literal>20</ogc:Literal>
				  </se:Size>
				</se:Graphic>
				</se:GraphicStroke>
			</se:Stroke>
			<se:PerpendicularOffset>-12</se:PerpendicularOffset>
		   </se:LineSymbolizer>
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_37</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 37</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>37</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#58ad41</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	VR
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
		   <se:LineSymbolizer>
			<se:Stroke>
			   <se:GraphicStroke>
				<se:Graphic>
				<se:ExternalGraphic>
					<se:OnlineResource xlink:type="simple" xlink:href="https://raw.githubusercontent.com/GispoCoding/qaava/master/asemakaavan-kuvaustekniikka/kaavasymbolien-svg-kuvat/32-38.svg"/>
					<se:Format>image/svg+xml</se:Format>
				</se:ExternalGraphic>
				  <se:Size>
					<ogc:Literal>20</ogc:Literal>
				  </se:Size>
				</se:Graphic>
				</se:GraphicStroke>
			</se:Stroke>
			<se:PerpendicularOffset>-12</se:PerpendicularOffset>
		   </se:LineSymbolizer>
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_38</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 38</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>38</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#58ad41</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	VV  
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
		   <se:LineSymbolizer>
			<se:Stroke>
			   <se:GraphicStroke>
				<se:Graphic>
				<se:ExternalGraphic>
					<se:OnlineResource xlink:type="simple" xlink:href="https://raw.githubusercontent.com/GispoCoding/qaava/master/asemakaavan-kuvaustekniikka/kaavasymbolien-svg-kuvat/32-38.svg"/>
					<se:Format>image/svg+xml</se:Format>
				</se:ExternalGraphic>
				  <se:Size>
					<ogc:Literal>20</ogc:Literal>
				  </se:Size>
				</se:Graphic>
				</se:GraphicStroke>
			</se:Stroke>
			<se:PerpendicularOffset>-12</se:PerpendicularOffset>
		   </se:LineSymbolizer>
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_39</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 39</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>39</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ffcf45</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	R  
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_40</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 40</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>40</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ffcf45</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	RA  
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_41</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 41</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>41</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ffcf45</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	RM  
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_42</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 42</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>42</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ffcf45</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	RL
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_43</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 43</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>43</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ffcf45</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	RV 
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_44</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 44</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>44</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ffcf45</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	RP  
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		
		<se:Rule> 
		  <se:Name>MRL_ak_45</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 45</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>45</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>		
           <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#ff0000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">3</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
             <se:PerpendicularOffset>-3</se:PerpendicularOffset>
          </se:LineSymbolizer>
          
		  <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">2</se:SvgParameter>
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
              	<se:SvgParameter name="fill">#ff00000</se:SvgParameter>
            	</se:Fill>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                 </se:Stroke>
                  
               </se:Mark>
               <se:Size>7.5</se:Size>
               
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">15 5 3 5</se:SvgParameter>
           <se:SvgParameter name="stroke-dashoffset">5</se:SvgParameter>
           
         </se:Stroke>
		 <se:PerpendicularOffset>-5</se:PerpendicularOffset>
       </se:LineSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	L
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
           </se:Rule>
		
		<se:Rule> 
		  <se:Name>MRL_ak_46</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 46</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>46</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>		
           <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#ff0000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">3</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
             <se:PerpendicularOffset>-3</se:PerpendicularOffset>
          </se:LineSymbolizer>
          
		  <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">2</se:SvgParameter>
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
              	<se:SvgParameter name="fill">#ff00000</se:SvgParameter>
            	</se:Fill>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                 </se:Stroke>
                  
               </se:Mark>
               <se:Size>7.5</se:Size>
               
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">15 5 3 5</se:SvgParameter>
           <se:SvgParameter name="stroke-dashoffset">5</se:SvgParameter>
           
         </se:Stroke>
		 <se:PerpendicularOffset>-5</se:PerpendicularOffset>
       </se:LineSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	LT
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		   
		<se:Rule> 
		  <se:Name>MRL_ak_47</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 47</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>47</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>		
           <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#ff0000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">3</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
             <se:PerpendicularOffset>-3</se:PerpendicularOffset>
          </se:LineSymbolizer>
          
		  <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">2</se:SvgParameter>
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
               <se:Size>7.5</se:Size>
               
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">15 5 3 5</se:SvgParameter>
           <se:SvgParameter name="stroke-dashoffset">5</se:SvgParameter>
           
         </se:Stroke>
		 <se:PerpendicularOffset>-5</se:PerpendicularOffset>
       </se:LineSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	LR
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		   
		<se:Rule> 
		  <se:Name>MRL_ak_48</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 48</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>48</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>		
           <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#ff0000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">3</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
             <se:PerpendicularOffset>-3</se:PerpendicularOffset>
          </se:LineSymbolizer>
          
		  <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">2</se:SvgParameter>
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
              	<se:SvgParameter name="fill">#ff00000</se:SvgParameter>
            	</se:Fill>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                 </se:Stroke>
                  
               </se:Mark>
               <se:Size>7.5</se:Size>
               
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">15 5 3 5</se:SvgParameter>
           <se:SvgParameter name="stroke-dashoffset">5</se:SvgParameter>
           
         </se:Stroke>
		 <se:PerpendicularOffset>-5</se:PerpendicularOffset>
       </se:LineSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	LL
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule> 
		  <se:Name>MRL_ak_49</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 49</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>49</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>		
           <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#ff0000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">3</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
             <se:PerpendicularOffset>-3</se:PerpendicularOffset>
          </se:LineSymbolizer>
          
		  <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">2</se:SvgParameter>
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
              	<se:SvgParameter name="fill">#ff00000</se:SvgParameter>
            	</se:Fill>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                 </se:Stroke>
                  
               </se:Mark>
               <se:Size>7.5</se:Size>
               
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">15 5 3 5</se:SvgParameter>
           <se:SvgParameter name="stroke-dashoffset">5</se:SvgParameter>
           
         </se:Stroke>
		 <se:PerpendicularOffset>-5</se:PerpendicularOffset>
       </se:LineSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	LS
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule> 
		  <se:Name>MRL_ak_50</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 50</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>50</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>		
           <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#ff0000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">3</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
             <se:PerpendicularOffset>-3</se:PerpendicularOffset>
          </se:LineSymbolizer>
		  <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">2</se:SvgParameter>
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
              	<se:SvgParameter name="fill">#ff00000</se:SvgParameter>
            	</se:Fill>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                 </se:Stroke>
               </se:Mark>
               <se:Size>7.5</se:Size>
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">15 5 3 5</se:SvgParameter>
           <se:SvgParameter name="stroke-dashoffset">5</se:SvgParameter>
          </se:Stroke>
		 <se:PerpendicularOffset>-5</se:PerpendicularOffset>
       </se:LineSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	LK
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule> 
		  <se:Name>MRL_ak_51</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 51</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>51</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>		
           <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#ff0000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">3</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
             <se:PerpendicularOffset>-3</se:PerpendicularOffset>
          </se:LineSymbolizer>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">2</se:SvgParameter>
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
              	<se:SvgParameter name="fill">#ff00000</se:SvgParameter>
            	</se:Fill>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                 </se:Stroke>
                  
               </se:Mark>
               <se:Size>7.5</se:Size>
               
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">15 5 3 5</se:SvgParameter>
           <se:SvgParameter name="stroke-dashoffset">5</se:SvgParameter>
           </se:Stroke>
		   <se:PerpendicularOffset>-5</se:PerpendicularOffset>
          </se:LineSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	LV
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule> 
		  <se:Name>MRL_ak_52</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 52</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>52</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>		
           <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#ff0000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">3</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
             <se:PerpendicularOffset>-3</se:PerpendicularOffset>
          </se:LineSymbolizer>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">2</se:SvgParameter>
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
              	<se:SvgParameter name="fill">#ff00000</se:SvgParameter>
            	</se:Fill>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                 </se:Stroke>
               </se:Mark>
               <se:Size>7.5</se:Size>
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">15 5 3 5</se:SvgParameter>
           <se:SvgParameter name="stroke-dashoffset">5</se:SvgParameter>
          </se:Stroke>
		 <se:PerpendicularOffset>-5</se:PerpendicularOffset>
		</se:LineSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	LP
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
			
		<se:Rule>
          <se:Name>MRL_ak_53</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 53</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>53</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#f9c6d1</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	LH
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
         <se:Rule>
          <se:Name>MRL_ak_54</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 54</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>54</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#f9c6d1</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	LHA
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_55</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 55</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>55</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#f9c6d1</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	LTA
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_56</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 56</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>56</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#f9c6d1</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	LPY
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_57</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 57</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>57</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#f9c6d1</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	LPA
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
		  <se:Name>MRL_ak_58</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 58</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>58</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#e6adcf</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:LineSymbolizer>
         <se:Stroke>
           <se:GraphicStroke>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>triangle</se:WellKnownName>
                 <se:Fill>
              	<se:SvgParameter name="fill">#000000</se:SvgParameter>
            	</se:Fill>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                 </se:Stroke>
               </se:Mark>
               <se:Size>12</se:Size>
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">15  15 </se:SvgParameter>
           <se:SvgParameter name="stroke-dashoffset">15</se:SvgParameter>
         </se:Stroke>
		 <se:PerpendicularOffset>-5</se:PerpendicularOffset>
		</se:LineSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	E
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
      
		<se:Rule>
		  <se:Name>MRL_ak_59</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 59</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>59</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#e6adcf</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:LineSymbolizer>
         <se:Stroke>
           <se:GraphicStroke>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>triangle</se:WellKnownName>
                 <se:Fill>
              	<se:SvgParameter name="fill">#000000</se:SvgParameter>
            	</se:Fill>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                 </se:Stroke>
                  
               </se:Mark>
               <se:Size>12</se:Size>
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">15  15 </se:SvgParameter>
           <se:SvgParameter name="stroke-dashoffset">15</se:SvgParameter>
         </se:Stroke>
		 <se:PerpendicularOffset>-5</se:PerpendicularOffset>
		</se:LineSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	ET
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
		  <se:Name>MRL_ak_60</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 60</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>60</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#e6adcf</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:LineSymbolizer>
         <se:Stroke>
           <se:GraphicStroke>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>triangle</se:WellKnownName>
                 <se:Fill>
              	<se:SvgParameter name="fill">#000000</se:SvgParameter>
            	</se:Fill>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                 </se:Stroke>
               </se:Mark>
               <se:Size>12</se:Size>
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">15  15 </se:SvgParameter>
           <se:SvgParameter name="stroke-dashoffset">15</se:SvgParameter>
           </se:Stroke>
		   <se:PerpendicularOffset>-5</se:PerpendicularOffset>
		</se:LineSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	EN
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
		  <se:Name>MRL_ak_61</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 61</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>61</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
         
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#e6adcf</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:LineSymbolizer>
         <se:Stroke>
           <se:GraphicStroke>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>triangle</se:WellKnownName>
                 <se:Fill>
              	<se:SvgParameter name="fill">#000000</se:SvgParameter>
            	</se:Fill>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                 </se:Stroke>
                  
               </se:Mark>
               <se:Size>12</se:Size>
               
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">15  15 </se:SvgParameter>
           <se:SvgParameter name="stroke-dashoffset">15</se:SvgParameter>
           
         </se:Stroke>
		 <se:PerpendicularOffset>-5</se:PerpendicularOffset>
       </se:LineSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	EJ
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
		  <se:Name>MRL_ak_62</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 62</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>62</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
         
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#e6adcf</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:LineSymbolizer>
         <se:Stroke>
           <se:GraphicStroke>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>triangle</se:WellKnownName>
                 <se:Fill>
              	<se:SvgParameter name="fill">#000000</se:SvgParameter>
            	</se:Fill>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                 </se:Stroke>
                  
               </se:Mark>
               <se:Size>12</se:Size>
               
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">15  15 </se:SvgParameter>
           <se:SvgParameter name="stroke-dashoffset">15</se:SvgParameter>
           
         </se:Stroke>
		 <se:PerpendicularOffset>-5</se:PerpendicularOffset>
       </se:LineSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	EO
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
		  <se:Name>MRL_ak_63</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 63</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>63</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
         
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#e6adcf</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:LineSymbolizer>
         <se:Stroke>
           <se:GraphicStroke>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>triangle</se:WellKnownName>
                 <se:Fill>
              	<se:SvgParameter name="fill">#000000</se:SvgParameter>
            	</se:Fill>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                 </se:Stroke>
                  
               </se:Mark>
               <se:Size>12</se:Size>
               
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">15  15 </se:SvgParameter>
           <se:SvgParameter name="stroke-dashoffset">15</se:SvgParameter>
           
         </se:Stroke>
		 <se:PerpendicularOffset>-5</se:PerpendicularOffset>
       </se:LineSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	EK
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
		  <se:Name>MRL_ak_64</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 64</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>64</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
         
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#e6adcf</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:LineSymbolizer>
         <se:Stroke>
           <se:GraphicStroke>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>triangle</se:WellKnownName>
                 <se:Fill>
              	<se:SvgParameter name="fill">#000000</se:SvgParameter>
            	</se:Fill>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                 </se:Stroke>
                  
               </se:Mark>
               <se:Size>12</se:Size>
               
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">15  15 </se:SvgParameter>
           <se:SvgParameter name="stroke-dashoffset">15</se:SvgParameter>
           
         </se:Stroke>
		 <se:PerpendicularOffset>-5</se:PerpendicularOffset>
       </se:LineSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	EMT
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
		  <se:Name>MRL_ak_65</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 65</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>65</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
         
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#e6adcf</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:LineSymbolizer>
         <se:Stroke>
           <se:GraphicStroke>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>triangle</se:WellKnownName>
                 <se:Fill>
              	<se:SvgParameter name="fill">#000000</se:SvgParameter>
            	</se:Fill>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                 </se:Stroke>
                  
               </se:Mark>
               <se:Size>12</se:Size>
               
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">15  15 </se:SvgParameter>
           <se:SvgParameter name="stroke-dashoffset">15</se:SvgParameter>
           
         </se:Stroke>
		 <se:PerpendicularOffset>-5</se:PerpendicularOffset>
       </se:LineSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	EA
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
		  <se:Name>MRL_ak_66</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 66</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>66</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
         
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#e6adcf</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:LineSymbolizer>
         <se:Stroke>
           <se:GraphicStroke>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>triangle</se:WellKnownName>
                 <se:Fill>
              	<se:SvgParameter name="fill">#000000</se:SvgParameter>
            	</se:Fill>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                 </se:Stroke>
                  
               </se:Mark>
               <se:Size>12</se:Size>
               
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">15  15 </se:SvgParameter>
           <se:SvgParameter name="stroke-dashoffset">15</se:SvgParameter>
           
         </se:Stroke>
		 <se:PerpendicularOffset>-5</se:PerpendicularOffset>
       </se:LineSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	EP
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
		  <se:Name>MRL_ak_67</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 67</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>67</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
         
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#74ccd3</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:LineSymbolizer>
         <se:Stroke>
           <se:GraphicStroke>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>triangle</se:WellKnownName>
                 <se:Fill>
              	<se:SvgParameter name="fill">#000000</se:SvgParameter>
            	</se:Fill>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                 </se:Stroke>
                  
               </se:Mark>
               <se:Size>12</se:Size>
               
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">15  15 </se:SvgParameter>
           <se:SvgParameter name="stroke-dashoffset">15</se:SvgParameter>
           
         </se:Stroke>
		 <se:PerpendicularOffset>-5</se:PerpendicularOffset>
       </se:LineSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	EH
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
      
	  <se:Rule>
		  <se:Name>MRL_ak_68</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 68</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>68</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
         
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#74ccd3</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:LineSymbolizer>
         <se:Stroke>
           <se:GraphicStroke>
             <se:Graphic>
               <se:Mark>
                 <se:WellKnownName>triangle</se:WellKnownName>
                 <se:Fill>
              	<se:SvgParameter name="fill">#000000</se:SvgParameter>
            	</se:Fill>
                 <se:Stroke>
                   <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                   <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                 </se:Stroke>
                  
               </se:Mark>
               <se:Size>12</se:Size>
               
             </se:Graphic>
           </se:GraphicStroke>
           <se:SvgParameter name="stroke-dasharray">15  15 </se:SvgParameter>
           <se:SvgParameter name="stroke-dashoffset">15</se:SvgParameter>
           
         </se:Stroke>
		 <se:PerpendicularOffset>-5</se:PerpendicularOffset>
       </se:LineSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	EV
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_69</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 69</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>69</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#b6e2e3</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	S
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
				
		<se:Rule>
          <se:Name>MRL_ak_70</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 70</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>70</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#b6e2e3</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	SL
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
         
        </se:Rule>
				
		<se:Rule>
          <se:Name>MRL_ak_71</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 71</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>71</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#b6e2e3</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	SM
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
				
		<se:Rule>
          <se:Name>MRL_ak_72</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 72</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>72</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#b6e2e3</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	SR
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_73</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 73</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>73</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
			  <se:SvgParameter name="opacity">0.0</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	/s
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_74</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 74</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>74</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#dbdb55</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	M
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_75</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 75</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>75</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#eced98</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	MT
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_76</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 76</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>76</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#c3bc03</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	ME
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_77</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 77</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>77</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#c3bc03</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	MP
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_78</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 78</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>78</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#fff353</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	MA
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_79</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 79</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>79</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#bcdeb2</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	MU
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		
		<se:Rule>
          <se:Name>MRL_ak_80</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 80</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>80</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#bcdeb2</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	MY
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
          
        </se:Rule>
		
		<se:Rule>
          <se:Name>MRL_ak_81</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 81</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>81</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter> 
		  <se:MaxScaleDenominator>2500</se:MaxScaleDenominator>
		  <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">##b3d7f1</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:TextSymbolizer>
          <se:Label>
          	W
          </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Arial</se:SvgParameter>
              <se:SvgParameter name="font-size">29</se:SvgParameter>
              <se:SvgParameter name="font-style">normal</se:SvgParameter>
              <se:SvgParameter name="font-weight">bold</se:SvgParameter>
            </se:Font>
           </se:TextSymbolizer>
        </se:Rule>
				
      </se:FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
