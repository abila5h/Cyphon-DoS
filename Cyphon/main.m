//
//  main.m
//  Cyphon
//
//  Created by Abilash Menon on 8/3/17.
//  Copyright © 2017 Abilash Menon. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <AppleScriptObjC/AppleScriptObjC.h>

int main(int argc, const char * argv[]) {
    [[NSBundle mainBundle] loadAppleScriptObjectiveCScripts];
    return NSApplicationMain(argc, argv);
}
