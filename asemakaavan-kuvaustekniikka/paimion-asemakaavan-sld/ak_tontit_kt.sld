<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:se="http://www.opengis.net/se" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0">
  <NamedLayer>
    <se:Name>kaavayksikot</se:Name>
    <UserStyle>
      <se:Name>kaavayksikot</se:Name>
      <se:FeatureTypeStyle>
        <se:Rule>
          <se:Name>M</se:Name>
          <se:Description>
            <se:Title>M</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>kt_1</ogc:PropertyName>
              <ogc:Literal>M</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#dbdb55</se:SvgParameter>
            <se:SvgParameter name="fill-opacity">0.6</se:SvgParameter>
			</se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>MA</se:Name>
          <se:Description>
            <se:Title>MA</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>kt_1</ogc:PropertyName>
              <ogc:Literal>MA</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#fff353</se:SvgParameter>
            <se:SvgParameter name="fill-opacity">0.6</se:SvgParameter>
			</se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#232323</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>MT</se:Name>
          <se:Description>
            <se:Title>MT</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>kt_1</ogc:PropertyName>
              <ogc:Literal>MT</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#edee97</se:SvgParameter>
            <se:SvgParameter name="fill-opacity">0.6</se:SvgParameter>
			</se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>ME, MP</se:Name>
          <se:Description>
            <se:Title>ME, MP</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>kt_1</ogc:PropertyName>
                <ogc:Literal>ME</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>kt_1</ogc:PropertyName>
                <ogc:Literal>MP</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#c2c24c</se:SvgParameter>
            <se:SvgParameter name="fill-opacity">0.6</se:SvgParameter>
			</se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>MY, MU</se:Name>
          <se:Description>
            <se:Title>MY, MU</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>kt_1</ogc:PropertyName>
                <ogc:Literal>MY</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>kt_1</ogc:PropertyName>
                <ogc:Literal>MU</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#bcdeb2</se:SvgParameter>
            <se:SvgParameter name="fill-opacity">0.6</se:SvgParameter>
			</se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>W</se:Name>
          <se:Description>
            <se:Title>W</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>kt_1</ogc:PropertyName>
              <ogc:Literal>W</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#b3d7f1</se:SvgParameter>
            <se:SvgParameter name="fill-opacity">0.6</se:SvgParameter>
			</se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>K, KL, KLT, KM, KT, KTY</se:Name>
          <se:Description>
            <se:Title>K, KL, KLT, KM, KT, KTY</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:Or>
              <ogc:Or>
                <ogc:Or>
                  <ogc:Or>
                    <ogc:Or>
                      <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>kt_1</ogc:PropertyName>
                        <ogc:Literal>K</ogc:Literal>
                      </ogc:PropertyIsEqualTo>
                      <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>kt_1</ogc:PropertyName>
                        <ogc:Literal>KL</ogc:Literal>
                      </ogc:PropertyIsEqualTo>
                    </ogc:Or>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>kt_1</ogc:PropertyName>
                      <ogc:Literal>KLT</ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                  <ogc:PropertyIsEqualTo>
                    <ogc:PropertyName>kt_1</ogc:PropertyName>
                    <ogc:Literal>KM</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
                </ogc:Or>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>kt_1</ogc:PropertyName>
                  <ogc:Literal>KT</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>kt_1</ogc:PropertyName>
                <ogc:Literal>KTY</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#faaa53</se:SvgParameter>
            <se:SvgParameter name="fill-opacity">0.6</se:SvgParameter>
			</se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>AK, AKR, AL, ALK</se:Name>
          <se:Description>
            <se:Title>AK, AKR, AL, ALK</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:Or>
              <ogc:Or>
                <ogc:Or>
                  <ogc:PropertyIsEqualTo>
                    <ogc:PropertyName>kt_1</ogc:PropertyName>
                    <ogc:Literal>AK</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
                  <ogc:PropertyIsEqualTo>
                    <ogc:PropertyName>kt_1</ogc:PropertyName>
                    <ogc:Literal>AL</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
                </ogc:Or>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>kt_1</ogc:PropertyName>
                  <ogc:Literal>AKR</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>kt_1</ogc:PropertyName>
                <ogc:Literal>ALK</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#b98444</se:SvgParameter>
            <se:SvgParameter name="fill-opacity">0.6</se:SvgParameter>
			</se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>Y, YL, YH, YO, YS, YY, YM, YK, YU, YT, YOS, YV</se:Name>
          <se:Description>
            <se:Title>Y, YL, YH, YO, YS, YY, YM, YK, YU, YT, YOS, YV</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:Or>
              <ogc:Or>
                <ogc:Or>
                  <ogc:Or>
                    <ogc:Or>
                      <ogc:Or>
                        <ogc:Or>
                          <ogc:Or>
                            <ogc:Or>
                              <ogc:Or>
							  <ogc:Or>
                                <ogc:PropertyIsEqualTo>
                                  <ogc:PropertyName>kt_1</ogc:PropertyName>
                                  <ogc:Literal>Y</ogc:Literal>
                                </ogc:PropertyIsEqualTo>
                                <ogc:PropertyIsEqualTo>
                                  <ogc:PropertyName>kt_1</ogc:PropertyName>
                                  <ogc:Literal>YL</ogc:Literal>
                                </ogc:PropertyIsEqualTo>
                              </ogc:Or>
                              <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>kt_1</ogc:PropertyName>
                                <ogc:Literal>YH</ogc:Literal>
                              </ogc:PropertyIsEqualTo>
                            </ogc:Or>
                            <ogc:PropertyIsEqualTo>
                              <ogc:PropertyName>kt_1</ogc:PropertyName>
                              <ogc:Literal>YO</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                          </ogc:Or>
                          <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>kt_1</ogc:PropertyName>
                            <ogc:Literal>YS</ogc:Literal>
                          </ogc:PropertyIsEqualTo>
                        </ogc:Or>
                        <ogc:PropertyIsEqualTo>
                          <ogc:PropertyName>kt_1</ogc:PropertyName>
                          <ogc:Literal>YY</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                      </ogc:Or>
                      <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>kt_1</ogc:PropertyName>
                        <ogc:Literal>YM</ogc:Literal>
                      </ogc:PropertyIsEqualTo>
                    </ogc:Or>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>kt_1</ogc:PropertyName>
                      <ogc:Literal>YK</ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                  <ogc:PropertyIsEqualTo>
                    <ogc:PropertyName>kt_1</ogc:PropertyName>
                    <ogc:Literal>YU</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
                </ogc:Or>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>kt_1</ogc:PropertyName>
                  <ogc:Literal>YT</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>kt_1</ogc:PropertyName>
                <ogc:Literal>YOS</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
			  <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>kt_1</ogc:PropertyName>
                <ogc:Literal>YV</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ddd4ea</se:SvgParameter>
            <se:SvgParameter name="fill-opacity">0.6</se:SvgParameter>
			</se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>A, AP, AR, AO, AH, AM, ATY</se:Name>
          <se:Description>
            <se:Title>A, AP, AR, AO, AH, AM, ATY</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:Or>
              <ogc:Or>
                <ogc:Or>
                  <ogc:Or>
                    <ogc:Or>
                      <ogc:Or>
                        <ogc:PropertyIsEqualTo>
                          <ogc:PropertyName>kt_1</ogc:PropertyName>
                          <ogc:Literal>A</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                        <ogc:PropertyIsEqualTo>
                          <ogc:PropertyName>kt_1</ogc:PropertyName>
                          <ogc:Literal>AP</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                      </ogc:Or>
                      <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>kt_1</ogc:PropertyName>
                        <ogc:Literal>AR</ogc:Literal>
                      </ogc:PropertyIsEqualTo>
                    </ogc:Or>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>kt_1</ogc:PropertyName>
                      <ogc:Literal>AO</ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                  <ogc:PropertyIsEqualTo>
                    <ogc:PropertyName>kt_1</ogc:PropertyName>
                    <ogc:Literal>AH</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
                </ogc:Or>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>kt_1</ogc:PropertyName>
                  <ogc:Literal>AM</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>kt_1</ogc:PropertyName>
                <ogc:Literal>ATY</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#e2c096</se:SvgParameter>
            <se:SvgParameter name="fill-opacity">0.6</se:SvgParameter>
			</se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>P, PL, PV</se:Name>
          <se:Description>
            <se:Title>P, PL, PV</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:Or>
              <ogc:Or>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>kt_1</ogc:PropertyName>
                  <ogc:Literal>P</ogc:Literal>
                </ogc:PropertyIsEqualTo>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>kt_1</ogc:PropertyName>
                  <ogc:Literal>PL</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>kt_1</ogc:PropertyName>
                <ogc:Literal>PV</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#faaa53</se:SvgParameter>
            <se:SvgParameter name="fill-opacity">0.6</se:SvgParameter>
			</se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>C</se:Name>
          <se:Description>
            <se:Title>C</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>kt_1</ogc:PropertyName>
              <ogc:Literal>C</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#e31a1c</se:SvgParameter>
            <se:SvgParameter name="fill-opacity">0.6</se:SvgParameter>
			</se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>T, TT, TY, TYK, TV</se:Name>
          <se:Description>
            <se:Title>T, TT, TY, TYK, TV</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:Or>
              <ogc:Or>
                <ogc:Or>
                  <ogc:Or>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>kt_1</ogc:PropertyName>
                      <ogc:Literal>T</ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>kt_1</ogc:PropertyName>
                      <ogc:Literal>TT</ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                  <ogc:PropertyIsEqualTo>
                    <ogc:PropertyName>kt_1</ogc:PropertyName>
                    <ogc:Literal>TY</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
                </ogc:Or>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>kt_1</ogc:PropertyName>
                  <ogc:Literal>TYK</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>kt_1</ogc:PropertyName>
                <ogc:Literal>TV</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#c1c3c5</se:SvgParameter>
            <se:SvgParameter name="fill-opacity">0.6</se:SvgParameter>
			</se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>V, VP, VL, VK, VU, VR, VV</se:Name>
          <se:Description>
            <se:Title>V, VP, VL, VK, VU, VR, VV</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:Or>
              <ogc:Or>
                <ogc:Or>
                  <ogc:Or>
                    <ogc:Or>
                      <ogc:Or>
                        <ogc:PropertyIsEqualTo>
                          <ogc:PropertyName>kt_1</ogc:PropertyName>
                          <ogc:Literal>V</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                        <ogc:PropertyIsEqualTo>
                          <ogc:PropertyName>kt_1</ogc:PropertyName>
                          <ogc:Literal>VK</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                      </ogc:Or>
                      <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>kt_1</ogc:PropertyName>
                        <ogc:Literal>VP</ogc:Literal>
                      </ogc:PropertyIsEqualTo>
                    </ogc:Or>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>kt_1</ogc:PropertyName>
                      <ogc:Literal>VL</ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                  <ogc:PropertyIsEqualTo>
                    <ogc:PropertyName>kt_1</ogc:PropertyName>
                    <ogc:Literal>VU</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
                </ogc:Or>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>kt_1</ogc:PropertyName>
                  <ogc:Literal>VR</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>kt_1</ogc:PropertyName>
                <ogc:Literal>VV</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#58ad41</se:SvgParameter>
            <se:SvgParameter name="fill-opacity">0.6</se:SvgParameter>
			</se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>R, RA, RM, RL, RV, RP</se:Name>
          <se:Description>
            <se:Title>R, RA, RM, RL, RV, RP</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:Or>
              <ogc:Or>
                <ogc:Or>
                  <ogc:Or>
                    <ogc:Or>
                      <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>kt_1</ogc:PropertyName>
                        <ogc:Literal>R</ogc:Literal>
                      </ogc:PropertyIsEqualTo>
                      <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>kt_1</ogc:PropertyName>
                        <ogc:Literal>RA</ogc:Literal>
                      </ogc:PropertyIsEqualTo>
                    </ogc:Or>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>kt_1</ogc:PropertyName>
                      <ogc:Literal>RM</ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                  <ogc:PropertyIsEqualTo>
                    <ogc:PropertyName>kt_1</ogc:PropertyName>
                    <ogc:Literal>RL</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
                </ogc:Or>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>kt_1</ogc:PropertyName>
                  <ogc:Literal>RV</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>kt_1</ogc:PropertyName>
                <ogc:Literal>RP</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#fdd90a</se:SvgParameter>
            <se:SvgParameter name="fill-opacity">0.6</se:SvgParameter>
			</se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>L, LT, LR, LL, LS, LK, LV, LP, LYS, LYT</se:Name>
          <se:Description>
            <se:Title>L, LT, LR, LL, LS, LK, LV, LP, LYS, LYT</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:Or>
              <ogc:Or>
                <ogc:Or>
                  <ogc:Or>
                    <ogc:Or>
                      <ogc:Or>
                        <ogc:Or>
                          <ogc:Or>
                            <ogc:Or>
                              <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>kt_1</ogc:PropertyName>
                                <ogc:Literal>L</ogc:Literal>
                              </ogc:PropertyIsEqualTo>
                              <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>kt_1</ogc:PropertyName>
                                <ogc:Literal>LT</ogc:Literal>
                              </ogc:PropertyIsEqualTo>
                            </ogc:Or>
                            <ogc:PropertyIsEqualTo>
                              <ogc:PropertyName>kt_1</ogc:PropertyName>
                              <ogc:Literal>LR</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                          </ogc:Or>
                          <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>kt_1</ogc:PropertyName>
                            <ogc:Literal>LL</ogc:Literal>
                          </ogc:PropertyIsEqualTo>
                        </ogc:Or>
                        <ogc:PropertyIsEqualTo>
                          <ogc:PropertyName>kt_1</ogc:PropertyName>
                          <ogc:Literal>LS</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                      </ogc:Or>
                      <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>kt_1</ogc:PropertyName>
                        <ogc:Literal>LK</ogc:Literal>
                      </ogc:PropertyIsEqualTo>
                    </ogc:Or>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>kt_1</ogc:PropertyName>
                      <ogc:Literal>LV</ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                  <ogc:PropertyIsEqualTo>
                    <ogc:PropertyName>kt_1</ogc:PropertyName>
                    <ogc:Literal>LP</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
                </ogc:Or>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>kt_1</ogc:PropertyName>
                  <ogc:Literal>LYS</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>kt_1</ogc:PropertyName>
                <ogc:Literal>LYT</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
            <se:SvgParameter name="fill-opacity">0.6</se:SvgParameter>
			</se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#e31a1c</se:SvgParameter>
              <se:SvgParameter name="stroke-width">4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">mitre</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
            </se:Stroke>
            <se:PerpendicularOffset>-2</se:PerpendicularOffset>
          </se:LineSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>LH, LHK, LHA, LTA, LPA</se:Name>
          <se:Description>
            <se:Title>LH, LHK, LHA, LTA, LPA</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:Or>
              <ogc:Or>
                <ogc:Or>
                  <ogc:Or>
                    <ogc:Or>
                      <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>kt_1</ogc:PropertyName>
                        <ogc:Literal>LH</ogc:Literal>
                      </ogc:PropertyIsEqualTo>
                      <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>kt_1</ogc:PropertyName>
                        <ogc:Literal>LHA</ogc:Literal>
                      </ogc:PropertyIsEqualTo>
                    </ogc:Or>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>kt_1</ogc:PropertyName>
                      <ogc:Literal>LTA</ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                  <ogc:PropertyIsEqualTo>
                    <ogc:PropertyName>kt_1</ogc:PropertyName>
                    <ogc:Literal>LPY</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
                </ogc:Or>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>kt_1</ogc:PropertyName>
                  <ogc:Literal>LPA</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>kt_1</ogc:PropertyName>
                <ogc:Literal>LHK</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#f9c6d1</se:SvgParameter>
            <se:SvgParameter name="fill-opacity">0.6</se:SvgParameter>
			</se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>E, ET, EN, EJ, EO, EK, EMT, EA, EP</se:Name>
          <se:Description>
            <se:Title>E, ET, EN, EJ, EO, EK, EMT, EA, EP</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:Or>
              <ogc:Or>
                <ogc:Or>
                  <ogc:Or>
                    <ogc:Or>
                      <ogc:Or>
                        <ogc:Or>
                          <ogc:Or>
                            <ogc:PropertyIsEqualTo>
                              <ogc:PropertyName>kt_1</ogc:PropertyName>
                              <ogc:Literal>E</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                            <ogc:PropertyIsEqualTo>
                              <ogc:PropertyName>kt_1</ogc:PropertyName>
                              <ogc:Literal>ET</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                          </ogc:Or>
                          <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>kt_1</ogc:PropertyName>
                            <ogc:Literal>EN</ogc:Literal>
                          </ogc:PropertyIsEqualTo>
                        </ogc:Or>
                        <ogc:PropertyIsEqualTo>
                          <ogc:PropertyName>kt_1</ogc:PropertyName>
                          <ogc:Literal>EJ</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                      </ogc:Or>
                      <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>kt_1</ogc:PropertyName>
                        <ogc:Literal>EO</ogc:Literal>
                      </ogc:PropertyIsEqualTo>
                    </ogc:Or>
                    <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>kt_1</ogc:PropertyName>
                      <ogc:Literal>EK</ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                  </ogc:Or>
                  <ogc:PropertyIsEqualTo>
                    <ogc:PropertyName>kt_1</ogc:PropertyName>
                    <ogc:Literal>EMT</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
                </ogc:Or>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>kt_1</ogc:PropertyName>
                  <ogc:Literal>EA</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>kt_1</ogc:PropertyName>
                <ogc:Literal>EP</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#e7adcf</se:SvgParameter>
            <se:SvgParameter name="fill-opacity">0.6</se:SvgParameter>
			</se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>EH, EV</se:Name>
          <se:Description>
            <se:Title>EH, EV</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>kt_1</ogc:PropertyName>
                <ogc:Literal>EH</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>kt_1</ogc:PropertyName>
                <ogc:Literal>EV</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#73ccd3</se:SvgParameter>
            <se:SvgParameter name="fill-opacity">0.6</se:SvgParameter>
			</se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>S, SL, SM, SR</se:Name>
          <se:Description>
            <se:Title>S, SL, SM, SR</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:Or>
              <ogc:Or>
                <ogc:Or>
                  <ogc:PropertyIsEqualTo>
                    <ogc:PropertyName>kt_1</ogc:PropertyName>
                    <ogc:Literal>S</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
                  <ogc:PropertyIsEqualTo>
                    <ogc:PropertyName>kt_1</ogc:PropertyName>
                    <ogc:Literal>SL</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
                </ogc:Or>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>kt_1</ogc:PropertyName>
                  <ogc:Literal>SM</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>kt_1</ogc:PropertyName>
                <ogc:Literal>SR</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#b6e2e3</se:SvgParameter>
            <se:SvgParameter name="fill-opacity">0.6</se:SvgParameter>
			</se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
      </se:FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
