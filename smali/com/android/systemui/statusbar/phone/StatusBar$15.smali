.class Lcom/android/systemui/statusbar/phone/StatusBar$15;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public static synthetic $r8$lambda$LyzD5-qCfYbiFpf-fVlK0OsgRoM(Lcom/android/systemui/statusbar/phone/StatusBar$15;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$15;->lambda$onFinishedGoingToSleep$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$nuQ7oGEM5q_qIzZdzNubXt_VcwU(Lcom/android/systemui/statusbar/phone/StatusBar$15;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$15;->lambda$onFinishedGoingToSleep$1()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 3964
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onFinishedGoingToSleep$0()V
    .locals 1

    .line 3982
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3100(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onCameraLaunchGestureDetected(I)V

    return-void
.end method

.method private synthetic lambda$onFinishedGoingToSleep$1()V
    .locals 0

    .line 3990
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onEmergencyActionLaunchGestureDetected()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep()V
    .locals 3

    .line 3967
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onAffordanceLaunchEnded()V

    .line 3968
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 3969
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2002(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 3970
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    .line 3971
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2102(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 3972
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2202(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 3973
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateVisibleToUser()V

    .line 3975
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationPanelTouchState()V

    .line 3976
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->cancelCurrentTouch()V

    .line 3977
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2300(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3978
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2302(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 3982
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$15$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$15$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$15;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3985
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2400(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3986
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2402(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 3990
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$15$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$15$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$15;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3992
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 3

    .line 4030
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setFullyAwake(Z)V

    .line 4031
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2700(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->setFullyAwake(Z)V

    .line 4032
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setWakingUp(Z)V

    .line 4033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2000(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4034
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 4035
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3100(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v0

    .line 4034
    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->launchCamera(ZI)V

    .line 4036
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2002(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4038
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3200(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4039
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3202(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4040
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4042
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4045
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 3

    const-string v0, "StatusBar#onStartedGoingToSleep"

    .line 3998
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 3999
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationPanelTouchState()V

    .line 4000
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyHeadsUpGoingToSleep()V

    .line 4001
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2500(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4002
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setFullyAwake(Z)V

    .line 4003
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2700(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->setFullyAwake(Z)V

    .line 4004
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2800(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->onStartedGoingToSleep()V

    .line 4005
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 3

    const-string v0, "StatusBar#onStartedWakingUp"

    .line 4011
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 4012
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    .line 4013
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setWakingUp(Z)V

    .line 4014
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2800(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4015
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2900(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    .line 4017
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateVisibleToUser()V

    .line 4018
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    .line 4019
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->stopDozing()V

    .line 4023
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationPanelTouchState()V

    .line 4024
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3000(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->onStartedWakingUp()V

    .line 4025
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    return-void
.end method
