.class Lcom/android/systemui/recents/OverviewProxyService$1;
.super Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;
.source "OverviewProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/OverviewProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method public static synthetic $r8$lambda$-rTamD5RxZV7tLTHGCLqZBRnxa4(Lcom/android/systemui/recents/OverviewProxyService$1;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onAssistantProgress$8(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$0u54hE3unblpwkhhpjX6eulOsOU(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$startShortcut$26(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/wm/shell/splitscreen/SplitScreen;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3RdJckZx198hLKyEWoaXlhlP0jg(Lcom/android/systemui/recents/OverviewProxyService$1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onQuickSwitchToNewTask$15(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4jFp4JwEtAwnpqQGpgOJ6jEKebM()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$stopScreenPinning$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Cv2OXlyCo89RRvNPz7GKSH0d1Eg(Lcom/android/systemui/recents/OverviewProxyService$1;Lcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$unregisterSplitScreenListener$21(Lcom/android/wm/shell/splitscreen/SplitScreen;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EzphxMDLpsE9qC5xFE-VltstFxM(Lcom/android/systemui/recents/OverviewProxyService$1;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$setNavBarButtonAlpha$7(FZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$GbjYh0m2RscTHZ4mwARrTfqHbI8(Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$startOneHandedMode$16(Lcom/android/wm/shell/onehanded/OneHanded;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ISV6Pn_Hy0GT6ziOP6BsyJP1n4s(ILdagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$startScreenPinning$0(ILdagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JCURSeXMXGX2qZUQjeuOuB3_7-M(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;IILcom/android/wm/shell/pip/Pip;)Landroid/graphics/Rect;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$startSwipePipToHome$18(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;IILcom/android/wm/shell/pip/Pip;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JTj73Vv0XYV43QqAtDB38W6riFI(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$startAssistant$10(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NvtWVsnXu13cFCVKbQhrlEL7jBU(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)Landroid/graphics/Rect;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$getNonMinimizedSplitScreenSecondaryBounds$6(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$R0FOT2MMwmgAsfv9LuuxAMOz6JA(ZLcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$setSplitScreenMinimized$12(ZLcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UOCeNSDszarU39Cu1a2i6E0TKQo(ZLcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$exitSplitScreenOnHide$24(ZLcom/android/wm/shell/splitscreen/SplitScreen;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VkExU21QimYW0WUn738HohpY1Wk(Landroid/content/ComponentName;Landroid/graphics/Rect;Lcom/android/wm/shell/pip/Pip;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$stopSwipePipToHome$19(Landroid/content/ComponentName;Landroid/graphics/Rect;Lcom/android/wm/shell/pip/Pip;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Jk1G8y_Opyq2CHxsvobqunYwn8(Lcom/android/systemui/recents/OverviewProxyService$1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$startScreenPinning$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bfuh84b355qnEuREDSm0wzM0Qv0(Lcom/android/wm/shell/pip/Pip;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$notifySwipeToHomeFinished$13(Lcom/android/wm/shell/pip/Pip;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dAjt5EcFmbWS78cRIiWXAmpHwn0(Landroid/app/PendingIntent;IILandroid/os/Bundle;Lcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$startIntent$27(Landroid/app/PendingIntent;IILandroid/os/Bundle;Lcom/android/wm/shell/splitscreen/SplitScreen;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f4-syD2yklCix_TXxCTgNlo7UNU(Lcom/android/systemui/recents/OverviewProxyService$1;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onAssistantGestureCompletion$9(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$g0Y-vTssgNv313ONs4thNUkzvu4(ZLcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$setSideStageVisibility$22(ZLcom/android/wm/shell/splitscreen/SplitScreen;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lNy5mBgGz4wrZ51IOU13GkBI5Nc(Lcom/android/systemui/recents/OverviewProxyService$1;Lcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$registerSplitScreenListener$20(Lcom/android/wm/shell/splitscreen/SplitScreen;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lOQoqqayDYOfkcRZzlDjiAoGgDs(IIILandroid/os/Bundle;Lcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$startTask$25(IIILandroid/os/Bundle;Lcom/android/wm/shell/splitscreen/SplitScreen;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lTKXI_Xm0XWKE2iaK11eulRX8z4(ZILcom/android/wm/shell/pip/Pip;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$setShelfHeight$11(ZILcom/android/wm/shell/pip/Pip;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mSjjg_WyYHuu3otlhfrI8_cF65Y(Lcom/android/systemui/recents/OverviewProxyService$1;Lcom/android/wm/shell/pip/Pip;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$setPinnedStackAnimationListener$14(Lcom/android/wm/shell/pip/Pip;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nBJM-k5w0ZCHQchJRUNbJ63gueo(Lcom/android/systemui/recents/OverviewProxyService$1;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onOverviewShown$5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$uR9_N7EkgDgWIJHUdWtVffJ6Y8E(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;Ldagger/Lazy;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onStatusBarMotionEvent$4(Landroid/view/MotionEvent;Ldagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uqp-ZtmgyxAQ8JRZ7lkdfpikC_0(Lcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$exitSplitScreen$23(Lcom/android/wm/shell/splitscreen/SplitScreen;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vsONXKQO4BlUnqQ1O0uzT3kLYPY(Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$stopOneHandedMode$17(Lcom/android/wm/shell/onehanded/OneHanded;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yzPUmCmV5ie1pLz_z1FzQQ2nIQU(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onStatusBarMotionEvent$3(Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;-><init>()V

    return-void
.end method

.method private static synthetic lambda$exitSplitScreen$23(Lcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 0

    .line 616
    invoke-interface {p0}, Lcom/android/wm/shell/splitscreen/SplitScreen;->exitSplitScreen()V

    return-void
.end method

.method private static synthetic lambda$exitSplitScreenOnHide$24(ZLcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 0

    .line 629
    invoke-interface {p1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreen;->exitSplitScreenOnHide(Z)V

    return-void
.end method

.method private static synthetic lambda$getNonMinimizedSplitScreenSecondaryBounds$6(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)Landroid/graphics/Rect;
    .locals 0

    .line 271
    invoke-interface {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->getDividerView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$notifySwipeToHomeFinished$13(Lcom/android/wm/shell/pip/Pip;)V
    .locals 1

    const/4 v0, 0x1

    .line 420
    invoke-interface {p0, v0}, Lcom/android/wm/shell/pip/Pip;->setPinnedStackAnimationType(I)V

    return-void
.end method

.method private synthetic lambda$onAssistantGestureCompletion$9(F)V
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$1900(Lcom/android/systemui/recents/OverviewProxyService;F)V

    return-void
.end method

.method private synthetic lambda$onAssistantProgress$8(F)V
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$2000(Lcom/android/systemui/recents/OverviewProxyService;F)V

    return-void
.end method

.method private synthetic lambda$onOverviewShown$5(Z)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$2200(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v1}, Lcom/android/systemui/recents/OverviewProxyService;->access$2200(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onOverviewShown(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$onQuickSwitchToNewTask$15(I)V
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$1600(Lcom/android/systemui/recents/OverviewProxyService;I)V

    return-void
.end method

.method private synthetic lambda$onStatusBarMotionEvent$3(Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 7

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 224
    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v3, v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$2302(Lcom/android/systemui/recents/OverviewProxyService;Z)Z

    .line 225
    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/recents/OverviewProxyService;->access$2402(Lcom/android/systemui/recents/OverviewProxyService;F)F

    .line 226
    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/systemui/recents/OverviewProxyService;->access$2502(Lcom/android/systemui/recents/OverviewProxyService;J)J

    .line 227
    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 228
    invoke-static {v3}, Lcom/android/systemui/recents/OverviewProxyService;->access$2300(Lcom/android/systemui/recents/OverviewProxyService;)Z

    move-result v3

    const/4 v4, 0x0

    .line 227
    invoke-virtual {p2, v3, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->onInputFocusTransfer(ZZF)V

    :cond_0
    const/4 v3, 0x3

    if-eq v0, v2, :cond_1

    if-ne v0, v3, :cond_3

    .line 232
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v4, v1}, Lcom/android/systemui/recents/OverviewProxyService;->access$2302(Lcom/android/systemui/recents/OverviewProxyService;Z)Z

    .line 233
    iget-object v4, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v4}, Lcom/android/systemui/recents/OverviewProxyService;->access$2300(Lcom/android/systemui/recents/OverviewProxyService;)Z

    move-result v4

    if-ne v0, v3, :cond_2

    move v1, v2

    .line 235
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$2400(Lcom/android/systemui/recents/OverviewProxyService;)F

    move-result v2

    sub-float/2addr v0, v2

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$2500(Lcom/android/systemui/recents/OverviewProxyService;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    long-to-float p0, v2

    div-float/2addr v0, p0

    .line 233
    invoke-virtual {p2, v4, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onInputFocusTransfer(ZZF)V

    .line 238
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private synthetic lambda$onStatusBarMotionEvent$4(Landroid/view/MotionEvent;Ldagger/Lazy;)V
    .locals 2

    .line 219
    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 220
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startExpandLatencyTracking()V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$registerSplitScreenListener$20(Lcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 0

    .line 575
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1500(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreen;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    return-void
.end method

.method private synthetic lambda$setNavBarButtonAlpha$7(FZ)V
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService;->access$2100(Lcom/android/systemui/recents/OverviewProxyService;FZ)V

    return-void
.end method

.method private synthetic lambda$setPinnedStackAnimationListener$14(Lcom/android/wm/shell/pip/Pip;)V
    .locals 0

    .line 436
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1700(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/wm/shell/pip/Pip;->setPinnedStackAnimationListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$setShelfHeight$11(ZILcom/android/wm/shell/pip/Pip;)V
    .locals 0

    .line 394
    invoke-interface {p2, p0, p1}, Lcom/android/wm/shell/pip/Pip;->setShelfHeight(ZI)V

    return-void
.end method

.method private static synthetic lambda$setSideStageVisibility$22(ZLcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 0

    .line 603
    invoke-interface {p1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreen;->setSideStageVisibility(Z)V

    return-void
.end method

.method private static synthetic lambda$setSplitScreenMinimized$12(ZLcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V
    .locals 0

    .line 409
    invoke-interface {p1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->setMinimized(Z)V

    return-void
.end method

.method private synthetic lambda$startAssistant$10(Landroid/os/Bundle;)V
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$1800(Lcom/android/systemui/recents/OverviewProxyService;Landroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic lambda$startIntent$27(Landroid/app/PendingIntent;IILandroid/os/Bundle;Lcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 0

    .line 672
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreen;->startIntent(Landroid/app/PendingIntent;IILandroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic lambda$startOneHandedMode$16(Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 0

    .line 462
    invoke-interface {p0}, Lcom/android/wm/shell/onehanded/OneHanded;->startOneHanded()V

    return-void
.end method

.method private static synthetic lambda$startScreenPinning$0(ILdagger/Lazy;)V
    .locals 1

    .line 182
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showScreenPinningRequest(IZ)V

    return-void
.end method

.method private synthetic lambda$startScreenPinning$1(I)V
    .locals 1

    .line 181
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$100(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$startShortcut$26(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 7

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 658
    invoke-interface/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreen;->startShortcut(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method private static synthetic lambda$startSwipePipToHome$18(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;IILcom/android/wm/shell/pip/Pip;)Landroid/graphics/Rect;
    .locals 6

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 519
    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/pip/Pip;->startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$startTask$25(IIILandroid/os/Bundle;Lcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 0

    .line 643
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreen;->startTask(IIILandroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic lambda$stopOneHandedMode$17(Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 0

    .line 475
    invoke-interface {p0}, Lcom/android/wm/shell/onehanded/OneHanded;->stopOneHanded()V

    return-void
.end method

.method private static synthetic lambda$stopScreenPinning$2()V
    .locals 2

    .line 199
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "OverviewProxyService"

    const-string v1, "Failed to stop screen pinning"

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$stopSwipePipToHome$19(Landroid/content/ComponentName;Landroid/graphics/Rect;Lcom/android/wm/shell/pip/Pip;)V
    .locals 0

    .line 534
    invoke-interface {p2, p0, p1}, Lcom/android/wm/shell/pip/Pip;->stopSwipePipToHome(Landroid/content/ComponentName;Landroid/graphics/Rect;)V

    return-void
.end method

.method private synthetic lambda$unregisterSplitScreenListener$21(Lcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 0

    .line 590
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1500(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreen;->unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    return-void
.end method

.method private verifyCaller(Ljava/lang/String;)Z
    .locals 2

    .line 679
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 680
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1400(Lcom/android/systemui/recents/OverviewProxyService;)I

    move-result p0

    if-eq v0, p0, :cond_0

    .line 681
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launcher called sysui with invalid user: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", reason: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OverviewProxyService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public exitSplitScreen()V
    .locals 3

    const-string v0, "exitSplitScreen"

    .line 611
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 614
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 616
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1300(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p0

    sget-object v2, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda25;->INSTANCE:Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda25;

    invoke-virtual {p0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 619
    throw p0
.end method

.method public exitSplitScreenOnHide(Z)V
    .locals 3

    const-string v0, "exitSplitScreenOnHide"

    .line 624
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 627
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 629
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1300(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda19;

    invoke-direct {v2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda19;-><init>(Z)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 632
    throw p0
.end method

.method public expandNotificationPanel()V
    .locals 3

    const-string v0, "expandNotificationPanel"

    .line 498
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 501
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 503
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$900(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/statusbar/CommandQueue;

    move-result-object p0

    const/16 v2, 0x119

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/CommandQueue;->handleSystemKey(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 506
    throw p0
.end method

.method public getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;
    .locals 4

    const-string v0, "getNonMinimizedSplitScreenSecondaryBounds"

    .line 265
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 268
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 270
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$200(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda27;->INSTANCE:Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda27;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 272
    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 275
    throw p0
.end method

.method public handleImageAsScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;I)V
    .locals 0

    return-void
.end method

.method public handleImageBundleAsScreenshot(Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 11

    .line 484
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$800(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/internal/util/ScreenshotHelper;

    move-result-object v1

    iget v5, p4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v6, p4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iget-object v7, p4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 492
    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v8, 0x3

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 484
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/util/ScreenshotHelper;->provideScreenshot(Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;IILandroid/content/ComponentName;ILandroid/os/Handler;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public monitorGestureInput(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2

    const-string v0, "monitorGestureInput"

    .line 338
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 341
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 344
    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object p0

    .line 345
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "extra_input_monitor"

    .line 347
    invoke-static {p0}, Lcom/android/systemui/shared/system/InputMonitorCompat;->obtainReturnValue(Landroid/view/InputMonitor;)Lcom/android/systemui/shared/system/InputMonitorCompat;

    move-result-object p0

    .line 346
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 351
    throw p0
.end method

.method public notifyAccessibilityButtonClicked(I)V
    .locals 2

    const-string v0, "notifyAccessibilityButtonClicked"

    .line 356
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 359
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 361
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$400(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    .line 362
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 365
    throw p0
.end method

.method public notifyAccessibilityButtonLongClicked()V
    .locals 5

    const-string v0, "notifyAccessibilityButtonLongClicked"

    .line 370
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 375
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    const-class v3, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android"

    .line 378
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x10008000

    .line 379
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 380
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$400(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object p0

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 383
    throw p0
.end method

.method public notifySwipeToHomeFinished()V
    .locals 3

    const-string v0, "notifySwipeToHomeFinished"

    .line 414
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 417
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 419
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$500(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p0

    sget-object v2, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda24;->INSTANCE:Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda24;

    invoke-virtual {p0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 424
    throw p0
.end method

.method public onAssistantGestureCompletion(F)V
    .locals 4

    const-string v0, "onAssistantGestureCompletion"

    .line 312
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 315
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 317
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;F)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 320
    throw p0
.end method

.method public onAssistantProgress(F)V
    .locals 4

    const-string v0, "onAssistantProgress"

    .line 299
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 302
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 304
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;F)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 307
    throw p0
.end method

.method public onOverviewShown(Z)V
    .locals 4

    const-string v0, "onOverviewShown"

    .line 248
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 251
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 253
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 260
    throw p0
.end method

.method public onQuickSwitchToNewTask(I)V
    .locals 4

    const-string v0, "onQuickSwitchToNewTask"

    .line 444
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 447
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 449
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 452
    throw p0
.end method

.method public onStatusBarMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4

    const-string v0, "onStatusBarMotionEvent"

    .line 212
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 218
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$100(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 243
    throw p0
.end method

.method public registerRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;)V
    .locals 4

    const-string v0, "registerRemoteTransition"

    .line 543
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 544
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 546
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$1000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->getTransition()Landroid/window/IRemoteTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1100(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/wm/shell/transition/RemoteTransitions;

    move-result-object p0

    .line 548
    invoke-virtual {p1}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->getFilter()Landroid/window/TransitionFilter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->getTransition()Landroid/window/IRemoteTransition;

    move-result-object p1

    .line 547
    invoke-interface {p0, v2, p1}, Lcom/android/wm/shell/transition/RemoteTransitions;->registerRemote(Landroid/window/TransitionFilter;Landroid/window/IRemoteTransition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 551
    throw p0
.end method

.method public registerSplitScreenListener(Lcom/android/systemui/shared/recents/ISplitScreenListener;)V
    .locals 3

    const-string v0, "registerSplitScreenListener"

    .line 568
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$1202(Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/shared/recents/ISplitScreenListener;)Lcom/android/systemui/shared/recents/ISplitScreenListener;

    .line 572
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 574
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$1300(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p1

    new-instance v2, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 578
    throw p0
.end method

.method public setBackButtonAlpha(FZ)V
    .locals 0

    .line 294
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->setNavBarButtonAlpha(FZ)V

    return-void
.end method

.method public setNavBarButtonAlpha(FZ)V
    .locals 4

    const-string v0, "setNavBarButtonAlpha"

    .line 280
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 285
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$302(Lcom/android/systemui/recents/OverviewProxyService;F)F

    .line 286
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;FZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 289
    throw p0
.end method

.method public setPinnedStackAnimationListener(Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;)V
    .locals 3

    const-string v0, "setPinnedStackAnimationListener"

    .line 429
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$602(Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;)Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;

    .line 433
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 435
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$500(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p1

    new-instance v2, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 439
    throw p0
.end method

.method public setShelfHeight(ZI)V
    .locals 3

    const-string v0, "setShelfHeight"

    .line 388
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 391
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 393
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$500(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda21;

    invoke-direct {v2, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda21;-><init>(ZI)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 397
    throw p0
.end method

.method public setSideStageVisibility(Z)V
    .locals 3

    const-string v0, "setSideStageVisibility"

    .line 598
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 601
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 603
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1300(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda20;

    invoke-direct {v2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda20;-><init>(Z)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 606
    throw p0
.end method

.method public setSplitScreenMinimized(Z)V
    .locals 1

    .line 408
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$200(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda18;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda18;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startAssistant(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "startAssistant"

    .line 325
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 328
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 330
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 333
    throw p0
.end method

.method public startIntent(Landroid/app/PendingIntent;IILandroid/os/Bundle;)V
    .locals 3

    const-string v0, "startIntent"

    .line 666
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 669
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 671
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1300(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda11;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda11;-><init>(Landroid/app/PendingIntent;IILandroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 675
    throw p0
.end method

.method public startOneHandedMode()V
    .locals 3

    const-string v0, "startOneHandedMode"

    .line 457
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 460
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 462
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$700(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p0

    sget-object v2, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda22;->INSTANCE:Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda22;

    invoke-virtual {p0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    throw p0
.end method

.method public startScreenPinning(I)V
    .locals 4

    const-string v0, "startScreenPinning"

    .line 175
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 187
    throw p0
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 11

    move-object v0, p0

    const-string v1, "startShortcut"

    .line 652
    invoke-direct {p0, v1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 655
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 657
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1300(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object v0

    new-instance v10, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda17;

    move-object v3, v10

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda17;-><init>(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 661
    throw v0
.end method

.method public startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;II)Landroid/graphics/Rect;
    .locals 10

    const-string v0, "startSwipePipToHome"

    .line 513
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 516
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 518
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$500(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda26;

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda26;-><init>(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;II)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 521
    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 524
    throw p0
.end method

.method public startTask(IIILandroid/os/Bundle;)V
    .locals 3

    const-string v0, "startTask"

    .line 637
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 640
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 642
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1300(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda10;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda10;-><init>(IIILandroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 646
    throw p0
.end method

.method public stopOneHandedMode()V
    .locals 3

    const-string v0, "stopOneHandedMode"

    .line 470
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 473
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 475
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$700(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p0

    sget-object v2, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda23;->INSTANCE:Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda23;

    invoke-virtual {p0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 478
    throw p0
.end method

.method public stopScreenPinning()V
    .locals 3

    const-string v0, "stopScreenPinning"

    .line 192
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 197
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object p0

    sget-object v2, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda8;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 206
    throw p0
.end method

.method public stopSwipePipToHome(Landroid/content/ComponentName;Landroid/graphics/Rect;)V
    .locals 3

    const-string v0, "stopSwipePipToHome"

    .line 529
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 532
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 534
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$500(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda12;

    invoke-direct {v2, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda12;-><init>(Landroid/content/ComponentName;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 538
    throw p0
.end method

.method public unregisterRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;)V
    .locals 4

    const-string v0, "registerRemoteTransition"

    .line 556
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 557
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 559
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$1000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->getTransition()Landroid/window/IRemoteTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 560
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1100(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/wm/shell/transition/RemoteTransitions;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->getTransition()Landroid/window/IRemoteTransition;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/wm/shell/transition/RemoteTransitions;->unregisterRemote(Landroid/window/IRemoteTransition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 563
    throw p0
.end method

.method public unregisterSplitScreenListener(Lcom/android/systemui/shared/recents/ISplitScreenListener;)V
    .locals 3

    const-string p1, "unregisterSplitScreenListener"

    .line 583
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 586
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1202(Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/shared/recents/ISplitScreenListener;)Lcom/android/systemui/shared/recents/ISplitScreenListener;

    .line 587
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 589
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$1300(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p1

    new-instance v2, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 593
    throw p0
.end method
