//
//  ViewController.m
//  SimpleFilePlayer
//
//  Created by Syed Haris Ali on 1/15/16.
//  Copyright © 2016 Syed Haris Ali. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //
    // Get the audio file as an NSURL from the NSBundle, which contains the
    // media resources you drop into any Xcode project. Look left
    // at the project contents and you'll see I've dragged an audio file
    // into the project named "audio_file.wav". You can change this to
    // any other audio file by dragging in your audio file and changing the
    // name and extension of the resource below.
    //
    NSURL *fileURL = [[NSBundle mainBundle] URLForResource:@"audio_file" withExtension:@"wav"];
    
    //
    // Setup the audio player using that NSURL instance.
    //
    self.audioPlayer = [EZAudioPlayer audioPlayerWithURL:fileURL];
}

//------------------------------------------------------------------------------
#pragma mark - Actions
//------------------------------------------------------------------------------

- (void)play:(id)sender {
    //
    // Check if the audio player is currently playing.
    //
    if ([self.audioPlayer isPlaying]) {
        //
        // Pause the audio player if it is currently playing.
        //
        [self.audioPlayer pause];
    }
    else {
        //
        // Play if the audio player is not currently playing.
        //
        [self.audioPlayer play];
    }
}

@end
