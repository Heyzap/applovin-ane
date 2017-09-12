//
//  AppLovinANE.h
//  AppLovinANE
//

#import "FlashRuntimeExtensions.h"

void AppLovinANEContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx,
                                  uint32_t* numFunctionsToSet, const FRENamedFunction** functionsToSet);

void AppLovinANEContextFinalizer(FREContext ctx);

void AppLovinANEExtInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet,
                              FREContextFinalizer* ctxFinalizerToSet);

void AppLovinANEFinalizer(void* extData);
