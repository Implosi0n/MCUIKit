
#import "ItemList.h"

NSDictionary *KnownImages() {
	static dispatch_once_t predicate;
	static NSDictionary *KnownImages;
	dispatch_once(&predicate, ^{
		KnownImages = @{
			@"items-opaque.png": @{
				@"height": @256,
				@"width": @256,
				@"item": @{
					@"height": @16,
					@"width": @16
				}
			},
			@"terrain-atlas.tga": @{
				@"height": @256,
				@"width": @512,
				@"item": @{
					@"height": @16,
					@"width": @16
				}
			},
			@"fire_atlas.png": @{
				@"height": @512,
				@"width": @16,
				@"item": @{
					@"height": @16,
					@"width": @16
				}
			}
		};
	});
	return KnownImages;
}

NSDictionary *ItemList() {
	static dispatch_once_t predicate;
	static NSDictionary *ItemList;
	dispatch_once(&predicate, ^{
		ItemList = @{
				@"001 00": @{
				@"renderType": @0,
				@"id": @1,
				@"Name": @"Stone",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @19,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"002 00": @{
				@"renderType": @4,
				@"id": @2,
				@"Name": @"Grass",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @2,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @3,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @3,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"003 00": @{
				@"renderType": @0,
				@"id": @3,
				@"Name": @"Dirt",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @11,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"004 00": @{
				@"renderType": @0,
				@"id": @4,
				@"Name": @"Cobblestone",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @26,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"005 00": @{
				@"renderType": @0,
				@"id": @5,
				@"Name": @"Oak Wooden Plank",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @14,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"005 01": @{
				@"renderType": @0,
				@"id": @5,
				@"Name": @"Spruce Wooden Plank",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @15,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"005 02": @{
				@"renderType": @0,
				@"id": @5,
				@"Name": @"Birch Wooden Plank",
				@"damage": @2,
				@"Images": @[
					@{
						@"x": @16,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"005 03": @{
				@"renderType": @0,
				@"id": @5,
				@"Name": @"Jungle Wooden Plank",
				@"damage": @3,
				@"Images": @[
					@{
						@"x": @17,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"005 04": @{
				@"renderType": @0,
				@"id": @5,
				@"Name": @"Acacia Wooden Plank",
				@"damage": @4,
				@"Images": @[
					@{
						@"x": @18,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"005 05": @{
				@"renderType": @0,
				@"id": @5,
				@"Name": @"Dark Oak Wooden Plank",
				@"damage": @5,
				@"Images": @[
					@{
						@"x": @19,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"006 00": @{
				@"renderType": @1,
				@"id": @6,
				@"Name": @"Oak Sapling",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @22,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"006 01": @{
				@"renderType": @1,
				@"id": @6,
				@"Name": @"Spruce Sapling",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @24,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"006 02": @{
				@"renderType": @1,
				@"id": @6,
				@"Name": @"Birch Sapling",
				@"damage": @2,
				@"Images": @[
					@{
						@"x": @23,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"006 03": @{
				@"renderType": @1,
				@"id": @6,
				@"Name": @"Jungle Sapling",
				@"damage": @3,
				@"Images": @[
					@{
						@"x": @25,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"006 04": @{
				@"renderType": @1,
				@"id": @6,
				@"Name": @"Acacia Sapling",
				@"damage": @4,
				@"Images": @[
					@{
						@"x": @26,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"006 05": @{
				@"renderType": @1,
				@"id": @6,
				@"Name": @"Dark Oak Sapling",
				@"damage": @5,
				@"Images": @[
					@{
						@"x": @27,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"007 00": @{
				@"renderType": @0,
				@"id": @7,
				@"Name": @"Bedrock",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @0,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"008 00": @{
				@"renderType": @0,
				@"id": @8,
				@"Name": @"Stationary Water",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @26,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"009 00": @{
				@"renderType": @0,
				@"id": @9,
				@"Name": @"Flowing Water",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @26,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"010 00": @{
				@"renderType": @0,
				@"id": @10,
				@"Name": @"Stationary Lava",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @27,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"011 00": @{
				@"renderType": @0,
				@"id": @11,
				@"Name": @"Flowing Lava",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @27,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"012 00": @{
				@"renderType": @0,
				@"id": @12,
				@"Name": @"Sand",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @3,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"012 01": @{
				@"renderType": @0,
				@"id": @12,
				@"Name": @"Red Sand",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @4,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"013 00": @{
				@"renderType": @0,
				@"id": @13,
				@"Name": @"Gravel",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @10,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"014 00": @{
				@"renderType": @0,
				@"id": @14,
				@"Name": @"Gold Ore",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @24,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"015 00": @{
				@"renderType": @0,
				@"id": @15,
				@"Name": @"Iron Ore",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @25,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"016 00": @{
				@"renderType": @0,
				@"id": @16,
				@"Name": @"Coal Ore",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @26,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"017 00": @{
				@"renderType": @4,
				@"id": @17,
				@"Name": @"Oak Wood",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @29,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @28,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @28,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"017 01": @{
				@"renderType": @4,
				@"id": @17,
				@"Name": @"Spruce Wood",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @31,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @30,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @30,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"017 02": @{
				@"renderType": @4,
				@"id": @17,
				@"Name": @"Birch Wood",
				@"damage": @2,
				@"Images": @[
					@{
						@"x": @1,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @0,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @0,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"017 03": @{
				@"renderType": @4,
				@"id": @17,
				@"Name": @"Jungle Wood",
				@"damage": @3,
				@"Images": @[
					@{
						@"x": @3,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @2,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @2,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"018 00": @{
				@"renderType": @0,
				@"id": @18,
				@"Name": @"Oak Leaves",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @22,
						@"y": @4,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"018 01": @{
				@"renderType": @0,
				@"id": @18,
				@"Name": @"Spruce Leaves",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @23,
						@"y": @4,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"018 02": @{
				@"renderType": @0,
				@"id": @18,
				@"Name": @"Birch Leaves",
				@"damage": @2,
				@"Images": @[
					@{
						@"x": @24,
						@"y": @4,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"018 03": @{
				@"renderType": @0,
				@"id": @18,
				@"Name": @"Jungle Leaves",
				@"damage": @3,
				@"Images": @[
					@{
						@"x": @25,
						@"y": @4,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"019 00": @{
				@"renderType": @0,
				@"id": @19,
				@"Name": @"Sponge",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @16,
						@"y": @4,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"020 00": @{
				@"renderType": @0,
				@"id": @20,
				@"Name": @"Glass",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @17,
						@"y": @4,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"021 00": @{
				@"renderType": @0,
				@"id": @21,
				@"Name": @"Lapis Lazuli Ore",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @27,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"022 00": @{
				@"renderType": @0,
				@"id": @22,
				@"Name": @"Lapis Lazuli Block",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @12,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"024 00": @{
				@"renderType": @4,
				@"id": @24,
				@"Name": @"Sandstone",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @8,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @5,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @5,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"024 01": @{
				@"renderType": @4,
				@"id": @24,
				@"Name": @"Chiseled Sandstone",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @8,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @6,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @6,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"024 02": @{
				@"renderType": @4,
				@"id": @24,
				@"Name": @"Smooth Sandstone",
				@"damage": @2,
				@"Images": @[
					@{
						@"x": @8,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @7,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @7,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"027 00": @{
				@"renderType": @1,
				@"id": @27,
				@"Name": @"Powered Rail",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @31,
						@"y": @6,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"030 00": @{
				@"renderType": @1,
				@"id": @30,
				@"Name": @"Cobweb",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @27,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"031 00": @{
				@"renderType": @1,
				@"id": @31,
				@"Name": @"Tall Grass (Dead Bush)",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @1,
						@"y": @4,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"031 01": @{
				@"renderType": @1,
				@"id": @31,
				@"Name": @"Tall Grass",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @3,
						@"y": @4,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"031 02": @{
				@"renderType": @1,
				@"id": @31,
				@"Name": @"Fern",
				@"damage": @2,
				@"Images": @[
					@{
						@"x": @4,
						@"y": @4,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"031 03": @{
				@"renderType": @1,
				@"id": @31,
				@"Name": @"Bush",
				@"damage": @3,
				@"Images": @[
					@{
						@"x": @1,
						@"y": @4,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"032 00": @{
				@"renderType": @1,
				@"id": @32,
				@"Name": @"Dead Bush",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @1,
						@"y": @4,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"035 00": @{
				@"renderType": @0,
				@"id": @35,
				@"Name": @"White Wool",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @23,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"035 01": @{
				@"renderType": @0,
				@"id": @35,
				@"Name": @"Orange Wool",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @24,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"035 02": @{
				@"renderType": @0,
				@"id": @35,
				@"Name": @"Magenta Wool",
				@"damage": @2,
				@"Images": @[
					@{
						@"x": @25,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"035 03": @{
				@"renderType": @0,
				@"id": @35,
				@"Name": @"Light Blue Wool",
				@"damage": @3,
				@"Images": @[
					@{
						@"x": @26,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"035 04": @{
				@"renderType": @0,
				@"id": @35,
				@"Name": @"Yellow Wool",
				@"damage": @4,
				@"Images": @[
					@{
						@"x": @27,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"035 05": @{
				@"renderType": @0,
				@"id": @35,
				@"Name": @"Lime Wool",
				@"damage": @5,
				@"Images": @[
					@{
						@"x": @28,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"035 06": @{
				@"renderType": @0,
				@"id": @35,
				@"Name": @"Pink Wool",
				@"damage": @6,
				@"Images": @[
					@{
						@"x": @29,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"035 07": @{
				@"renderType": @0,
				@"id": @35,
				@"Name": @"Gray Wool",
				@"damage": @7,
				@"Images": @[
					@{
						@"x": @30,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"035 08": @{
				@"renderType": @0,
				@"id": @35,
				@"Name": @"Light Gray Wool",
				@"damage": @8,
				@"Images": @[
					@{
						@"x": @31,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"035 09": @{
				@"renderType": @0,
				@"id": @35,
				@"Name": @"Cyan Wool",
				@"damage": @9,
				@"Images": @[
					@{
						@"x": @0,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"035 10": @{
				@"renderType": @0,
				@"id": @35,
				@"Name": @"Purple Wool",
				@"damage": @10,
				@"Images": @[
					@{
						@"x": @1,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"035 11": @{
				@"renderType": @0,
				@"id": @35,
				@"Name": @"Blue Wool",
				@"damage": @11,
				@"Images": @[
					@{
						@"x": @2,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"035 12": @{
				@"renderType": @0,
				@"id": @35,
				@"Name": @"Brown Wool",
				@"damage": @12,
				@"Images": @[
					@{
						@"x": @3,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"035 13": @{
				@"renderType": @0,
				@"id": @35,
				@"Name": @"Green Wool",
				@"damage": @13,
				@"Images": @[
					@{
						@"x": @4,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"035 14": @{
				@"renderType": @0,
				@"id": @35,
				@"Name": @"Red Wool",
				@"damage": @14,
				@"Images": @[
					@{
						@"x": @5,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"035 15": @{
				@"renderType": @0,
				@"id": @35,
				@"Name": @"Black Wool",
				@"damage": @15,
				@"Images": @[
					@{
						@"x": @6,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"037 00": @{
				@"renderType": @1,
				@"id": @37,
				@"Name": @"Dandelion",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @28,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"038 00": @{
				@"renderType": @1,
				@"id": @38,
				@"Name": @"Poppy",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @29,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"038 01": @{
				@"renderType": @1,
				@"id": @38,
				@"Name": @"Blue Orchid",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @30,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"038 02": @{
				@"renderType": @1,
				@"id": @38,
				@"Name": @"Allium",
				@"damage": @2,
				@"Images": @[
					@{
						@"x": @31,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"038 03": @{
				@"renderType": @1,
				@"id": @38,
				@"Name": @"Azure Bluet",
				@"damage": @3,
				@"Images": @[
					@{
						@"x": @0,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"038 04": @{
				@"renderType": @1,
				@"id": @38,
				@"Name": @"Red Tulip",
				@"damage": @4,
				@"Images": @[
					@{
						@"x": @1,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"038 05": @{
				@"renderType": @1,
				@"id": @38,
				@"Name": @"Orange Tulip",
				@"damage": @5,
				@"Images": @[
					@{
						@"x": @2,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"038 06": @{
				@"renderType": @1,
				@"id": @38,
				@"Name": @"White Tulip",
				@"damage": @6,
				@"Images": @[
					@{
						@"x": @3,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"038 07": @{
				@"renderType": @1,
				@"id": @38,
				@"Name": @"Pink Tulip",
				@"damage": @7,
				@"Images": @[
					@{
						@"x": @4,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"038 08": @{
				@"renderType": @1,
				@"id": @38,
				@"Name": @"Oxeye Daisy",
				@"damage": @8,
				@"Images": @[
					@{
						@"x": @5,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"039 00": @{
				@"renderType": @1,
				@"id": @39,
				@"Name": @"Brown Mushroom",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @23,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"040 00": @{
				@"renderType": @1,
				@"id": @40,
				@"Name": @"Red Mushroom",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @22,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"041 00": @{
				@"renderType": @0,
				@"id": @41,
				@"Name": @"Golden Block",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @9,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"042 00": @{
				@"renderType": @0,
				@"id": @42,
				@"Name": @"Iron Block",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @8,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"044 00": @{
				@"renderType": @2,
				@"id": @44,
				@"Name": @"Stone Slab",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @20,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @21,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"044 01": @{
				@"renderType": @2,
				@"id": @44,
				@"Name": @"Sandstone Slab",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @8,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @5,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"044 02": @{
				@"renderType": @2,
				@"id": @44,
				@"Name": @"Wooden Slab",
				@"damage": @2,
				@"Images": @[
					@{
						@"x": @14,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @14,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"044 03": @{
				@"renderType": @2,
				@"id": @44,
				@"Name": @"Cobblestone Slab",
				@"damage": @3,
				@"Images": @[
					@{
						@"x": @26,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @26,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"044 04": @{
				@"renderType": @2,
				@"id": @44,
				@"Name": @"Brick Slab",
				@"damage": @4,
				@"Images": @[
					@{
						@"x": @22,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @22,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"044 05": @{
				@"renderType": @2,
				@"id": @44,
				@"Name": @"Stone Brick Slab",
				@"damage": @5,
				@"Images": @[
					@{
						@"x": @28,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @28,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"044 06": @{
				@"renderType": @2,
				@"id": @44,
				@"Name": @"Nether Brick Slab",
				@"damage": @6,
				@"Images": @[
					@{
						@"x": @12,
						@"y": @6,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @12,
						@"y": @6,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"044 07": @{
				@"renderType": @2,
				@"id": @44,
				@"Name": @"Quartz Slab",
				@"damage": @7,
				@"Images": @[
					@{
						@"x": @15,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @15,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"045 00": @{
				@"renderType": @0,
				@"id": @45,
				@"Name": @"Brick Block",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @22,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"046 00": @{
				@"renderType": @4,
				@"id": @46,
				@"Name": @"TNT",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @24,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @23,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @23,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"047 00": @{
				@"renderType": @0,
				@"id": @47,
				@"Name": @"Bookshelf",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @14,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @26,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @26,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"048 00": @{
				@"renderType": @0,
				@"id": @48,
				@"Name": @"Moss Stone",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @27,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"049 00": @{
				@"renderType": @0,
				@"id": @49,
				@"Name": @"Obsidian",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @1,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"050 00": @{
				@"renderType": @1,
				@"id": @50,
				@"Name": @"Torch",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @18,
						@"y": @5,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"051 00": @{
				@"renderType": @10,
				@"id": @51,
				@"Name": @"Fire",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @0,
						@"y": @0,
						@"count": @32,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"052 00": @{
				@"renderType": @0,
				@"id": @52,
				@"Name": @"Mob Spawner",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @4,
						@"y": @5,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"053 00": @{
				@"renderType": @3,
				@"id": @53,
				@"Name": @"Oak Wooden Stairs",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @14,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @14,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"054 00": @{
				@"renderType": @4,
				@"id": @54,
				@"Name": @"Chest",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @19,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @20,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @21,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"056 00": @{
				@"renderType": @0,
				@"id": @56,
				@"Name": @"Diamond Ore",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @28,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"057 00": @{
				@"renderType": @0,
				@"id": @57,
				@"Name": @"Diamond Block",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @10,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"058 00": @{
				@"renderType": @4,
				@"id": @58,
				@"Name": @"Crafting Table",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @5,
						@"y": @4,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @6,
						@"y": @4,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @7,
						@"y": @4,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"060 00": @{
				@"renderType": @4,
				@"id": @60,
				@"Name": @"Farmland",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @29,
						@"y": @5,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @11,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @11,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"061 00": @{
				@"renderType": @4,
				@"id": @61,
				@"Name": @"Furnace",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @11,
						@"y": @4,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @8,
						@"y": @4,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @10,
						@"y": @4,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"062 00": @{
				@"renderType": @4,
				@"id": @62,
				@"Name": @"Burning Furnace",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @11,
						@"y": @4,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @10,
						@"y": @4,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @9,
						@"y": @4,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"065 00": @{
				@"renderType": @1,
				@"id": @65,
				@"Name": @"Ladder",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @25,
						@"y": @5,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"066 00": @{
				@"renderType": @1,
				@"id": @66,
				@"Name": @"Rail",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @29,
						@"y": @6,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"067 00": @{
				@"renderType": @3,
				@"id": @67,
				@"Name": @"Cobblestone Stairs",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @26,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @26,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"073 00": @{
				@"renderType": @0,
				@"id": @73,
				@"Name": @"Redstone Ore",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @29,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"078 00": @{
				@"renderType": @5,
				@"id": @78,
				@"Name": @"Snow Cover",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @5,
						@"y": @5,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"079 00": @{
				@"renderType": @0,
				@"id": @79,
				@"Name": @"Ice",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @6,
						@"y": @5,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"080 00": @{
				@"renderType": @0,
				@"id": @80,
				@"Name": @"Snow Block",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @5,
						@"y": @5,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"081 00": @{
				@"renderType": @6,
				@"id": @81,
				@"Name": @"Cactus",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @8,
						@"y": @5,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @9,
						@"y": @5,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"082 00": @{
				@"renderType": @0,
				@"id": @82,
				@"Name": @"Clay Block",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @2,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"085 00": @{
				@"renderType": @7,
				@"id": @85,
				@"Name": @"Wooden Fence Post",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @14,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"086 00": @{
				@"renderType": @4,
				@"id": @86,
				@"Name": @"Pumpkin",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @7,
						@"y": @6,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @8,
						@"y": @6,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @9,
						@"y": @6,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"087 00": @{
				@"renderType": @0,
				@"id": @87,
				@"Name": @"Netherrack",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @11,
						@"y": @6,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"089 00": @{
				@"renderType": @0,
				@"id": @89,
				@"Name": @"Glowstone Block",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @17,
						@"y": @6,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"091 00": @{
				@"renderType": @4,
				@"id": @91,
				@"Name": @"Jack o'Lantern",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @7,
						@"y": @6,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @8,
						@"y": @6,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @10,
						@"y": @6,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"095 00": @{
				@"renderType": @1,
				@"id": @95,
				@"Name": @"Invisible Bedrock",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @4,
						@"y": @11,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"096 00": @{
				@"renderType": @5,
				@"id": @96,
				@"Name": @"Trapdoor",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @26,
						@"y": @5,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"097 00": @{
				@"renderType": @0,
				@"id": @97,
				@"Name": @"Stone Monster Egg",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @19,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"097 01": @{
				@"renderType": @0,
				@"id": @97,
				@"Name": @"Cobblestone Monster Egg",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @26,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"097 02": @{
				@"renderType": @0,
				@"id": @97,
				@"Name": @"Stone Brick Monster Egg",
				@"damage": @2,
				@"Images": @[
					@{
						@"x": @28,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"098 00": @{
				@"renderType": @0,
				@"id": @98,
				@"Name": @"Stone Bricks",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @28,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"098 01": @{
				@"renderType": @0,
				@"id": @98,
				@"Name": @"Mossy Stone Bricks",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @29,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"098 02": @{
				@"renderType": @0,
				@"id": @98,
				@"Name": @"Cracked Stone Bricks",
				@"damage": @2,
				@"Images": @[
					@{
						@"x": @30,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"098 03": @{
				@"renderType": @0,
				@"id": @98,
				@"Name": @"Chiseled Stone Bricks",
				@"damage": @3,
				@"Images": @[
					@{
						@"x": @31,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"099 00": @{
				@"renderType": @0,
				@"id": @99,
				@"Name": @"Huge Brown Mushroom",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @21,
						@"y": @7,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"100 00": @{
				@"renderType": @0,
				@"id": @100,
				@"Name": @"Huge Red Mushroom",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @22,
						@"y": @7,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"101 00": @{
				@"renderType": @1,
				@"id": @101,
				@"Name": @"Iron Bars",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @27,
						@"y": @5,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"102 00": @{
				@"renderType": @0,
				@"id": @102,
				@"Name": @"Glass Pane",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @17,
						@"y": @4,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"103 00": @{
				@"renderType": @4,
				@"id": @103,
				@"Name": @"Melon",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @24,
						@"y": @6,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @23,
						@"y": @6,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @23,
						@"y": @6,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"106 00": @{
				@"renderType": @0,
				@"id": @106,
				@"Name": @"Vines",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @26,
						@"y": @7,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"107 00": @{
				@"renderType": @8,
				@"id": @107,
				@"Name": @"Wooden Fence Gate",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @14,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"108 00": @{
				@"renderType": @3,
				@"id": @108,
				@"Name": @"Brick Stairs",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @22,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @22,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"109 00": @{
				@"renderType": @3,
				@"id": @109,
				@"Name": @"Stone Brick Stairs",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @28,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @28,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"110 00": @{
				@"renderType": @0,
				@"id": @110,
				@"Name": @"Mycelium",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @17,
						@"y": @5,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"111 00": @{
				@"renderType": @1,
				@"id": @111,
				@"Name": @"Lily Pad",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @15,
						@"y": @5,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"112 00": @{
				@"renderType": @0,
				@"id": @112,
				@"Name": @"Nether Brick Block",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @12,
						@"y": @6,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"114 00": @{
				@"renderType": @3,
				@"id": @114,
				@"Name": @"Nether Brick Stairs",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @12,
						@"y": @6,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @12,
						@"y": @6,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"120 00": @{
				@"renderType": @0,
				@"id": @120,
				@"Name": @"End Portal",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @1,
						@"y": @8,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"121 00": @{
				@"renderType": @0,
				@"id": @121,
				@"Name": @"End Stone",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @30,
						@"y": @7,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"127 00": @{
				@"renderType": @1,
				@"id": @127,
				@"Name": @"Cocoa",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @16,
						@"y": @8,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"128 00": @{
				@"renderType": @3,
				@"id": @128,
				@"Name": @"Sandstone Stairs",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @8,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @5,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"129 00": @{
				@"renderType": @0,
				@"id": @129,
				@"Name": @"Emerald Ore",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @30,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"133 00": @{
				@"renderType": @0,
				@"id": @133,
				@"Name": @"Emerald Block",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @13,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"134 00": @{
				@"renderType": @0,
				@"id": @134,
				@"Name": @"Spruce Wooden Stairs",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @15,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"135 00": @{
				@"renderType": @0,
				@"id": @135,
				@"Name": @"Birch Wooden Stairs",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @16,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"136 00": @{
				@"renderType": @0,
				@"id": @136,
				@"Name": @"Jungle Wooden Stairs",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @17,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"139 00": @{
				@"renderType": @9,
				@"id": @139,
				@"Name": @"Cobblestone Wall",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @26,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"139 01": @{
				@"renderType": @9,
				@"id": @139,
				@"Name": @"Moss Cobblestone Wall",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @27,
						@"y": @0,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"141 00": @{
				@"renderType": @1,
				@"id": @141,
				@"Name": @"Carrot Block",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @25,
						@"y": @8,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"142 00": @{
				@"renderType": @1,
				@"id": @142,
				@"Name": @"Potato Block",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @29,
						@"y": @8,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"155 00": @{
				@"renderType": @0,
				@"id": @155,
				@"Name": @"Quartz Block",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @15,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"155 01": @{
				@"renderType": @4,
				@"id": @155,
				@"Name": @"Chiseled Quartz Block",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @19,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @20,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @21,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"155 02": @{
				@"renderType": @0,
				@"id": @155,
				@"Name": @"Column Quartz Block",
				@"damage": @2,
				@"Images": @[
					@{
						@"x": @19,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"156 00": @{
				@"renderType": @3,
				@"id": @156,
				@"Name": @"Quartz Stairs",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @18,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @18,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"157 00": @{
				@"renderType": @0,
				@"id": @157,
				@"Name": @"Oak Wooden Double Slab",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @14,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"157 01": @{
				@"renderType": @0,
				@"id": @157,
				@"Name": @"Spruce Wooden Double Slab",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @15,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"157 02": @{
				@"renderType": @0,
				@"id": @157,
				@"Name": @"Birch Wooden Double Slab",
				@"damage": @2,
				@"Images": @[
					@{
						@"x": @16,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"157 03": @{
				@"renderType": @0,
				@"id": @157,
				@"Name": @"Jungle Wooden Double Slab",
				@"damage": @3,
				@"Images": @[
					@{
						@"x": @17,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"158 00": @{
				@"renderType": @2,
				@"id": @158,
				@"Name": @"Oak Wooden Slab",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @14,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @14,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"158 01": @{
				@"renderType": @2,
				@"id": @158,
				@"Name": @"Spruce Wooden Slab",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @15,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @15,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"158 02": @{
				@"renderType": @2,
				@"id": @158,
				@"Name": @"Birch Wooden Slab",
				@"damage": @2,
				@"Images": @[
					@{
						@"x": @16,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @16,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"158 03": @{
				@"renderType": @2,
				@"id": @158,
				@"Name": @"Jungle Wooden Slab",
				@"damage": @3,
				@"Images": @[
					@{
						@"x": @17,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					},
					@{
						@"x": @17,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"159 00": @{
				@"renderType": @0,
				@"id": @159,
				@"Name": @"White Stained Clay",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @8,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"159 01": @{
				@"renderType": @0,
				@"id": @159,
				@"Name": @"Orange Stained Clay",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @9,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"159 02": @{
				@"renderType": @0,
				@"id": @159,
				@"Name": @"Magenta Stained Clay",
				@"damage": @2,
				@"Images": @[
					@{
						@"x": @10,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"159 03": @{
				@"renderType": @0,
				@"id": @159,
				@"Name": @"Light Blue Stained Clay",
				@"damage": @3,
				@"Images": @[
					@{
						@"x": @11,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"159 04": @{
				@"renderType": @0,
				@"id": @159,
				@"Name": @"Yellow Stained Clay",
				@"damage": @4,
				@"Images": @[
					@{
						@"x": @12,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"159 05": @{
				@"renderType": @0,
				@"id": @159,
				@"Name": @"Lime Stained Clay",
				@"damage": @5,
				@"Images": @[
					@{
						@"x": @13,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"159 06": @{
				@"renderType": @0,
				@"id": @159,
				@"Name": @"Pink Stained Clay",
				@"damage": @6,
				@"Images": @[
					@{
						@"x": @14,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"159 07": @{
				@"renderType": @0,
				@"id": @159,
				@"Name": @"Gray Stained Clay",
				@"damage": @7,
				@"Images": @[
					@{
						@"x": @15,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"159 08": @{
				@"renderType": @0,
				@"id": @159,
				@"Name": @"Light Gray Stained Clay",
				@"damage": @8,
				@"Images": @[
					@{
						@"x": @16,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"159 09": @{
				@"renderType": @0,
				@"id": @159,
				@"Name": @"Cyan Stained Clay",
				@"damage": @9,
				@"Images": @[
					@{
						@"x": @17,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"159 10": @{
				@"renderType": @0,
				@"id": @159,
				@"Name": @"Purple Stained Clay",
				@"damage": @10,
				@"Images": @[
					@{
						@"x": @18,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"159 11": @{
				@"renderType": @0,
				@"id": @159,
				@"Name": @"Blue Stained Clay",
				@"damage": @11,
				@"Images": @[
					@{
						@"x": @19,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"159 12": @{
				@"renderType": @0,
				@"id": @159,
				@"Name": @"Brown Stained Clay",
				@"damage": @12,
				@"Images": @[
					@{
						@"x": @20,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"159 13": @{
				@"renderType": @0,
				@"id": @159,
				@"Name": @"Green Stained Clay",
				@"damage": @13,
				@"Images": @[
					@{
						@"x": @21,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"159 14": @{
				@"renderType": @0,
				@"id": @159,
				@"Name": @"Red Stained Clay",
				@"damage": @14,
				@"Images": @[
					@{
						@"x": @22,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"159 15": @{
				@"renderType": @0,
				@"id": @159,
				@"Name": @"Black Stained Clay",
				@"damage": @15,
				@"Images": @[
					@{
						@"x": @23,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"161 00": @{
				@"renderType": @0,
				@"id": @161,
				@"Name": @"Acacia Leaves",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @0,
						@"y": @5,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"161 01": @{
				@"renderType": @0,
				@"id": @161,
				@"Name": @"Dark Oak Leaves",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @1,
						@"y": @5,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"162 00": @{
				@"renderType": @0,
				@"id": @162,
				@"Name": @"Acacia Wood",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @5,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"162 01": @{
				@"renderType": @0,
				@"id": @162,
				@"Name": @"Dark Oak Wood",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @7,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"170 00": @{
				@"renderType": @0,
				@"id": @170,
				@"Name": @"Hay Block",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @12,
						@"y": @8,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"171 00": @{
				@"renderType": @5,
				@"id": @171,
				@"Name": @"White Carpet",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @13,
						@"y": @8,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"171 01": @{
				@"renderType": @5,
				@"id": @171,
				@"Name": @"Orange Carpet",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @24,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"171 02": @{
				@"renderType": @5,
				@"id": @171,
				@"Name": @"Magenta Carpet",
				@"damage": @2,
				@"Images": @[
					@{
						@"x": @25,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"171 03": @{
				@"renderType": @5,
				@"id": @171,
				@"Name": @"Light Blue Carpet",
				@"damage": @3,
				@"Images": @[
					@{
						@"x": @26,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"171 04": @{
				@"renderType": @5,
				@"id": @171,
				@"Name": @"Yellow Carpet",
				@"damage": @4,
				@"Images": @[
					@{
						@"x": @27,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"171 05": @{
				@"renderType": @5,
				@"id": @171,
				@"Name": @"Lime Carpet",
				@"damage": @5,
				@"Images": @[
					@{
						@"x": @28,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"171 06": @{
				@"renderType": @5,
				@"id": @171,
				@"Name": @"Pink Carpet",
				@"damage": @6,
				@"Images": @[
					@{
						@"x": @29,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"171 07": @{
				@"renderType": @5,
				@"id": @171,
				@"Name": @"Gray Carpet",
				@"damage": @7,
				@"Images": @[
					@{
						@"x": @30,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"171 08": @{
				@"renderType": @5,
				@"id": @171,
				@"Name": @"Light Gray Carpet",
				@"damage": @8,
				@"Images": @[
					@{
						@"x": @31,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"171 09": @{
				@"renderType": @5,
				@"id": @171,
				@"Name": @"Cyan Carpet",
				@"damage": @9,
				@"Images": @[
					@{
						@"x": @0,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"171 10": @{
				@"renderType": @5,
				@"id": @171,
				@"Name": @"Purple Carpet",
				@"damage": @10,
				@"Images": @[
					@{
						@"x": @1,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"171 11": @{
				@"renderType": @5,
				@"id": @171,
				@"Name": @"Blue Carpet",
				@"damage": @11,
				@"Images": @[
					@{
						@"x": @2,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"171 12": @{
				@"renderType": @5,
				@"id": @171,
				@"Name": @"Brown Carpet",
				@"damage": @12,
				@"Images": @[
					@{
						@"x": @3,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"171 13": @{
				@"renderType": @5,
				@"id": @171,
				@"Name": @"Green Carpet",
				@"damage": @13,
				@"Images": @[
					@{
						@"x": @4,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"171 14": @{
				@"renderType": @5,
				@"id": @171,
				@"Name": @"Red Carpet",
				@"damage": @14,
				@"Images": @[
					@{
						@"x": @5,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"171 15": @{
				@"renderType": @5,
				@"id": @171,
				@"Name": @"Black Carpet",
				@"damage": @15,
				@"Images": @[
					@{
						@"x": @6,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"172 00": @{
				@"renderType": @0,
				@"id": @172,
				@"Name": @"Hardened Clay",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @7,
						@"y": @10,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"173 00": @{
				@"renderType": @0,
				@"id": @173,
				@"Name": @"Coal Block",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @11,
						@"y": @3,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"174 00": @{
				@"renderType": @0,
				@"id": @174,
				@"Name": @"Packed Ice",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @7,
						@"y": @5,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"175 00": @{
				@"renderType": @1,
				@"id": @175,
				@"Name": @"Sunflower",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @20,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"175 01": @{
				@"renderType": @1,
				@"id": @175,
				@"Name": @"Lilac",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @13,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"175 02": @{
				@"renderType": @1,
				@"id": @175,
				@"Name": @"Flower (Tall Grass)",
				@"damage": @2,
				@"Images": @[
					@{
						@"x": @18,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"175 03": @{
				@"renderType": @1,
				@"id": @175,
				@"Name": @"Flower (Strange Tall Grass)",
				@"damage": @3,
				@"Images": @[
					@{
						@"x": @19,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"175 04": @{
				@"renderType": @1,
				@"id": @175,
				@"Name": @"Rose Bush",
				@"damage": @4,
				@"Images": @[
					@{
						@"x": @16,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"175 05": @{
				@"renderType": @1,
				@"id": @175,
				@"Name": @"Peony",
				@"damage": @5,
				@"Images": @[
					@{
						@"x": @17,
						@"y": @2,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"243 00": @{
				@"renderType": @0,
				@"id": @243,
				@"Name": @"Podzol",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @12,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"244 00": @{
				@"renderType": @1,
				@"id": @244,
				@"Name": @"Beetroot",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @1,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"245 00": @{
				@"renderType": @0,
				@"id": @245,
				@"Name": @"Stone Cutter",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @14,
						@"y": @4,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"246 00": @{
				@"renderType": @0,
				@"id": @246,
				@"Name": @"Glowing Obsidian",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @8,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"247 00": @{
				@"renderType": @0,
				@"id": @247,
				@"Name": @"Nether Reactor Core",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @5,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"247 01": @{
				@"renderType": @0,
				@"id": @247,
				@"Name": @"Activated Nether Reactor Core",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @6,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"247 02": @{
				@"renderType": @0,
				@"id": @247,
				@"Name": @"Used Nether Reactor Core",
				@"damage": @2,
				@"Images": @[
					@{
						@"x": @7,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"248 00": @{
				@"renderType": @0,
				@"id": @248,
				@"Name": @"Update Game Block (update!)",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @22,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"249 00": @{
				@"renderType": @0,
				@"id": @249,
				@"Name": @"Update Game Block (ate!upd)",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @22,
						@"y": @9,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"255 00": @{
				@"renderType": @0,
				@"id": @255,
				@"Name": @".name",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @20,
						@"y": @1,
						@"file": @"terrain-atlas.tga"
					}
				]
			},
			@"256 00": @{
				@"renderType": @1,
				@"id": @256,
				@"Name": @"Iron Shovel",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @6,
						@"y": @11,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"257 00": @{
				@"renderType": @1,
				@"id": @257,
				@"Name": @"Iron Pickaxe",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @14,
						@"y": @8,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"258 00": @{
				@"renderType": @1,
				@"id": @258,
				@"Name": @"Iron Axe",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @5,
						@"y": @0,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"259 00": @{
				@"renderType": @1,
				@"id": @259,
				@"Name": @"Flint and Steel",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @13,
						@"y": @5,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"260 00": @{
				@"renderType": @1,
				@"id": @260,
				@"Name": @"Apple",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @0,
						@"y": @0,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"261 00": @{
				@"renderType": @1,
				@"id": @261,
				@"Name": @"Bow",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @12,
						@"y": @1,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"262 00": @{
				@"renderType": @1,
				@"id": @262,
				@"Name": @"Arrow",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @2,
						@"y": @0,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"263 00": @{
				@"renderType": @1,
				@"id": @263,
				@"Name": @"Coal",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @3,
						@"y": @3,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"263 01": @{
				@"renderType": @1,
				@"id": @263,
				@"Name": @"Charcoal",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @10,
						@"y": @2,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"264 00": @{
				@"renderType": @1,
				@"id": @264,
				@"Name": @"Diamond",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @6,
						@"y": @3,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"265 00": @{
				@"renderType": @1,
				@"id": @265,
				@"Name": @"Iron Ingot",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @1,
						@"y": @7,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"266 00": @{
				@"renderType": @1,
				@"id": @266,
				@"Name": @"Gold Ingot",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @2,
						@"y": @6,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"267 00": @{
				@"renderType": @1,
				@"id": @267,
				@"Name": @"Iron Sword",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @7,
						@"y": @13,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"268 00": @{
				@"renderType": @1,
				@"id": @268,
				@"Name": @"Wooden Sword",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @5,
						@"y": @13,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"269 00": @{
				@"renderType": @1,
				@"id": @269,
				@"Name": @"Wooden Shovel",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @4,
						@"y": @11,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"270 00": @{
				@"renderType": @1,
				@"id": @270,
				@"Name": @"Wooden Pickaxe",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @12,
						@"y": @8,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"271 00": @{
				@"renderType": @1,
				@"id": @271,
				@"Name": @"Wooden Axe",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @3,
						@"y": @0,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"272 00": @{
				@"renderType": @1,
				@"id": @272,
				@"Name": @"Stone Sword",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @6,
						@"y": @13,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"273 00": @{
				@"renderType": @1,
				@"id": @273,
				@"Name": @"Stone Shovel",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @5,
						@"y": @11,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"274 00": @{
				@"renderType": @1,
				@"id": @274,
				@"Name": @"Stone Pickaxe",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @13,
						@"y": @8,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"275 00": @{
				@"renderType": @1,
				@"id": @275,
				@"Name": @"Stone Axe",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @4,
						@"y": @0,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"276 00": @{
				@"renderType": @1,
				@"id": @276,
				@"Name": @"Diamond Sword",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @9,
						@"y": @13,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"277 00": @{
				@"renderType": @1,
				@"id": @277,
				@"Name": @"Diamond Shovel",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @8,
						@"y": @11,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"278 00": @{
				@"renderType": @1,
				@"id": @278,
				@"Name": @"Diamond Pickaxe",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @0,
						@"y": @9,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"279 00": @{
				@"renderType": @1,
				@"id": @279,
				@"Name": @"Diamond Axe",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @7,
						@"y": @0,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"280 00": @{
				@"renderType": @1,
				@"id": @280,
				@"Name": @"Stick",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @2,
						@"y": @13,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"281 00": @{
				@"renderType": @1,
				@"id": @281,
				@"Name": @"Bowl",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @8,
						@"y": @1,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"282 00": @{
				@"renderType": @1,
				@"id": @282,
				@"Name": @"Mushroom Stew",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @4,
						@"y": @8,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"283 00": @{
				@"renderType": @1,
				@"id": @283,
				@"Name": @"Golden Sword",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @8,
						@"y": @13,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"284 00": @{
				@"renderType": @1,
				@"id": @284,
				@"Name": @"Golden Shovel",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @7,
						@"y": @11,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"285 00": @{
				@"renderType": @1,
				@"id": @285,
				@"Name": @"Golden Pickaxe",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @15,
						@"y": @8,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"286 00": @{
				@"renderType": @1,
				@"id": @286,
				@"Name": @"Golden Axe",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @6,
						@"y": @0,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"287 00": @{
				@"renderType": @1,
				@"id": @287,
				@"Name": @"String",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @3,
						@"y": @13,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"288 00": @{
				@"renderType": @1,
				@"id": @288,
				@"Name": @"Feather",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @3,
						@"y": @5,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"289 00": @{
				@"renderType": @1,
				@"id": @289,
				@"Name": @"Gunpowder",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @4,
						@"y": @6,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"290 00": @{
				@"renderType": @1,
				@"id": @290,
				@"Name": @"Wooden Hoe",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @10,
						@"y": @6,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"291 00": @{
				@"renderType": @1,
				@"id": @291,
				@"Name": @"Stone Hoe",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @11,
						@"y": @6,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"292 00": @{
				@"renderType": @1,
				@"id": @292,
				@"Name": @"Iron Hoe",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @12,
						@"y": @6,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"293 00": @{
				@"renderType": @1,
				@"id": @293,
				@"Name": @"Diamond Hoe",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @14,
						@"y": @6,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"294 00": @{
				@"renderType": @1,
				@"id": @294,
				@"Name": @"Golden Hoe",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @13,
						@"y": @6,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"295 00": @{
				@"renderType": @1,
				@"id": @295,
				@"Name": @"Wheat Seeds",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @1,
						@"y": @11,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"296 00": @{
				@"renderType": @1,
				@"id": @296,
				@"Name": @"Wheat",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @10,
						@"y": @13,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"297 00": @{
				@"renderType": @1,
				@"id": @297,
				@"Name": @"Bread",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @13,
						@"y": @1,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"298 00": @{
				@"renderType": @1,
				@"id": @298,
				@"Name": @"Leather Cap",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @5,
						@"y": @6,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"299 00": @{
				@"renderType": @1,
				@"id": @299,
				@"Name": @"Leather Tunic",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @11,
						@"y": @2,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"300 00": @{
				@"renderType": @1,
				@"id": @300,
				@"Name": @"Leather Pants",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @5,
						@"y": @7,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"301 00": @{
				@"renderType": @1,
				@"id": @301,
				@"Name": @"Leather Boots",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @3,
						@"y": @1,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"302 00": @{
				@"renderType": @1,
				@"id": @302,
				@"Name": @"Chain Helmet",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @6,
						@"y": @6,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"303 00": @{
				@"renderType": @1,
				@"id": @303,
				@"Name": @"Chain Chestplate",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @12,
						@"y": @2,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"304 00": @{
				@"renderType": @1,
				@"id": @304,
				@"Name": @"Chain Leggings",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @6,
						@"y": @7,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"305 00": @{
				@"renderType": @1,
				@"id": @305,
				@"Name": @"Chain Boots",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @4,
						@"y": @1,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"306 00": @{
				@"renderType": @1,
				@"id": @306,
				@"Name": @"Iron Helmet",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @7,
						@"y": @6,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"307 00": @{
				@"renderType": @1,
				@"id": @307,
				@"Name": @"Iron Chestplate",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @13,
						@"y": @2,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"308 00": @{
				@"renderType": @1,
				@"id": @308,
				@"Name": @"Iron Leggings",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @7,
						@"y": @7,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"309 00": @{
				@"renderType": @1,
				@"id": @309,
				@"Name": @"Iron Boots",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @5,
						@"y": @1,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"310 00": @{
				@"renderType": @1,
				@"id": @310,
				@"Name": @"Diamond Helmet",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @9,
						@"y": @6,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"311 00": @{
				@"renderType": @1,
				@"id": @311,
				@"Name": @"Diamond Chestplate",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @15,
						@"y": @2,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"312 00": @{
				@"renderType": @1,
				@"id": @312,
				@"Name": @"Diamond Leggings",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @9,
						@"y": @7,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"313 00": @{
				@"renderType": @1,
				@"id": @313,
				@"Name": @"Diamond Boots",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @7,
						@"y": @1,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"314 00": @{
				@"renderType": @1,
				@"id": @314,
				@"Name": @"Golden Helmet",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @8,
						@"y": @6,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"315 00": @{
				@"renderType": @1,
				@"id": @315,
				@"Name": @"Golden Chestplate",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @14,
						@"y": @2,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"316 00": @{
				@"renderType": @1,
				@"id": @316,
				@"Name": @"Golden Leggings",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @8,
						@"y": @7,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"317 00": @{
				@"renderType": @1,
				@"id": @317,
				@"Name": @"Golden Boots",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @6,
						@"y": @1,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"318 00": @{
				@"renderType": @1,
				@"id": @318,
				@"Name": @"Flint",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @12,
						@"y": @5,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"319 00": @{
				@"renderType": @1,
				@"id": @319,
				@"Name": @"Raw Porkchop",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @2,
						@"y": @9,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"320 00": @{
				@"renderType": @1,
				@"id": @320,
				@"Name": @"Cooked Porkchop",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @1,
						@"y": @9,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"321 00": @{
				@"renderType": @1,
				@"id": @321,
				@"Name": @"Painting",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @10,
						@"y": @8,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"323 00": @{
				@"renderType": @1,
				@"id": @323,
				@"Name": @"Sign",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @9,
						@"y": @11,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"324 00": @{
				@"renderType": @1,
				@"id": @324,
				@"Name": @"Wooden Door",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @9,
						@"y": @3,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"325 00": @{
				@"renderType": @1,
				@"id": @325,
				@"Name": @"Bucket",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @0,
						@"y": @2,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"325 01": @{
				@"renderType": @1,
				@"id": @325,
				@"Name": @"Bucket of Milk",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @1,
						@"y": @2,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"325 08": @{
				@"renderType": @1,
				@"id": @325,
				@"Name": @"Bucket of Water",
				@"damage": @8,
				@"Images": @[
					@{
						@"x": @2,
						@"y": @2,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"325 10": @{
				@"renderType": @1,
				@"id": @325,
				@"Name": @"Bucket of Lava",
				@"damage": @10,
				@"Images": @[
					@{
						@"x": @3,
						@"y": @2,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"328 00": @{
				@"renderType": @1,
				@"id": @328,
				@"Name": @"Minecart",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @2,
						@"y": @8,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"329 00": @{
				@"renderType": @1,
				@"id": @329,
				@"Name": @"Saddle",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @14,
						@"y": @10,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"330 00": @{
				@"renderType": @1,
				@"id": @330,
				@"Name": @"Iron Door",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @8,
						@"y": @3,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"331 00": @{
				@"renderType": @1,
				@"id": @331,
				@"Name": @"Redstone Dust",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @9,
						@"y": @10,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"332 00": @{
				@"renderType": @1,
				@"id": @332,
				@"Name": @"Snowball",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @0,
						@"y": @12,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"334 00": @{
				@"renderType": @1,
				@"id": @334,
				@"Name": @"Leather",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @4,
						@"y": @7,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"336 00": @{
				@"renderType": @1,
				@"id": @336,
				@"Name": @"Clay Brick",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @15,
						@"y": @1,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"337 00": @{
				@"renderType": @1,
				@"id": @337,
				@"Name": @"Clay",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @2,
						@"y": @3,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"338 00": @{
				@"renderType": @1,
				@"id": @338,
				@"Name": @"Sugar Cane",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @10,
						@"y": @10,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"339 00": @{
				@"renderType": @1,
				@"id": @339,
				@"Name": @"Paper",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @11,
						@"y": @8,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"340 00": @{
				@"renderType": @1,
				@"id": @340,
				@"Name": @"Book",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @0,
						@"y": @1,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"341 00": @{
				@"renderType": @1,
				@"id": @341,
				@"Name": @"Slimeball",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @15,
						@"y": @11,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"344 00": @{
				@"renderType": @1,
				@"id": @344,
				@"Name": @"Egg",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @10,
						@"y": @4,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"345 00": @{
				@"renderType": @1,
				@"id": @345,
				@"Name": @"Compass",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @12,
						@"y": @13,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"347 00": @{
				@"renderType": @1,
				@"id": @347,
				@"Name": @"Clock",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @11,
						@"y": @13,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"348 00": @{
				@"renderType": @1,
				@"id": @348,
				@"Name": @"Glowstone Dust",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @0,
						@"y": @6,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"351 00": @{
				@"renderType": @1,
				@"id": @351,
				@"Name": @"Dye",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @10,
						@"y": @3,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"351 01": @{
				@"renderType": @1,
				@"id": @351,
				@"Name": @"Rose Red",
				@"damage": @1,
				@"Images": @[
					@{
						@"x": @11,
						@"y": @3,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"351 02": @{
				@"renderType": @1,
				@"id": @351,
				@"Name": @"Cactus Green",
				@"damage": @2,
				@"Images": @[
					@{
						@"x": @12,
						@"y": @3,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"351 03": @{
				@"renderType": @1,
				@"id": @351,
				@"Name": @"Cocoa Beans",
				@"damage": @3,
				@"Images": @[
					@{
						@"x": @13,
						@"y": @3,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"351 04": @{
				@"renderType": @1,
				@"id": @351,
				@"Name": @"Lapis Lazuli",
				@"damage": @4,
				@"Images": @[
					@{
						@"x": @14,
						@"y": @3,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"351 05": @{
				@"renderType": @1,
				@"id": @351,
				@"Name": @"Purple Dye",
				@"damage": @5,
				@"Images": @[
					@{
						@"x": @15,
						@"y": @3,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"351 06": @{
				@"renderType": @1,
				@"id": @351,
				@"Name": @"Cyan Dye",
				@"damage": @6,
				@"Images": @[
					@{
						@"x": @0,
						@"y": @4,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"351 07": @{
				@"renderType": @1,
				@"id": @351,
				@"Name": @"Light Gray Dye",
				@"damage": @7,
				@"Images": @[
					@{
						@"x": @1,
						@"y": @4,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"351 08": @{
				@"renderType": @1,
				@"id": @351,
				@"Name": @"Gray Dye",
				@"damage": @8,
				@"Images": @[
					@{
						@"x": @2,
						@"y": @4,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"351 09": @{
				@"renderType": @1,
				@"id": @351,
				@"Name": @"Pink Dye",
				@"damage": @9,
				@"Images": @[
					@{
						@"x": @3,
						@"y": @4,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"351 10": @{
				@"renderType": @1,
				@"id": @351,
				@"Name": @"Lime Dye",
				@"damage": @10,
				@"Images": @[
					@{
						@"x": @4,
						@"y": @4,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"351 11": @{
				@"renderType": @1,
				@"id": @351,
				@"Name": @"Yellow Dye",
				@"damage": @11,
				@"Images": @[
					@{
						@"x": @5,
						@"y": @4,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"351 12": @{
				@"renderType": @1,
				@"id": @351,
				@"Name": @"Light Blue Dye",
				@"damage": @12,
				@"Images": @[
					@{
						@"x": @6,
						@"y": @4,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"351 13": @{
				@"renderType": @1,
				@"id": @351,
				@"Name": @"Magenta Dye",
				@"damage": @13,
				@"Images": @[
					@{
						@"x": @7,
						@"y": @4,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"351 14": @{
				@"renderType": @1,
				@"id": @351,
				@"Name": @"Orange Dye",
				@"damage": @14,
				@"Images": @[
					@{
						@"x": @8,
						@"y": @4,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"351 15": @{
				@"renderType": @1,
				@"id": @351,
				@"Name": @"Bone Meal",
				@"damage": @15,
				@"Images": @[
					@{
						@"x": @9,
						@"y": @4,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"352 00": @{
				@"renderType": @1,
				@"id": @352,
				@"Name": @"Bone",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @14,
						@"y": @0,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"353 00": @{
				@"renderType": @1,
				@"id": @353,
				@"Name": @"Sugar",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @4,
						@"y": @13,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"354 00": @{
				@"renderType": @1,
				@"id": @354,
				@"Name": @"Cake",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @4,
						@"y": @2,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"355 00": @{
				@"renderType": @1,
				@"id": @355,
				@"Name": @"Bed",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @8,
						@"y": @0,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"357 00": @{
				@"renderType": @1,
				@"id": @357,
				@"Name": @"Cookie",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @5,
						@"y": @3,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"359 00": @{
				@"renderType": @1,
				@"id": @359,
				@"Name": @"Shears",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @3,
						@"y": @11,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"360 00": @{
				@"renderType": @1,
				@"id": @360,
				@"Name": @"Melon Slice",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @13,
						@"y": @7,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"361 00": @{
				@"renderType": @1,
				@"id": @361,
				@"Name": @"Pumpkin Seeds",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @0,
						@"y": @11,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"362 00": @{
				@"renderType": @1,
				@"id": @362,
				@"Name": @"Melon Seeds",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @15,
						@"y": @10,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"363 00": @{
				@"renderType": @1,
				@"id": @363,
				@"Name": @"Raw Beef",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @10,
						@"y": @0,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"364 00": @{
				@"renderType": @1,
				@"id": @364,
				@"Name": @"Steak",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @9,
						@"y": @0,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"365 00": @{
				@"renderType": @1,
				@"id": @365,
				@"Name": @"Raw Chicken",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @1,
						@"y": @3,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"366 00": @{
				@"renderType": @1,
				@"id": @366,
				@"Name": @"Cooked Chicken",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @0,
						@"y": @3,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"367 00": @{
				@"renderType": @1,
				@"id": @367,
				@"Name": @"Rotten Flesh",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @12,
						@"y": @10,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"383 00": @{
				@"renderType": @1,
				@"id": @383,
				@"Name": @"Spawn Egg",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @1,
						@"y": @12,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"383 10": @{
				@"renderType": @1,
				@"id": @383,
				@"Name": @"Chicken Spawn Egg",
				@"damage": @10,
				@"Images": @[
					@{
						@"x": @1,
						@"y": @12,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"383 11": @{
				@"renderType": @1,
				@"id": @383,
				@"Name": @"Cow Spawn Egg",
				@"damage": @11,
				@"Images": @[
					@{
						@"x": @2,
						@"y": @12,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"383 12": @{
				@"renderType": @1,
				@"id": @383,
				@"Name": @"Pig Spawn Egg",
				@"damage": @12,
				@"Images": @[
					@{
						@"x": @3,
						@"y": @12,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"383 13": @{
				@"renderType": @1,
				@"id": @383,
				@"Name": @"Sheep Spawn Egg",
				@"damage": @13,
				@"Images": @[
					@{
						@"x": @4,
						@"y": @12,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"383 14": @{
				@"renderType": @1,
				@"id": @383,
				@"Name": @"Wolf Spawn Egg",
				@"damage": @14,
				@"Images": @[
					@{
						@"x": @5,
						@"y": @12,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"383 15": @{
				@"renderType": @1,
				@"id": @383,
				@"Name": @"Villager Spawn Egg",
				@"damage": @15,
				@"Images": @[
					@{
						@"x": @15,
						@"y": @12,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"383 16": @{
				@"renderType": @1,
				@"id": @383,
				@"Name": @"Mooshroom Spawn Egg",
				@"damage": @16,
				@"Images": @[
					@{
						@"x": @6,
						@"y": @12,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"383 32": @{
				@"renderType": @1,
				@"id": @383,
				@"Name": @"Zombie Spawn Egg",
				@"damage": @32,
				@"Images": @[
					@{
						@"x": @13,
						@"y": @12,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"383 33": @{
				@"renderType": @1,
				@"id": @383,
				@"Name": @"Creeper Spawn Egg",
				@"damage": @33,
				@"Images": @[
					@{
						@"x": @7,
						@"y": @12,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"383 34": @{
				@"renderType": @1,
				@"id": @383,
				@"Name": @"Skeleton Spawn Egg",
				@"damage": @34,
				@"Images": @[
					@{
						@"x": @10,
						@"y": @12,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"383 35": @{
				@"renderType": @1,
				@"id": @383,
				@"Name": @"Spider Spawn Egg",
				@"damage": @35,
				@"Images": @[
					@{
						@"x": @12,
						@"y": @12,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"383 36": @{
				@"renderType": @1,
				@"id": @383,
				@"Name": @"Zombie Pigman Spawn Egg",
				@"damage": @36,
				@"Images": @[
					@{
						@"x": @14,
						@"y": @12,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"383 37": @{
				@"renderType": @1,
				@"id": @383,
				@"Name": @"Slime Spawn Egg",
				@"damage": @37,
				@"Images": @[
					@{
						@"x": @11,
						@"y": @12,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"383 38": @{
				@"renderType": @1,
				@"id": @383,
				@"Name": @"Enderman Spawn Egg",
				@"damage": @38,
				@"Images": @[
					@{
						@"x": @8,
						@"y": @12,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"383 39": @{
				@"renderType": @1,
				@"id": @383,
				@"Name": @"Silverfish Spawn Egg",
				@"damage": @39,
				@"Images": @[
					@{
						@"x": @9,
						@"y": @12,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"388 00": @{
				@"renderType": @1,
				@"id": @388,
				@"Name": @"Emerald",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @11,
						@"y": @4,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"391 00": @{
				@"renderType": @1,
				@"id": @391,
				@"Name": @"Carrot",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @5,
						@"y": @2,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"392 00": @{
				@"renderType": @1,
				@"id": @392,
				@"Name": @"Potato",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @3,
						@"y": @9,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"393 00": @{
				@"renderType": @1,
				@"id": @393,
				@"Name": @"Baked Potato",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @4,
						@"y": @9,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"405 00": @{
				@"renderType": @1,
				@"id": @405,
				@"Name": @"Nether Brick",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @7,
						@"y": @8,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"406 00": @{
				@"renderType": @1,
				@"id": @406,
				@"Name": @"Quartz",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @11,
						@"y": @9,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"457 00": @{
				@"renderType": @1,
				@"id": @457,
				@"Name": @"Beetroot",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @8,
						@"y": @2,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"458 00": @{
				@"renderType": @1,
				@"id": @458,
				@"Name": @"Beetroot Seeds",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @2,
						@"y": @11,
						@"file": @"items-opaque.png"
					}
				]
			},
			@"459 00": @{
				@"renderType": @1,
				@"id": @459,
				@"Name": @"Beetroot Stew",
				@"damage": @0,
				@"Images": @[
					@{
						@"x": @5,
						@"y": @8,
						@"file": @"items-opaque.png"
					}
				]
			}
		};
	});
	return ItemList;
}
