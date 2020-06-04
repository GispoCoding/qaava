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
          <se:Name>MRL_ak_39</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 39</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>39</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter>
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
          <se:Name>MRL_ak_53</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 53</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>53</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter>
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
          <se:Name>MRL_ak_69</se:Name>
		  <!-- <Title>MRL:n oppaan asemakaavamerkinta nro 69</Title> -->
		  <ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName>ak_merk</ogc:PropertyName>
				<ogc:Literal>69</ogc:Literal>
			</ogc:PropertyIsEqualTo>
		  </ogc:Filter>
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