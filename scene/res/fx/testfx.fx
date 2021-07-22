{
	"type": "fx",
	"duration": 3,
	"cullingRadius": 3,
	"children": [
		{
			"type": "polygon",
			"name": "polygon",
			"scaleX": 17.5,
			"scaleY": 17.5,
			"scaleZ": 17.5,
			"kind": 0,
			"args": [
				0
			],
			"children": [
				{
					"type": "material",
					"name": "material",
					"props": {
						"Default": {
							"kind": "Opaque",
							"shadows": true,
							"culling": true,
							"light": true
						},
						"PBR": {
							"mode": "PBR",
							"blend": "None",
							"shadows": true,
							"culling": true,
							"depthTest": "Less",
							"colorMask": 15,
							"enableStencil": false
						}
					},
					"diffuseMap": "textures/dirt01.jpg"
				}
			]
		},
		{
			"type": "emitter",
			"name": "emitter",
			"props": {
				"alignMode": "Screen",
				"instScale": 0.2,
				"emitRate": 20
			},
			"z": 1.12,
			"children": [
				{
					"type": "polygon",
					"name": "polygon",
					"kind": 0,
					"args": [
						0
					],
					"children": [
						{
							"type": "material",
							"name": "material",
							"props": {
								"PBR": {
									"mode": "BeforeTonemapping",
									"blend": "Alpha",
									"shadows": false
								},
								"Default": {
									"kind": "Alpha",
									"shadows": false,
									"culling": false,
									"light": false
								}
							},
							"diffuseMap": "fx/circGrad05.jpg",
							"children": [
								{
									"type": "shader",
									"name": "AlphaMult",
									"source": "h3d.shader.AlphaMult",
									"props": {
										"alpha": 1
									},
									"isInstance": true,
									"children": [
										{
											"type": "curve",
											"name": "alpha",
											"keys": [
												{
													"time": 0,
													"value": 0,
													"mode": 2
												},
												{
													"time": 0.27,
													"value": 1,
													"mode": 2
												},
												{
													"time": 0.735,
													"value": 1,
													"mode": 2
												},
												{
													"time": 0.99,
													"value": 0,
													"mode": 2
												}
											]
										}
									]
								},
								{
									"type": "shader",
									"name": "AlphaMap",
									"source": "h3d.shader.AlphaMap",
									"props": {
										"useSourceUVs": false,
										"texture": "fx/circGrad05.jpg",
										"uvScale": [
											1,
											1
										],
										"uvDelta": [
											0,
											0
										],
										"useAlphaChannel": false
									}
								}
							]
						}
					]
				}
			]
		},
		{
			"type": "model",
			"name": "Model",
			"source": "character/Merchant/Model.FBX",
			"x": -2.74,
			"y": -2.59,
			"rotationZ": 103.4,
			"children": [
				{
					"type": "material",
					"name": "material",
					"props": {
						"Default": {
							"kind": "Opaque",
							"shadows": true,
							"culling": true,
							"light": true
						}
					},
					"children": [
						{
							"type": "shader",
							"name": "ColorMult",
							"source": "h3d.shader.ColorMult",
							"props": {
								"amount": 1,
								"color": [
									1,
									0,
									0,
									0
								]
							},
							"children": [
								{
									"type": "curve",
									"name": "amount",
									"keys": [
										{
											"time": 0.015,
											"value": 0.1,
											"mode": 2
										},
										{
											"time": 0.33,
											"value": 1.6,
											"mode": 2
										},
										{
											"time": 0.505,
											"value": 0.13333333333333333,
											"mode": 2
										},
										{
											"time": 0.7899999999999999,
											"value": 1.3333333333333333,
											"mode": 2
										},
										{
											"time": 0.8999999999999999,
											"value": 0.3333333333333333,
											"mode": 2
										},
										{
											"time": 1.185,
											"value": 2.066666666666667,
											"mode": 2
										},
										{
											"time": 1.355,
											"value": 0.03333333333333333,
											"mode": 2
										},
										{
											"time": 1.56,
											"value": 1.766666666666667,
											"mode": 2
										},
										{
											"time": 1.82,
											"value": 0.16666666666666713,
											"mode": 2
										},
										{
											"time": 1.9599999999999997,
											"value": 2.0333333333333337,
											"mode": 2
										},
										{
											"time": 2.2,
											"value": -0.03333333333333288,
											"mode": 2
										},
										{
											"time": 2.3800000000000003,
											"value": 1.666666666666667,
											"mode": 2
										},
										{
											"time": 2.535,
											"value": 0.10000000000000048,
											"mode": 2
										}
									]
								}
							]
						}
					]
				},
				{
					"type": "curve",
					"name": "position.x",
					"keys": [
						{
							"time": 0.024999999999999994,
							"value": 0,
							"mode": 2
						},
						{
							"time": 2.89,
							"value": 4.666666666666667,
							"mode": 2
						}
					]
				},
				{
					"type": "curve",
					"name": "position.y",
					"keys": [
						{
							"time": 0.024999999999999994,
							"value": 0,
							"mode": 2
						},
						{
							"time": 2.89,
							"value": 0,
							"mode": 2
						}
					]
				},
				{
					"type": "curve",
					"name": "position.z",
					"keys": [
						{
							"time": 0.024999999999999994,
							"value": 0,
							"mode": 2
						},
						{
							"time": 2.89,
							"value": 0,
							"mode": 2
						}
					]
				}
			]
		}
	]
}