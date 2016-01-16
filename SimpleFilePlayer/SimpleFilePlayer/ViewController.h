//
//  ViewController.h
//  SimpleFilePlayer
//
//  Created by Syed Haris Ali on 1/15/16.
//  Copyright © 2016 Syed Haris Ali. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <EZAudio/EZAudio.h>

@interface ViewController : UIViewController

//------------------------------------------------------------------------------
#pragma mark - Properties
//------------------------------------------------------------------------------

//
// Use the EZAudioPlayer if you just need to play a simple audio file.
//
@property (strong, nonatomic) EZAudioPlayer *audioPlayer;

//------------------------------------------------------------------------------
#pragma mark - Actions
//------------------------------------------------------------------------------

//
// Hook up this action to your button in the interface builder to trigger
// the play function when you touch the button.
//
- (IBAction)play:(id)sender;

@end

