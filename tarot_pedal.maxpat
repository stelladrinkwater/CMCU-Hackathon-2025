{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 229.0, 87.0, 268.0, 207.0 ],
		"gridonopen" : 2,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 2,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 150.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 75.0, 15.0, 24.0, 24.0 ],
					"svg" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 15.0, 35.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 30.0, 60.0, 57.0, 22.0 ],
					"text" : "sfplay~ 1"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"id" : "obj-1",
					"inletInfo" : 					{
						"IOInfo" : [ 							{
								"type" : "signal",
								"index" : 1,
								"tag" : "in1",
								"comment" : ""
							}
 ]
					}
,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outletInfo" : 					{
						"IOInfo" : [ 							{
								"type" : "signal",
								"index" : 1,
								"tag" : "out1",
								"comment" : ""
							}
 ]
					}
,
					"outlettype" : [ "signal", "list" ],
					"patching_rect" : [ 30.0, 105.0, 188.0, 22.0 ],
					"rnboattrcache" : 					{

					}
,
					"rnboversion" : "1.3.3",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "rnbo~[1]",
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "rnbo~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"optimization" : "O1",
						"parameter_enable" : 1,
						"uuid" : "ad6d9969-e80e-11ef-9969-023fac905c8e"
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "rnbo~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"__sps" : 							{
								"p_obj-11" : 								{
									"__sps" : 									{
										"object" : 										{

										}

									}

								}
,
								"card4[1]" : 								{

								}
,
								"etc...[1]" : 								{

								}
,
								"card4[2]" : 								{

								}
,
								"card3[1]" : 								{

								}
,
								"card2[1]" : 								{

								}
,
								"card1" : 								{

								}
,
								"card2" : 								{

								}
,
								"card3" : 								{

								}
,
								"p_obj-8" : 								{

								}
,
								"etc..." : 								{

								}
,
								"etc...[2]" : 								{

								}
,
								"p_obj-70" : 								{

								}
,
								"the_fool[1]" : 								{
									"__sps" : 									{
										"p_obj-1" : 										{

										}

									}

								}
,
								"p_obj-3" : 								{

								}
,
								"card4" : 								{

								}
,
								"card1[1]" : 								{

								}
,
								"the_fool" : 								{
									"__sps" : 									{
										"p_obj-1" : 										{

										}

									}

								}

							}
,
							"__presetid" : "tarot_pedal"
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "tarot_pedal",
									"origin" : "tarot_pedal",
									"type" : "rnbo",
									"subtype" : "",
									"embed" : 1,
									"snapshot" : 									{
										"__sps" : 										{
											"p_obj-11" : 											{
												"__sps" : 												{
													"object" : 													{

													}

												}

											}
,
											"card4[1]" : 											{

											}
,
											"etc...[1]" : 											{

											}
,
											"card4[2]" : 											{

											}
,
											"card3[1]" : 											{

											}
,
											"card2[1]" : 											{

											}
,
											"card1" : 											{

											}
,
											"card2" : 											{

											}
,
											"card3" : 											{

											}
,
											"p_obj-8" : 											{

											}
,
											"etc..." : 											{

											}
,
											"etc...[2]" : 											{

											}
,
											"p_obj-70" : 											{

											}
,
											"the_fool[1]" : 											{
												"__sps" : 												{
													"p_obj-1" : 													{

													}

												}

											}
,
											"p_obj-3" : 											{

											}
,
											"card4" : 											{

											}
,
											"card1[1]" : 											{

											}
,
											"the_fool" : 											{
												"__sps" : 												{
													"p_obj-1" : 													{

													}

												}

											}

										}
,
										"__presetid" : "tarot_pedal"
									}
,
									"fileref" : 									{
										"name" : "tarot_pedal",
										"filename" : "tarot_pedal.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "b350c4537650ce0c8b0e88b2c339a7ca"
									}

								}
 ]
						}

					}
,
					"text" : "rnbo~ @patchername tarot_pedal",
					"varname" : "rnbo~[1]"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"originid" : "pat-150",
		"parameters" : 		{
			"obj-1" : [ "rnbo~[1]", "rnbo~", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "tarot_pedal.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../Max 9/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "tarot_pedal.rnbopat",
				"bootpath" : "~/Documents/GitHub/CMCU-Hackathon-2025",
				"patcherrelativepath" : ".",
				"type" : "RBOP",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
