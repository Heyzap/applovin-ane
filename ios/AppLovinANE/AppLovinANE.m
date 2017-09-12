//
//  AppLovinANE.m
//  AppLovinANE
//

#import "AppLovinANE.h"
#import "FlashRuntimeExtensions.h"

void AppLovinANEContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx,
                                  uint32_t* numFunctionsToSet, const FRENamedFunction** functionsToSet) {
    
    static FRENamedFunction functionMap[] = {};
    *numFunctionsToSet = sizeof(functionMap) / sizeof(FRENamedFunction);
    *functionsToSet = functionMap;
}

void AppLovinANEContextFinalizer(FREContext ctx) {
    // context clean up
    return;
}

void AppLovinANEInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet,
                              FREContextFinalizer* ctxFinalizerToSet) {
    *extDataToSet = NULL;
    *ctxInitializerToSet = &AppLovinANEContextInitializer;
    *ctxFinalizerToSet = &AppLovinANEContextFinalizer;
}

void AppLovinANEFinalizer(void* extData) {
    // ext cleanup -- no call guarantee
    return;
}
