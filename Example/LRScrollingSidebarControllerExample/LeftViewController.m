// LeftViewController.m
//
// Copyright (c) 2014 Luis Recuenco
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "LeftViewController.h"
#import "MainViewController.h"
#import "UIViewController+LRScrollingSidebarController.h"

@implementation LeftViewController

- (IBAction)showMainPanelButtonTapped:(id)sender
{
    [self.scrollingSidebarController showMainViewControllerAnimated:YES];
}

- (IBAction)replaceMainPanelButtonTapped:(id)sender
{
    MainViewController *mainViewController = [[MainViewController alloc] init];
    mainViewController.view.backgroundColor = LRGetRandomColor();
    [self.scrollingSidebarController showMainViewController:mainViewController animated:YES];
}

#pragma mark - LRScrollingSidebarController

- (void)controllerIsVisible:(BOOL)controllerIsVisible
{
    NSLog(@"Left view controller is visible: %d", controllerIsVisible);
}

@end
