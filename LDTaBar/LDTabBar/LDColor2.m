//
//  LDColor2.m
//  LongDai
//
//  Created by 黄丰 on 15/7/15.
//  Copyright (c) 2015年 Gozap. All rights reserved.
//

#import "LDColor2.h"

@implementation LDColor2
+ (UIColor *)colorWithR255:(NSInteger)red G255:(NSInteger)green B255:(NSInteger)blue A255:(NSInteger)alpha
{
    return ([UIColor colorWithRed:((CGFloat) red / 255) green:((CGFloat) green / 255) blue:((CGFloat) blue / 255) alpha:((CGFloat) alpha / 255)]);
}
+ (UIImage *)createImageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);

    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}
+ (UIImage *)createImageWithColor:(UIColor *)color withSize:(CGSize)size {
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, CGRectMake(0, 0, size.width, size.height));

    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

+ (UIColor *)themeRed {
    return [LDColor2 colorWithR255:192 G255:74 B255:83 A255:255];
}

+ (UIColor *)backgroudColor {
    return [LDColor2 colorWithR255:251 G255:250 B255:248 A255:255];
}
+ (UIColor *)backgroudColor2{
    return [LDColor2 colorWithR255:232 G255:231 B255:228 A255:255];
}

+ (UIColor *)separatorColor {
    return [LDColor2 ldBrown_225_218_207];
}
+ (UIColor *)backgroudColor3{
    return [LDColor2 colorWithR255:246 G255:246 B255:246 A255:255];
}
+ (UIColor *)ldgray44 {
    return [LDColor2 colorWithR255:44 G255:44 B255:44 A255:255];
}
+ (UIColor *)ldgray51 {
    return [LDColor2 colorWithR255:51 G255:51 B255:51 A255:255];
}
+ (UIColor *)ldgray62 {
    return [LDColor2 colorWithR255:62 G255:62 B255:62 A255:255];
}
+ (UIColor *)ldgrey102 {
    return [LDColor2 colorWithR255:102 G255:102 B255:102 A255:255];
}
+ (UIColor *)ldgrey153 {
    return [LDColor2 colorWithR255:153 G255:153 B255:153 A255:255];
}
+ (UIColor *)ldgrey210 {
    return [LDColor2 colorWithR255:210 G255:210 B255:210 A255:255];
}
+ (UIColor *)ldgrey235{
    return [LDColor2 colorWithR255:235 G255:235 B255:235 A255:255];
}
+ (UIColor *)ldgrey244 {
    return [LDColor2 colorWithR255:244 G255:244 B255:244 A255:255];
}
+ (UIColor *)ldgrey199 {
    return [LDColor2 colorWithR255:199 G255:199 B255:199 A255:255];
}
+ (UIColor *)ldgrey_130_95_110 {
    return [LDColor2 colorWithR255:130 G255:95 B255:110 A255:255];
}
+ (UIColor *)ldgrey_95_10_25 {
    return [LDColor2 colorWithR255:95 G255:10 B255:25 A255:255];
}
+ (UIColor *)ldgrey_226_223_221 {
    return [LDColor2 colorWithR255:226 G255:223 B255:221 A255:255];
}
+ (UIColor *)ldgrey_239_236_232{
    return [LDColor2 colorWithR255:239 G255:236 B255:232 A255:255];
}
+ (UIColor *)ldgrey_103_98_92{
    return [LDColor2 colorWithR255:103 G255:98 B255:92 A255:255];
}
+ (UIColor *)ldgrey_229_229_229{
    return [LDColor2 colorWithR255:229 G255:229 B255:229 A255:255];
}
+ (UIColor *)ldgrey_213_223_237{
    return [LDColor2 colorWithR255:213 G255:223 B255:237 A255:255];
}
+ (UIColor *)ldgrey_105_118_142{
   return [LDColor2 colorWithR255:105 G255:118 B255:142 A255:255];
}
+ (UIColor *)ldgrey_143_170_205{
    return [LDColor2 colorWithR255:143 G255:170 B255:205 A255:255];
}

+ (UIColor *)ldYellow_255_157_37 {
    return [LDColor2 colorWithR255:255 G255:157 B255:37 A255:255];
}
+ (UIColor *)ldYellow_143_124_60 {
    return [LDColor2 colorWithR255:143 G255:124 B255:60 A255:255];
}
+ (UIColor *)ldYellow_151_96_47 {
    return [LDColor2 colorWithR255:151 G255:96 B255:47 A255:255];
}
+ (UIColor *)ldYellow_253_124_94 {
    return [LDColor2 colorWithR255:253 G255:124 B255:94 A255:255];
}
+ (UIColor *)ldYellow_215_187_114 {
    return [LDColor2 colorWithR255:215 G255:187 B255:114 A255:255];
}
+ (UIColor *)ldYellow_249_245_214 {
    return [LDColor2 colorWithR255:249 G255:245 B255:214 A255:255];
}
+ (UIColor *)ldYellow_255_253_236 {
    return [LDColor2 colorWithR255:255 G255:253 B255:236 A255:255];
}
+ (UIColor *)ldYellow_255_250_171 {
    return [LDColor2 colorWithR255:254 G255:250 B255:171 A255:255];
}
+ (UIColor *)ldYellow_225_218_207{
    return [LDColor2 colorWithR255:225 G255:218 B255:207 A255:255];
}
+ (UIColor *)ldYellow_229_220_215{
    return [LDColor2 colorWithR255:229 G255:220 B255:215 A255:255];
}
+ (UIColor *)ldYellow_255_254_220{
    return [LDColor2 colorWithR255:255 G255:254 B255:220 A255:255];
}
+ (UIColor *)ldYellow_242_183_91{
    return [LDColor2 colorWithR255:242 G255:183 B255:91 A255:255];
}
+ (UIColor *)ldYellow_225_173_42{
    return [LDColor2 colorWithR255:225 G255:173 B255:42 A255:255];
}

+ (UIColor *)ldRed_255_100_85 {
    return [LDColor2 colorWithR255:255 G255:100 B255:85 A255:255];
}
+ (UIColor *)ldRed_183_78_66 {
    return [LDColor2 colorWithR255:183 G255:78 B255:66 A255:255];
}
+ (UIColor *)ldRed_215_81_89{
    return [LDColor2 colorWithR255:215 G255:81 B255:89 A255:255];
}
+ (UIColor *)ldRed_218_134_106{
    return [LDColor2 colorWithR255:218 G255:134 B255:109 A255:255];
}
+ (UIColor *)ldRed_153_35_38{
    return [LDColor2 colorWithR255:153 G255:35 B255:38 A255:255];
}
+ (UIColor *)ldRed_240_85_45{
    return [LDColor2 colorWithR255:240 G255:85 B255:45 A255:255];
}
+ (UIColor *)ldRed_226_106_80{
    return [LDColor2 colorWithR255:226 G255:106 B255:80 A255:255];
}
+ (UIColor *)ldRed_255_81_24{
    return [LDColor2 colorWithR255:255 G255:81 B255:24 A255:255];
}
+ (UIColor *)ldRed_255_153_151{
    return [LDColor2 colorWithR255:255 G255:153 B255:151 A255:255];
}
+ (UIColor *)ldRed_255_39_23{
    return [LDColor2 colorWithR255:255 G255:39 B255:23 A255:255];
}


+ (UIColor *)ldGreen_189_206_134{
    return [LDColor2 colorWithR255:189 G255:206 B255:134 A255:255];
}
+ (UIColor *)ldGreen_127_206_194{
    return [LDColor2 colorWithR255:127 G255:206 B255:194 A255:255];
}
+ (UIColor *)ldGreen_47_177_111 {
    return [LDColor2 colorWithR255:47 G255:177 B255:111 A255:255];
}
+ (UIColor *)ld_green_232_242_237 {
    return [LDColor2 colorWithR255:232 G255:242 B255:237 A255:255];
}
+ (UIColor *)ldGreen_101_217_181{
    return [LDColor2 colorWithR255:101 G255:217 B255:181 A255:255];
}
+ (UIColor *)ldGreen_140_215_174{
    return [LDColor2 colorWithR255:140 G255:215 B255:174 A255:255];
}
+ (UIColor *)ldGreen_104_175_47{
    return [LDColor2 colorWithR255:104 G255:175 B255:47 A255:255];
}
+ (UIColor *)ldGreen_88_126_80{
    return [LDColor2 colorWithR255:41 G255:80 B255:28 A255:255];
}
+ (UIColor *)ldGreen_130_157_115{
    return [LDColor2 colorWithR255:130 G255:157 B255:115 A255:255];
}
+ (UIColor *)ldGreen_74_97_52{
    return [LDColor2 colorWithR255:74 G255:97 B255:52 A255:255];
}
+ (UIColor *)ldGreen_93_130_84{
    return [LDColor2 colorWithR255:93 G255:130 B255:84 A255:255];
}
+ (UIColor *)ldGreen_85_211_157 {
    return [LDColor2 colorWithR255:85 G255:211 B255:157 A255:255];
}
+(UIColor *)ld_green_77_175_124{
    return [LDColor2 colorWithR255:77 G255:175 B255:124 A255:255];
}
+ (UIColor *)ld_green_146_197_85{
    return [LDColor2 colorWithR255:146 G255:197 B255:85 A255:255];
}


+ (UIColor *)ldBlue_127_156_215 {
    return [LDColor2 colorWithR255:127 G255:156 B255:215 A255:255];
}
+ (UIColor *)ldblue_140_164_217 {
    return [LDColor2 colorWithR255:140 G255:164 B255:217 A255:255];
}
+ (UIColor *)ldblue_65_199_243 {
    return [LDColor2 colorWithR255:65 G255:199 B255:243 A255:255];
}
+ (UIColor *)ldblue_233_245_255{
    return [LDColor2 colorWithR255:233 G255:245 B255:255 A255:255];
}
+ (UIColor *)ldblue_106_185_250{
    return [LDColor2 colorWithR255:106 G255:185 B255:250 A255:255];
}
+ (UIColor *)ldblue_90_109_159{
    return [LDColor2 colorWithR255:90 G255:109 B255:159 A255:255];
}
+ (UIColor *)ldblue_30_101_105{
    return [LDColor2 colorWithR255:30 G255:101 B255:105 A255:255];
}
+ (UIColor *)ldBlue_16_121_250{
    return [LDColor2 colorWithR255:16 G255:121 B255:250 A255:255];
}

+ (UIColor *)ldBrown_205_102_24{
    return [LDColor2 colorWithR255:205 G255:102 B255:24 A255:255];
}
+ (UIColor *)ldBrown_142_103_118 {
    return [LDColor2 colorWithR255:142 G255:103 B255:118 A255:255];
}
+ (UIColor *)ldBrown_157_111_75 {
    return [LDColor2 colorWithR255:157 G255:111 B255:75 A255:255];
}
+ (UIColor *)ldBrown_225_218_207 {
    return [LDColor2 colorWithR255:225 G255:218 B255:207 A255:255];
}
+ (UIColor *)ldBrown_88_66_66{
    return [LDColor2 colorWithR255:88 G255:66 B255:66 A255:255];
}
+ (UIColor *)ldBrown_194_178_187{
    return [LDColor2 colorWithR255:194 G255:178 B255:187 A255:255];
}
+ (UIColor *)ldBrown_183_116_109{
    return [LDColor2 colorWithR255:183 G255:116 B255:109 A255:255];
}
+ (UIColor *)ldBrown_101_89_90{
    return [LDColor2 colorWithR255:101 G255:89 B255:90 A255:255];
}
+ (UIColor *)ldBrown_125_97_110{
    return [LDColor2 colorWithR255:125 G255:97 B255:110 A255:255];
}
+ (UIColor *)ldBrown_130_80_51{
    return [LDColor2 colorWithR255:130 G255:80 B255:51 A255:255];
}
+ (UIColor *)ldBrown_181_158_140{
    return [LDColor2 colorWithR255:181 G255:158 B255:140 A255:255];
}
+ (UIColor *)ldBrown_129_45_48{
    return [LDColor2 colorWithR255:129 G255:45 B255:48 A255:255];
}
@end
