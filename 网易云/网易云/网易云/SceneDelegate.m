//
//  SceneDelegate.m
//  网易云
//
//  Created by young_jerry on 2020/7/16.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "SceneDelegate.h"
#import "ViewControllerMy.h"
#import "ViewControllerWow.h"
#import "ViewControllerAccount.h"
#import "ViewControllerVideo.h"
#import "ViewControllerVillage.h"
#import "yunViewController.h"
//#import "ViewController.h"
@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
////        1.创建一个导航控制器
//            UINavigationController *nav=[[UINavigationController alloc]init];
//        //    2.设置导航控制器为window的根视图
//            self.window.rootViewController =nav;

    ViewControllerMy* VCMy = [[ViewControllerMy alloc]init];
    ViewControllerWow* VCWow = [[ViewControllerWow alloc]init];
    ViewControllerVideo* VCVideo = [[ViewControllerVideo alloc]init];
    ViewControllerAccount* VCAccount = [[ViewControllerAccount alloc]init];
    ViewControllerVillage* VCVillage = [[ViewControllerVillage alloc]init];

    
    VCMy.title = @"我的";
    VCVillage.title = @"云村";
    VCVideo.title = @"视频";
    VCAccount.title = @"账号";
    VCWow.title = @"发现";

    VCMy.view.backgroundColor = [UIColor whiteColor];
    VCAccount.view.backgroundColor = [UIColor whiteColor];
    VCVideo.view.backgroundColor = [UIColor whiteColor];
    VCVillage.view.backgroundColor = [UIColor whiteColor];
    VCWow.view.backgroundColor = [UIColor whiteColor];

    
    UIBarButtonItem *p2 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"列表.png"] style:UIBarButtonItemStylePlain target:self action:nil];
    UIBarButtonItem *p3 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"saoyisao-2.png"] style:UIBarButtonItemStylePlain target:self action:nil];
//    VCVillage.navigationItem.leftBarButtonItem = p1;
    VCAccount.navigationItem.leftBarButtonItem = p3;
//    VCVideo.navigationItem.leftBarButtonItem = p1;
//    VCWow.navigationItem.leftBarButtonItem = p1;
    

    VCVillage.navigationItem.rightBarButtonItem = p2;
    VCAccount.navigationItem.rightBarButtonItem = p2;
    VCVideo.navigationItem.rightBarButtonItem = p2;
    VCWow.navigationItem.rightBarButtonItem = p2;
    VCMy.navigationItem.rightBarButtonItem = p2;

//
    //设置左上角的云为红色
        VCMy.navigationItem.leftBarButtonItem.tintColor = [UIColor redColor];
    VCAccount.navigationItem.leftBarButtonItem.tintColor = [UIColor grayColor];


            UINavigationController *a1 = [[UINavigationController alloc] initWithRootViewController:VCWow];

            UINavigationController *a2 = [[UINavigationController alloc] initWithRootViewController:VCVideo];

            UINavigationController *a3 = [[UINavigationController alloc] initWithRootViewController:VCMy];

            UINavigationController *a4 = [[UINavigationController alloc] initWithRootViewController:VCVillage];

            UINavigationController *a5 = [[UINavigationController alloc] initWithRootViewController:VCAccount];
//    创建一个控制器数组对象
//    将所有要被分栏控制器管理的对象添加到数组中
    NSArray* arrayVC = [NSArray arrayWithObjects:a1,a2,a3,a4,a5, nil];

    UITabBarController* tbController = [[UITabBarController alloc]init];

    tbController.viewControllers = arrayVC;

    tbController.selectedIndex = 2;
    //   将分栏控制器作为根视图
    self.window.rootViewController = tbController;
//
         [self.window makeKeyAndVisible];
    
}

 

- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
