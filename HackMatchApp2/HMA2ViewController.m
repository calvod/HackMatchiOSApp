//
//  HMA2ViewController.m
//  HackMatchApp2
//
//  Created by Diego Calvo on 1/13/14.
//  Copyright (c) 2014 Diego Calvo. All rights reserved.
//

#import "HMA2ViewController.h"
#import <Social/Social.h>

@interface HMA2ViewController ()

@end

@implementation HMA2ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.descriptionLabel setHidden:YES];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}
- (IBAction)hellYeahButtonPressed:(id)sender {
    NSLog(@"%hhd", [SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]);
    SLComposeViewController *fbCompose = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    [self presentViewController:fbCompose animated:YES completion:NULL];

}
- (IBAction)descriptionButtonPressed:(id)sender {
    [self.descriptionButton setAdjustsImageWhenHighlighted:NO];
    
    
    if (self.descriptionLabel.hidden == YES)
        [self.descriptionLabel setHidden:NO];
    else if (self.descriptionLabel.hidden == NO)
        [self.descriptionLabel setHidden:YES];
    
    else
        NSLog(@"Something done fucked up with hiding the label");
    
}


//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Good choice!" message:[NSString stringWithFormat:@"Let Diego know you want to work for his Tour"] delegate:nil cancelButtonTitle:@"Go" otherButtonTitles:nil];
//    [alert show];

- (IBAction)fucYouButtonPressed:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Fuck you!" message:[NSString stringWithFormat:@"This is the only company you would ever want to work for"] delegate:nil cancelButtonTitle:@"Try again" otherButtonTitles:nil];
    [alert show];
}


@end
