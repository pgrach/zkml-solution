mod xgb_inference;

fn main(input_vector: Span<i32>) -> i32 {
    let tree_0 = xgb_inference::Tree {
    base_weights: array![0, 11052, -939, 6141, 15060, -1996, 9868, 1316, 8051, 13578, 27086, -513, -4788, 13253, 5614, -319, 2567, 9692, 5871, 14428, 9540, 28624, 19221, -3019, 839, -5388, -2301, 12145, 27008, 7894, 2142, 641, -1812, 1788, 3704, 8139, 10757, 4885, 7076, 12951, 16563, 8660, 14868, 25772, 31773, 20264, 15193, -1449, -3918, 1840, -1827, -6034, -4827, -3084, -1302, 10322, 14534, 30418, 24451, 6972, 16377, 1315, 5991, 111, 1118, -2459, -1199, 2648, 1506, 6081, 3250, 7201, 8893, 10291, 11601, 3911, 5209, 6369, 7757, 11504, 13683, 15777, 18224, 9421, 6118, 13516, 5057, 23928, 27535, 34126, 30043, 5479, 6675, 3714, 4900, -3159, -587, -5337, -3506, 469, 3167, -3084, 329, -6478, -5868, -4435, -5233, -2592, -3941, -689, -1940, 12518, 9146, 16278, 13207, 8082, 9381, 6425, 25083, 5934, 8402, 14825, 18969, 2930, 333, 7755, 4430, 635, -220, 1681, 860, -1025, -2223, -939, -1746, 2341, 3090, 1069, 2159, 1725, 1996, 2762, 3852, 8166, 6726, 2975, 8477, 11442, 9799, 3813, 11395, 4421, 2887, 6004, 4927, 6958, 5983, 7513, 2597, 12422, 10484, 14888, 12927, 17109, 14886, 17832, 21070, 8482, 10744, 4948, 7278, 4144, 3419, 7716, 22417, 8915, 7902, 9666, 10624, 8619, 9442, -4118, -2487, 102, -1350, -6084, -4837, -3098, -4833, 1727, -914, 5498, 2336, -4341, -2495, -334, 1626, -6827, -6348, -5506, -6079, -4858, -4027, -5416, -4770, -2970, -2233, -3508, -4469, 976, -848, -1711, -3147, 10956, 13477, 8155, 10317, 15642, 17742, 12508, 16082, 7917, 7048, 6291, 4097, 7665, 9360, 15378, 3131, 5987, 5331, 2544, 3449, -8, 2429, 5669, 9312, 4940, 3454, 167, 806, -580, -12, 1506, 1921, 654, 1107, -2354, -1903, -1106, -381, -628, -1506, 813, 2147, 1030, 865, 1737, 428, 2775, 1870, 3001, 2227, 3656, 1346, 2149, 2532, 5890, 7115, 8155, 8915, 3603, 3329, 9561, 3098, 11079, 3735, 4122, 1639, 1871, 3193, 1566, 1879, 4484, 5324, 2173, 1989, 6175, 1571, 7817, 6961, 11273, 12917, 9195, 10942, 14240, 15508, 12362, 13529, 5348, 16625, 15267, 14242, 18869, 4970, 5939, 6698, 7474, 8931, 3047, 11589, 4068, 5321, 2012, 2480, 4736, 6802, -4689, -3707, -2113, -2923, -432, 584, -1736, -957, -6667, -5830, -4708, -5721, -3610, -2565, -4561, -5433, 2508, 986, -285, -1707, 4328, 9538, 1438, 5179, -4982, -3768, -2873, -2040, -864, 117, 1135, 2221, -2010, -2071, -6139, -6550, -5726, -5295, -6163, -5786, -4667, -5032, -3718, -4275, -5764, -5304, -4303, -5000, -2582, -3195, -1692, -2520, -3779, -3243, -4980, -4311, 115, 1379, -1219, -443, -2084, -1290, -2813, -3512, 10519, 11526, 12722, 13955, 7436, 8555, 10958, 9778, 15028, 16206, 17476, 6968, 13103, 11720, 4474, 5440, 5764, 6786, 3627, 4603, 7836, 1652, 9717, 7613, 4736, 4306, 2707, 916, 3744, 2927, 339, -796, 3167, 1929, 4733, 6544, 2549, 3047, 4516, 1783, 3062, 3810, 435, 50, 330, 668, -732, -404, 107, -208, 509, 406, 650, 511, 876, 461, 1269, 896, -583, -744, -452, -590, -1290, -868, -458, -26, -488, -1176, 570, 691, 1492, 2127, -131, 942, 1346, 2615, 2091, 1541, 2757, 3300, 1850, 740, 1138, 893, 1633, 1865, 6871, 2277, 2543, 2318, 2773, 2549, 2950, 2707, 3402, 3201, 869, 4179, 145, 1990, 870, 1007, 4633, 1138, 5593, 4975, 1749, 1924, 2251, 2431, 2158, 1932, 3089, 3473, 4103, 3754, 2469, 2872, 3363, 3094, 4465, 4129, 4874, 4513, 12766, 3523, 4156, 13145, 4804, 5116, 4447, 4713, 4081, 4440, 5925, 5516, 1943, 2335, 2575, 2776, 3567, 3124, 923, 1276, 1507, 1703, -4424, -4965, -3277, -4059, -2540, -1640, -3494, -2681, 26, -753, 1047, 69, -1480, -2041, -596, -1211, -6377, -2049, -5576, -6114, -5026, -4455, -1643, -1890, -3391, -3984, -2301, -3076, -4891, -4420, -5644, -5185, 1844, 3125, 399, 1558, -802, 363, -1515, -4023, 3588, 5191, 8587, 12424, 3011, 654, 8163, 4698, -5277, -4681, -4050, -3575, -3114, -2653, -1771, -2286, -550, -1256, 330, -244, 1401, 814, 2771, 2021, -1890, -6045, -1947, -2016, -5572, -5846, -5318, -4224, -6042, -6237, -1637, -5839, -4786, -4307, -5352, -4873, -3898, -3346, -4429, -3943, -5624, -1795, -5136, -5548, -4496, -1229, -4852, -5174, -2792, -2387, -3442, -3031, -1387, -1841, -2347, -2719, -3639, -1180, -3113, -3440, -1563, -1421, -1335, -1220, -173, 367, 1027, 1681, -989, -1438, -632, -183, -1974, -2430, -1514, -1067, -2941, -2162, -1126, -941, 3241, 3009, 3501, 3122, 3887, 3567, 4239, 3810, 2408, 7097, 9165, 8210, 3085, 3392, 9208, 10090, 4593, 4302, 4946, 4675, 5108, 5487, 3664, 13624, 10995, 12138, 6275, 5515, 7308, 6413, 1272, 3427, 1514, 4254, 8298, 7460, 9313, 3411, 2006, 2574, 2935, 2459, 212, 319, 3534, 1279, 2551, 3626, 62, 866, -593, -1967, 765, 1033, 1659, 2525, 1078, 1472, 1799, 2127, 4180, 1467, 1010, 2702, 1258, 1056, 45, 163, -35, 60, 162, 229, -179, -270, -68, -169, 0, 72, -100, -25, 303, 220, 167, 85, 350, 414, 212, 301, -342, -427, -190, -304, -168, -81, -86, 48, -358, -95, 471, 318, 678, 551, 43, -218, 186, 377, 721, 850, 561, 680, 411, 539, 911, 769, 1074, 928, 231, 564, 2126, 1902, 1346, 1160, 362, 614, 1320, 1447, 1611, 1762, 1541, 1369, 3698, 3911, 3824, 4084, -1369, -1209, -1567, -1437, -1029, -934, -1135, -1263, -829, -698, -385, -549, -1111, -993, -719, -836, -84, 70, -288, -160, 232, 452, -24, 117, -513, -393, -690, -559, -223, -46, -403, -298, -2005, -1857, -1724, -1616, -1781, -1900, -1572, -1458, -1284, -1415, -1106, -961, -1270, -1137, -770, -586, -982, -823, -1382, -1525, -1217, -1367, -1666, -1757, -1505, -1624, 377, 632, 854, 1079, 227, 24, 386, 637, -341, -129, 52, 296, -590, -303, -993, -1347, 1206, 829, 1458, 1827, 2864, 2207, 3551, 4337, 615, 1663, -38, 689, 2089, 2720, 1144, 1643, -1617, -1542, -1445, -1351, -1160, -1270, -1023, -1130, -880, -1008, -744, -880, -598, -417, -747, -601, -242, -107, -442, -300, 32, 189, -167, 10, 364, 518, 183, 328, 724, 915, 517, 684, -1788, -1856, -1702, -1645, -1783, -1726, -1630, -1558, -1121, -1354, -1846, -1781, -1903, -1843, -1782, -1717, -1481, -1398, -1238, -1329, -1715, -1576, -1494, -1422, -1067, -1188, -860, -1034, -1364, -1292, -1217, -1097, -1737, -1657, -1577, -1488, -1707, -1637, -1323, -1391, -1491, -1394, -1592, -1499, -817, -917, -680, -761, -984, -1071, -872, -963, -591, -336, -620, -500, -743, -649, -864, -779, -1133, -1053, -977, -891, -1059, -965, -79, 9, 78, 175, 259, 344, 448, 524, -365, -237, -503, -372, -135, -252, 21, -101, -642, -550, -752, -648, -427, -555, -248, -384, -835, -952, -534, -724, 2192, 2033, 2654, 2890, 2529, 2347, 2846, 2608, 3087, 2862, 3993, 4213, 3373, 3073, 3761, 3511, 1781, 1943, 1583, 1739, 2089, 2271, 1986, 1814, 1074, 957, 1184, 1352, 2408, 2588, 2303, 2167, 2888, 2615, 805, 940, 667, 794, 1112, 1003, 911, 564, 1013, 1225, 88, -58, 204, 358, -238, 11, -612, -278, 542, 310, 827, 686, 844, 1275, 191, 817].span(),
    left_children: array![1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51, 53, 55, 57, 59, 61, 63, 65, 67, 69, 71, 73, 75, 77, 79, 81, 83, 85, 87, 89, 91, 93, 95, 97, 99, 101, 103, 105, 107, 109, 111, 113, 115, 117, 119, 121, 123, 125, 127, 129, 131, 133, 135, 137, 139, 141, 143, 145, 147, 149, 151, 153, 155, 157, 159, 161, 163, 165, 167, 169, 171, 0, 173, 175, 177, 179, 0, 0, 0, 0, 181, 183, 185, 187, 189, 191, 193, 195, 197, 199, 201, 203, 205, 207, 209, 211, 213, 215, 217, 219, 0, 0, 0, 221, 223, 225, 227, 229, 231, 233, 235, 237, 239, 241, 243, 245, 0, 247, 249, 251, 253, 255, 257, 259, 0, 0, 261, 263, 265, 267, 0, 269, 271, 273, 0, 275, 277, 279, 281, 283, 285, 287, 289, 0, 291, 293, 295, 297, 299, 301, 303, 305, 307, 309, 311, 313, 0, 0, 0, 315, 0, 0, 0, 0, 0, 0, 317, 319, 321, 323, 325, 327, 329, 331, 333, 335, 337, 339, 341, 343, 345, 347, 349, 351, 353, 355, 357, 359, 361, 363, 365, 367, 369, 371, 373, 375, 377, 379, 381, 383, 385, 387, 389, 391, 393, 395, 0, 0, 397, 399, 401, 403, 405, 0, 0, 0, 407, 409, 411, 413, 415, 417, 419, 421, 423, 425, 427, 429, 431, 433, 435, 437, 439, 441, 443, 445, 0, 447, 0, 449, 0, 0, 451, 453, 455, 457, 459, 461, 463, 0, 0, 0, 465, 467, 469, 471, 0, 0, 473, 0, 475, 0, 477, 0, 479, 481, 0, 0, 483, 485, 0, 0, 487, 0, 489, 491, 493, 495, 497, 499, 501, 503, 505, 507, 0, 509, 511, 513, 515, 0, 0, 0, 517, 519, 0, 521, 523, 525, 0, 0, 0, 0, 527, 529, 531, 533, 535, 537, 539, 541, 543, 545, 547, 549, 551, 553, 555, 557, 559, 561, 563, 565, 567, 569, 571, 573, 575, 577, 579, 581, 583, 585, 587, 589, 0, 0, 591, 593, 595, 597, 599, 601, 603, 605, 607, 609, 611, 613, 615, 617, 619, 621, 623, 625, 627, 629, 631, 633, 635, 637, 639, 641, 643, 645, 647, 649, 651, 653, 655, 657, 659, 661, 663, 665, 667, 669, 671, 0, 673, 675, 0, 0, 677, 679, 681, 683, 685, 0, 687, 689, 0, 0, 691, 693, 695, 697, 699, 701, 703, 705, 707, 709, 0, 0, 711, 0, 713, 715, 717, 719, 0, 721, 723, 725, 727, 729, 0, 0, 0, 0, 731, 733, 735, 737, 0, 0, 0, 0, 739, 741, 743, 745, 0, 747, 0, 0, 749, 751, 753, 755, 0, 757, 759, 761, 763, 765, 767, 0, 0, 0, 0, 0, 769, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 771, 0, 773, 0, 0, 775, 0, 777, 779, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 781, 0, 0, 783, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 785, 787, 789, 791, 793, 795, 797, 799, 801, 803, 805, 807, 809, 811, 813, 815, 817, 0, 819, 821, 823, 825, 0, 0, 827, 829, 831, 833, 835, 837, 839, 841, 843, 845, 847, 849, 851, 853, 855, 857, 859, 861, 863, 865, 867, 869, 871, 873, 875, 877, 879, 881, 883, 885, 887, 889, 891, 893, 895, 897, 899, 901, 903, 905, 0, 907, 0, 0, 909, 911, 913, 915, 917, 919, 0, 921, 923, 925, 927, 929, 931, 933, 935, 937, 939, 0, 941, 943, 945, 0, 947, 949, 951, 953, 955, 957, 959, 961, 963, 965, 967, 0, 969, 971, 0, 0, 0, 0, 973, 975, 977, 979, 981, 983, 985, 987, 989, 991, 993, 995, 997, 999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1001, 1003, 1005, 0, 0, 1007, 1009, 0, 0, 0, 0, 0, 0, 0, 1011, 1013, 1015, 1017, 1019, 1021, 1023, 0, 1025, 0, 1027, 1029, 1031, 1033, 0, 0, 0, 1035, 1037, 0, 0, 1039, 0, 1041, 1043, 1045, 1047, 1049, 1051, 0, 0, 1053, 1055, 0, 0, 0, 0, 1057, 0, 0, 1059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62, 64, 66, 68, 70, 72, 74, 76, 78, 80, 82, 84, 86, 88, 90, 92, 94, 96, 98, 100, 102, 104, 106, 108, 110, 112, 114, 116, 118, 120, 122, 124, 126, 128, 130, 132, 134, 136, 138, 140, 142, 144, 146, 148, 150, 152, 154, 156, 158, 160, 162, 164, 166, 168, 170, 172, 0, 174, 176, 178, 180, 0, 0, 0, 0, 182, 184, 186, 188, 190, 192, 194, 196, 198, 200, 202, 204, 206, 208, 210, 212, 214, 216, 218, 220, 0, 0, 0, 222, 224, 226, 228, 230, 232, 234, 236, 238, 240, 242, 244, 246, 0, 248, 250, 252, 254, 256, 258, 260, 0, 0, 262, 264, 266, 268, 0, 270, 272, 274, 0, 276, 278, 280, 282, 284, 286, 288, 290, 0, 292, 294, 296, 298, 300, 302, 304, 306, 308, 310, 312, 314, 0, 0, 0, 316, 0, 0, 0, 0, 0, 0, 318, 320, 322, 324, 326, 328, 330, 332, 334, 336, 338, 340, 342, 344, 346, 348, 350, 352, 354, 356, 358, 360, 362, 364, 366, 368, 370, 372, 374, 376, 378, 380, 382, 384, 386, 388, 390, 392, 394, 396, 0, 0, 398, 400, 402, 404, 406, 0, 0, 0, 408, 410, 412, 414, 416, 418, 420, 422, 424, 426, 428, 430, 432, 434, 436, 438, 440, 442, 444, 446, 0, 448, 0, 450, 0, 0, 452, 454, 456, 458, 460, 462, 464, 0, 0, 0, 466, 468, 470, 472, 0, 0, 474, 0, 476, 0, 478, 0, 480, 482, 0, 0, 484, 486, 0, 0, 488, 0, 490, 492, 494, 496, 498, 500, 502, 504, 506, 508, 0, 510, 512, 514, 516, 0, 0, 0, 518, 520, 0, 522, 524, 526, 0, 0, 0, 0, 528, 530, 532, 534, 536, 538, 540, 542, 544, 546, 548, 550, 552, 554, 556, 558, 560, 562, 564, 566, 568, 570, 572, 574, 576, 578, 580, 582, 584, 586, 588, 590, 0, 0, 592, 594, 596, 598, 600, 602, 604, 606, 608, 610, 612, 614, 616, 618, 620, 622, 624, 626, 628, 630, 632, 634, 636, 638, 640, 642, 644, 646, 648, 650, 652, 654, 656, 658, 660, 662, 664, 666, 668, 670, 672, 0, 674, 676, 0, 0, 678, 680, 682, 684, 686, 0, 688, 690, 0, 0, 692, 694, 696, 698, 700, 702, 704, 706, 708, 710, 0, 0, 712, 0, 714, 716, 718, 720, 0, 722, 724, 726, 728, 730, 0, 0, 0, 0, 732, 734, 736, 738, 0, 0, 0, 0, 740, 742, 744, 746, 0, 748, 0, 0, 750, 752, 754, 756, 0, 758, 760, 762, 764, 766, 768, 0, 0, 0, 0, 0, 770, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 772, 0, 774, 0, 0, 776, 0, 778, 780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 782, 0, 0, 784, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 786, 788, 790, 792, 794, 796, 798, 800, 802, 804, 806, 808, 810, 812, 814, 816, 818, 0, 820, 822, 824, 826, 0, 0, 828, 830, 832, 834, 836, 838, 840, 842, 844, 846, 848, 850, 852, 854, 856, 858, 860, 862, 864, 866, 868, 870, 872, 874, 876, 878, 880, 882, 884, 886, 888, 890, 892, 894, 896, 898, 900, 902, 904, 906, 0, 908, 0, 0, 910, 912, 914, 916, 918, 920, 0, 922, 924, 926, 928, 930, 932, 934, 936, 938, 940, 0, 942, 944, 946, 0, 948, 950, 952, 954, 956, 958, 960, 962, 964, 966, 968, 0, 970, 972, 0, 0, 0, 0, 974, 976, 978, 980, 982, 984, 986, 988, 990, 992, 994, 996, 998, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1002, 1004, 1006, 0, 0, 1008, 1010, 0, 0, 0, 0, 0, 0, 0, 1012, 1014, 1016, 1018, 1020, 1022, 1024, 0, 1026, 0, 1028, 1030, 1032, 1034, 0, 0, 0, 1036, 1038, 0, 0, 1040, 0, 1042, 1044, 1046, 1048, 1050, 1052, 0, 0, 1054, 1056, 0, 0, 0, 0, 1058, 0, 0, 1060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0].span(),
    split_indices: array![1, 6, 9, 6, 6, 1, 1, 8, 1, 1, 1, 10, 10, 8, 1, 1, 8, 8, 8, 8, 8, 8, 1, 1, 1, 6, 9, 9, 1, 9, 10, 9, 8, 1, 1, 8, 8, 9, 9, 9, 8, 1, 9, 9, 1, 7, 9, 9, 10, 8, 9, 9, 1, 1, 1, 1, 1, 10, 10, 9, 9, 1, 1, 1, 1, 8, 1, 8, 9, 7, 9, 1, 1, 1, 1, 1, 1, 1, 9, 1, 1, 1, 8, 7, 9, 1, 0, 1, 1, 9, 9, 0, 0, 0, 0, 9, 1, 10, 1, 1, 1, 9, 9, 10, 1, 9, 9, 10, 1, 1, 1, 9, 9, 9, 9, 0, 0, 0, 1, 1, 9, 1, 1, 9, 9, 7, 1, 9, 9, 8, 9, 0, 9, 7, 9, 1, 1, 1, 1, 0, 0, 1, 9, 9, 9, 0, 9, 1, 9, 0, 8, 7, 9, 8, 9, 1, 1, 1, 0, 9, 9, 9, 9, 1, 1, 1, 8, 7, 7, 9, 9, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 9, 1, 9, 9, 10, 1, 10, 1, 1, 1, 9, 9, 9, 9, 9, 9, 1, 1, 9, 8, 1, 1, 10, 1, 1, 1, 9, 8, 9, 9, 9, 1, 9, 9, 9, 1, 9, 9, 1, 10, 0, 0, 9, 9, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 9, 7, 10, 6, 1, 1, 9, 1, 1, 1, 1, 1, 1, 1, 9, 7, 0, 9, 0, 9, 0, 0, 9, 9, 1, 1, 9, 9, 1, 0, 0, 0, 9, 9, 1, 1, 0, 0, 1, 0, 1, 0, 8, 0, 7, 9, 0, 0, 1, 1, 0, 0, 9, 0, 8, 1, 9, 1, 9, 1, 1, 1, 1, 1, 0, 9, 9, 9, 1, 0, 0, 0, 9, 7, 0, 1, 9, 9, 0, 0, 0, 0, 1, 1, 9, 9, 1, 1, 1, 1, 3, 1, 10, 1, 1, 1, 10, 7, 9, 9, 9, 1, 8, 8, 1, 1, 9, 9, 9, 1, 1, 1, 1, 1, 0, 0, 9, 1, 1, 10, 1, 1, 9, 9, 10, 9, 1, 1, 9, 1, 10, 9, 1, 1, 1, 1, 9, 8, 9, 9, 1, 10, 1, 9, 9, 7, 1, 1, 1, 1, 1, 1, 9, 9, 1, 1, 9, 0, 9, 9, 0, 0, 1, 1, 1, 1, 1, 0, 9, 9, 0, 0, 1, 9, 9, 10, 10, 1, 10, 9, 9, 9, 0, 0, 9, 0, 1, 1, 9, 9, 0, 9, 1, 1, 9, 9, 0, 0, 0, 0, 1, 1, 9, 9, 0, 0, 0, 0, 1, 1, 0, 9, 0, 6, 0, 0, 1, 1, 1, 9, 0, 9, 9, 9, 1, 1, 9, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 0, 0, 9, 0, 9, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 1, 9, 1, 9, 1, 9, 9, 9, 9, 9, 9, 9, 9, 0, 0, 9, 1, 9, 1, 0, 0, 10, 10, 9, 10, 1, 1, 1, 1, 9, 9, 1, 9, 9, 9, 9, 1, 1, 8, 1, 8, 9, 9, 9, 9, 9, 9, 1, 1, 1, 1, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, 1, 0, 0, 9, 8, 9, 1, 9, 9, 0, 10, 10, 1, 9, 9, 1, 1, 9, 9, 9, 0, 9, 8, 1, 0, 10, 7, 2, 1, 1, 1, 9, 9, 9, 9, 9, 0, 9, 9, 0, 0, 0, 0, 9, 9, 9, 9, 9, 9, 1, 1, 9, 9, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 9, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 9, 1, 1, 9, 9, 9, 1, 0, 1, 0, 9, 9, 1, 1, 0, 0, 0, 9, 9, 0, 0, 1, 0, 1, 10, 1, 10, 9, 8, 0, 0, 1, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0].span(),
    split_conditions: array![582950150, 27874457, 293415900, 20040857, 44344797, 2147483647, 2147483647, 27712810, 427884670, 427884670, 427884670, 69355080, 188039420, 459832760, 2147483647, 427884670, 40220676, 51752045, 54775020, 68002980, 77771330, 111203270, 557236230, 904394000, 2147483647, 37640660, 222921600, 370780440, 1793489600, 476272750, 492668460, 30478616, 23044624, 375399490, 427884670, 47691580, 56118353, 61262980, 75579310, 74298830, 74175885, 557236230, 119385200, 125361300, 367892460, 79908320, 124465670, 43384787, 42656270, 58264310, 171079430, 56034870, 2147483647, 2147483647, 2147483647, 1854740000, 1793489600, 680424100, 680424100, 343105800, 573738400, 2147483647, 2147483647, 375399490, 367892460, 19086874, 532455200, 29522876, 46964066, 30929877, 56431177, 367892460, 367892460, 367892460, 367892460, 532455200, 506710840, 524735250, 82741960, 375399490, 367892460, 367892460, 81018870, 49885860, 76913947, 557236230, 5057, 375399490, 367892460, 146409830, 146409830, 5479, 6675, 3714, 4900, 29311835, 751467200, 27539490, 1354652200, 833835000, 802726800, 113215200, 230095310, 39949580, 2147483647, 118321180, 132893520, 221886900, 2147483647, 2147483647, 2147483647, 329616770, 336122600, 407610250, 422509400, 8082, 9381, 6425, 1990957400, 2147483647, 370780440, 2147483647, 2147483647, 317783280, 378760800, 268488870, 2147483647, 28376110, 28376110, 26317126, 32755930, -1025, 28376110, 19529276, 31591820, 348794530, 348794530, 427884670, 506710840, 1725, 1996, 532455200, 62275635, 54326276, 54648676, 2975, 63623040, 348794530, 69168646, 3813, 59850380, 36515450, 55331640, 50180914, 66009735, 506710840, 557236230, 532455200, 2597, 69488885, 68849915, 78870690, 79828973, 348794530, 394340940, 375399490, 88099520, 45440190, 54197797, 68849915, 85224950, 4144, 3419, 7716, 84458966, 8915, 7902, 9666, 10624, 8619, 9442, 24614055, 758734000, 51174400, 50779022, 19370245, 1529090200, 55234360, 2147483647, 709618460, 1008562800, 101043585, 222921600, 88522530, 138975320, 196805540, 260986910, 2147483647, 2147483647, 69168646, 71705250, 2147483647, 2147483647, 110532100, 2147483647, 2147483647, 2147483647, 193675650, 140184520, 256373220, 256373220, 251494850, 2147483647, 312512160, 350350150, 307619380, 1990957400, 388514720, 476272750, 1990957400, 567912060, 7917, 7048, 317783280, 312512160, 2147483647, 2147483647, 2147483647, 3131, 5987, 5331, 2147483647, 2147483647, 2147483647, 2147483647, 388514720, 296163700, 567912060, 210478170, 348794530, 348794530, 27364014, 398508080, 348794530, 348794530, 390522730, 398508080, 506710840, 506710840, 32755930, 21470770, -628, 32755930, 813, 34743356, 1030, 865, 36518080, 40566977, 427884670, 532455200, 54326276, 53353740, 557236230, 1346, 2149, 2532, 52664514, 58003090, 394340940, 398508080, 3603, 3329, 398508080, 3098, 398508080, 3735, 42459998, 1639, 29810513, 58781330, 1566, 1879, 557236230, 532455200, 2173, 1989, 72772986, 1571, 59850380, 557236230, 64545680, 348794530, 63940820, 398508080, 348794530, 348794530, 394340940, 394340940, 5348, 86560016, 87300543, 87300543, 348794530, 4970, 5939, 6698, 66305360, 47740265, 3047, 506710840, 63623040, 72430334, 2012, 2480, 4736, 6802, 778044000, 716570000, 37200897, 36518080, 675312000, 681147000, 841899000, 820593900, 5000000, 1089509000, 35878160, 2147483647, 1089509000, 1039966900, 52553150, 34685434, 64545680, 64837000, 66009735, 1413370700, 63970416, 100562260, 1024234800, 1854740000, 68185266, 101043585, 126318070, 2147483647, 2147483647, 2147483647, 2147483647, 2147483647, -2010, -2071, 47786655, 2147483647, 2147483647, 130423830, 2147483647, 2147483647, 103306040, 95810596, 164998460, 138975320, 2147483647, 2147483647, 150238590, 2147483647, 204790220, 180890390, 2147483647, 2147483647, 2147483647, 2147483647, 164830430, 165413870, 238098490, 274827950, 2147483647, 308496830, 2147483647, 270030710, 270030710, 182891590, 1697482600, 1744629300, 1716856600, 1744629300, 2010402300, 1990957400, 350350150, 350350150, 1697482600, 1697482600, 422509400, 6968, 388514720, 388514720, 4474, 5440, 2147483647, 2147483647, 2147483647, 2147483647, 2147483647, 1652, 407610250, 422509400, 4736, 4306, 2147483647, 302815650, 336122600, 413242500, 354763230, 2147483647, 452505860, 422509400, 343105800, 422509400, 2549, 3047, 476272750, 1783, 2147483647, 2147483647, 26143417, 27364014, 330, 29311835, 398508080, 398508080, 29311835, 29311835, 509, 406, 650, 511, 384352000, 403084800, 33799207, 33799207, -583, -744, -452, -590, 506710840, 506710840, 272856, 31591820, -488, 12538989, 570, 691, 403084800, 398508080, 524735250, 43384787, 1346, 50383554, 49616780, 49985294, 506710840, 506710840, 48149590, 740, 1138, 893, 1633, 1865, 398508080, 2277, 2543, 2318, 2773, 2549, 2950, 2707, 3402, 3201, 869, 506710840, 145, 32697230, 870, 1007, 63940820, 1138, 68185266, 557236230, 1749, 1924, 2251, 2431, 2158, 1932, 3089, 3473, 4103, 3754, 2469, 2872, 3363, 3094, 4465, 4129, 4874, 4513, 76913947, 3523, 4156, 83386960, 4804, 5116, 4447, 4713, 4081, 4440, 5925, 5516, 1943, 2335, 2575, 2776, 3567, 3124, 923, 1276, 1507, 1703, 22522790, 20760870, 27364014, 778044000, 32755930, 681147000, 32755930, 820593900, 48149590, 48149590, 55656256, 54977510, 47786655, 46964066, 55331640, 53997020, 76904, -2049, 18436357, 1529090200, 24614055, 1089509000, -1643, -1890, 49059323, 49059323, 50383554, 61729240, 1644498200, 1588078000, 2147483647, 2147483647, 59529950, 69488885, 765398000, 70777423, 61262980, 73469860, 65133930, 1854740000, 709618460, 71705250, 709618460, 112253710, 101043585, 159002040, 260986910, 260986910, 61614230, 78333510, 2147483647, 2147483647, 2147483647, 2147483647, 154435310, 154435310, 184194140, 184194140, 212755250, 212755250, 246432520, 246432520, 274827950, 274827950, -1890, 2147483647, -1947, -2016, 62619403, 51502420, 78333510, 2147483647, 68849915, 71103076, -1637, 132954460, 103146810, 2147483647, 80996620, 108885050, 2147483647, 2147483647, 128343950, 152320130, 84601886, -1795, 115350100, 95949790, 2147483647, -1229, 169851840, 106015760, 512343, 2147483647, 2147483647, 2147483647, 184194140, 209385380, 212755250, 209385380, 180890390, -1180, 206268650, 209385380, -1563, -1421, -1335, -1220, 230095310, 246432520, 265686900, 284891970, 238098490, 238098490, 2147483647, 2147483647, 234216240, 238098490, 2147483647, 2147483647, 2147483647, 2147483647, -1126, -941, 3241, 3009, 3501, 3122, 3887, 3567, 4239, 3810, 2408, 2068878100, 323399880, 2068878100, 3085, 3392, 2068878100, 2108679300, 4593, 4302, 4946, 4675, 5108, 5487, 3664, 407610250, 2108679300, 2048527300, 302815650, 307619380, 329616770, 2147483647, 1272, 2147483647, 1514, 323399880, 357577470, 2147483647, 2147483647, 3411, 2006, 2574, 302815650, 302815650, 212, 319, 2147483647, 1279, 2147483647, 452505860, 2147483647, 379045800, 336122600, 306474460, 765, 1033, 2147483647, 2147483647, 1078, 1472, 1799, 2127, 199628800, 1467, 1010, 1171264, 1258, 1056, 45, 163, -35, 60, 162, 229, -179, -270, -68, -169, 0, 72, -100, -25, 303, 220, 167, 85, 350, 414, 212, 301, -342, -427, -190, -304, -168, -81, -86, 48, -358, -95, 471, 318, 678, 551, 43, -218, 186, 377, 721, 850, 561, 680, 411, 539, 911, 769, 1074, 928, 231, 564, 2126, 1902, 1346, 1160, 362, 614, 1320, 1447, 1611, 1762, 1541, 1369, 3698, 3911, 3824, 4084, -1369, -1209, -1567, -1437, -1029, -934, -1135, -1263, -829, -698, -385, -549, -1111, -993, -719, -836, -84, 70, -288, -160, 232, 452, -24, 117, -513, -393, -690, -559, -223, -46, -403, -298, -2005, -1857, -1724, -1616, -1781, -1900, -1572, -1458, -1284, -1415, -1106, -961, -1270, -1137, -770, -586, -982, -823, -1382, -1525, -1217, -1367, -1666, -1757, -1505, -1624, 377, 632, 854, 1079, 227, 24, 386, 637, -341, -129, 52, 296, -590, -303, -993, -1347, 1206, 829, 1458, 1827, 2864, 2207, 3551, 4337, 615, 1663, -38, 689, 2089, 2720, 1144, 1643, -1617, -1542, -1445, -1351, -1160, -1270, -1023, -1130, -880, -1008, -744, -880, -598, -417, -747, -601, -242, -107, -442, -300, 32, 189, -167, 10, 364, 518, 183, 328, 724, 915, 517, 684, -1788, -1856, -1702, -1645, -1783, -1726, -1630, -1558, -1121, -1354, -1846, -1781, -1903, -1843, -1782, -1717, -1481, -1398, -1238, -1329, -1715, -1576, -1494, -1422, -1067, -1188, -860, -1034, -1364, -1292, -1217, -1097, -1737, -1657, -1577, -1488, -1707, -1637, -1323, -1391, -1491, -1394, -1592, -1499, -817, -917, -680, -761, -984, -1071, -872, -963, -591, -336, -620, -500, -743, -649, -864, -779, -1133, -1053, -977, -891, -1059, -965, -79, 9, 78, 175, 259, 344, 448, 524, -365, -237, -503, -372, -135, -252, 21, -101, -642, -550, -752, -648, -427, -555, -248, -384, -835, -952, -534, -724, 2192, 2033, 2654, 2890, 2529, 2347, 2846, 2608, 3087, 2862, 3993, 4213, 3373, 3073, 3761, 3511, 1781, 1943, 1583, 1739, 2089, 2271, 1986, 1814, 1074, 957, 1184, 1352, 2408, 2588, 2303, 2167, 2888, 2615, 805, 940, 667, 794, 1112, 1003, 911, 564, 1013, 1225, 88, -58, 204, 358, -238, 11, -612, -278, 542, 310, 827, 686, 844, 1275, 191, 817].span()
};
    let num_trees: u32 = 1;
    let base_score: i32 = 7447;
    let opt_type: u8 = 0;
    let trees: Span<xgb_inference::Tree> = array![tree_0].span();
    let mut result: i32 = xgb_inference::accumulate_scores_from_trees(num_trees, trees, input_vector, 0, 0);

    if opt_type == 1 {
        // Implement logic here
    } else {
        result = result + base_score;
    }

    return result;
}