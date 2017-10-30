//
//  LDColor2.h
//  LongDai
//
//  Created by 黄丰 on 15/7/15.
//  Copyright (c) 2015年 Gozap. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  龙贷2.0的配色
 */
@interface LDColor2 : UIColor
+ (UIColor *)colorWithR255:(NSInteger)red G255:(NSInteger)green B255:(NSInteger)blue A255:(NSInteger)alpha;
+ (UIImage *)createImageWithColor:(UIColor *)color;
+ (UIImage *)createImageWithColor:(UIColor *)color withSize:(CGSize)size;

+ (UIColor *)themeRed;
+ (UIColor *)backgroudColor;
+ (UIColor *)backgroudColor2;
+ (UIColor *)separatorColor;
+ (UIColor *)backgroudColor3;
/*  gray  */
+ (UIColor *)ldgray44;
+ (UIColor *)ldgray51;
+ (UIColor *)ldgray62;
+ (UIColor *)ldgrey102;
+ (UIColor *)ldgrey153;
+ (UIColor *)ldgrey210;
+ (UIColor *)ldgrey235;
+ (UIColor *)ldgrey244;
+ (UIColor *)ldgrey199;
+ (UIColor *)ldgrey_130_95_110;
+ (UIColor *)ldgrey_226_223_221;
+ (UIColor *)ldgrey_95_10_25;
+ (UIColor *)ldgrey_239_236_232;
+ (UIColor *)ldgrey_103_98_92;
+ (UIColor *)ldgrey_229_229_229;
+ (UIColor *)ldgrey_213_223_237;
+ (UIColor *)ldgrey_105_118_142;
+ (UIColor *)ldgrey_143_170_205;

/* yellow */
+ (UIColor *)ldYellow_255_157_37;
+ (UIColor *)ldYellow_143_124_60;
+ (UIColor *)ldYellow_215_187_114;
+ (UIColor *)ldYellow_151_96_47;
+ (UIColor *)ldYellow_253_124_94;
+ (UIColor *)ldYellow_249_245_214;
+ (UIColor *)ldYellow_255_253_236;
+ (UIColor *)ldYellow_255_250_171;
+ (UIColor *)ldYellow_225_218_207;
+ (UIColor *)ldYellow_229_220_215;
+ (UIColor *)ldYellow_255_254_220;
+ (UIColor *)ldYellow_242_183_91;
+ (UIColor *)ldYellow_225_173_42;

/* red */
+ (UIColor *)ldRed_255_100_85;
+ (UIColor *)ldRed_183_78_66;
+ (UIColor *)ldRed_215_81_89;
+ (UIColor *)ldRed_218_134_106;
+ (UIColor *)ldRed_153_35_38;
+ (UIColor *)ldRed_240_85_45;
+ (UIColor *)ldRed_226_106_80;
+ (UIColor *)ldRed_255_81_24;
+ (UIColor *)ldRed_255_153_151;
+ (UIColor *)ldRed_255_39_23;

/* green */
+ (UIColor *)ldGreen_47_177_111;
+ (UIColor *)ldGreen_85_211_157;
+ (UIColor *)ld_green_232_242_237;
+ (UIColor *)ldGreen_101_217_181;
+ (UIColor *)ldGreen_140_215_174;
+ (UIColor *)ldGreen_104_175_47;
+ (UIColor *)ldGreen_93_130_84;
+ (UIColor *)ldGreen_130_157_115;
+ (UIColor *)ldGreen_88_126_80;
+ (UIColor *)ldGreen_74_97_52;
+ (UIColor *)ldGreen_189_206_134;
+ (UIColor *)ldGreen_127_206_194;
+ (UIColor *)ld_green_77_175_124;
+ (UIColor *)ld_green_146_197_85;


/* blue */
+ (UIColor *)ldBlue_127_156_215;
+ (UIColor *)ldBlue_16_121_250;
+ (UIColor *)ldblue_140_164_217;
+ (UIColor *)ldblue_65_199_243;
+ (UIColor *)ldblue_233_245_255;
+ (UIColor *)ldblue_106_185_250;
+ (UIColor *)ldblue_90_109_159;
+ (UIColor *)ldblue_30_101_105;

/* Brown */
+ (UIColor *)ldBrown_205_102_24;
+ (UIColor *)ldBrown_142_103_118;
+ (UIColor *)ldBrown_157_111_75;
+ (UIColor *)ldBrown_225_218_207;
+ (UIColor *)ldBrown_88_66_66;
+ (UIColor *)ldBrown_194_178_187;
+ (UIColor *)ldBrown_183_116_109;
+ (UIColor *)ldBrown_101_89_90;
+ (UIColor *)ldBrown_125_97_110;
+ (UIColor *)ldBrown_130_80_51;
+ (UIColor *)ldBrown_181_158_140;
+ (UIColor *)ldBrown_129_45_48;
@end
