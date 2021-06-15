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

.method public static synthetic $r8$lambda$GBmwncgLIP4Zee5Oh-ocYLPtcUw(Lcom/android/systemui/recents/OverviewProxyService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onBackPressed$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$HZ1m6m3N63KwHO4pHlPw2StU5Zc(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)Landroid/graphics/Rect;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$getNonMinimizedSplitScreenSecondaryBounds$7(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ISV6Pn_Hy0GT6ziOP6BsyJP1n4s(ILdagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$startScreenPinning$0(ILdagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P4-zO-v0PhWTCaY18myI5OQ0m2o(Lcom/android/systemui/recents/OverviewProxyService$1;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$setNavBarButtonAlpha$8(FZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$R0FOT2MMwmgAsfv9LuuxAMOz6JA(ZLcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$setSplitScreenMinimized$12(ZLcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RnXYqXHk6OvpVNpDxfbPwN77n5U(Lcom/android/systemui/recents/OverviewProxyService$1;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onAssistantProgress$9(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$XXQLtBTOV7RlPBlupLZdUArbdZg(Lcom/android/systemui/recents/OverviewProxyService$1;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onAssistantGestureCompletion$10(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$YhtOkL-UN2-kJjrK6yVKnpQtHNM(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$startAssistant$11(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Jk1G8y_Opyq2CHxsvobqunYwn8(Lcom/android/systemui/recents/OverviewProxyService$1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$startScreenPinning$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_e_NvdlMNhI2klibMQkvIcP079A(Lcom/android/systemui/recents/OverviewProxyService$1;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onOverviewShown$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$bfuh84b355qnEuREDSm0wzM0Qv0(Lcom/android/wm/shell/pip/Pip;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$notifySwipeToHomeFinished$13(Lcom/android/wm/shell/pip/Pip;)V

    return-void
.end method

.method public static synthetic $r8$lambda$od_iLMK8X24HAggDmsqEVPsaENA(Lcom/android/systemui/recents/OverviewProxyService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$notifySwipeToHomeFinished$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$uR9_N7EkgDgWIJHUdWtVffJ6Y8E(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;Ldagger/Lazy;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onStatusBarMotionEvent$4(Landroid/view/MotionEvent;Ldagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yzPUmCmV5ie1pLz_z1FzQQ2nIQU(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onStatusBarMotionEvent$3(Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;-><init>()V

    return-void
.end method

.method private static synthetic lambda$getNonMinimizedSplitScreenSecondaryBounds$7(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)Landroid/graphics/Rect;
    .locals 0

    .line 299
    invoke-interface {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->getDividerView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$notifySwipeToHomeFinished$13(Lcom/android/wm/shell/pip/Pip;)V
    .locals 1

    const/4 v0, 0x1

    .line 411
    invoke-interface {p0, v0}, Lcom/android/wm/shell/pip/Pip;->setPinnedStackAnimationType(I)V

    return-void
.end method

.method private synthetic lambda$notifySwipeToHomeFinished$14()V
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->notifySwipeToHomeFinishedInternal()V

    return-void
.end method

.method private synthetic lambda$onAssistantGestureCompletion$10(F)V
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$1100(Lcom/android/systemui/recents/OverviewProxyService;F)V

    return-void
.end method

.method private synthetic lambda$onAssistantProgress$9(F)V
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$1200(Lcom/android/systemui/recents/OverviewProxyService;F)V

    return-void
.end method

.method private synthetic lambda$onBackPressed$5()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 252
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/OverviewProxyService$1;->sendEvent(II)Z

    const/4 v0, 0x1

    .line 253
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/OverviewProxyService$1;->sendEvent(II)Z

    .line 255
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/OverviewProxyService;->notifyBackAction(ZIIZZ)V

    return-void
.end method

.method private synthetic lambda$onOverviewShown$6(Z)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1400(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v1}, Lcom/android/systemui/recents/OverviewProxyService;->access$1400(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/List;

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

    .line 426
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$900(Lcom/android/systemui/recents/OverviewProxyService;I)V

    return-void
.end method

.method private synthetic lambda$onStatusBarMotionEvent$3(Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 7

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 222
    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v3, v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$1502(Lcom/android/systemui/recents/OverviewProxyService;Z)Z

    .line 223
    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/recents/OverviewProxyService;->access$1602(Lcom/android/systemui/recents/OverviewProxyService;F)F

    .line 224
    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/systemui/recents/OverviewProxyService;->access$1702(Lcom/android/systemui/recents/OverviewProxyService;J)J

    .line 225
    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 226
    invoke-static {v3}, Lcom/android/systemui/recents/OverviewProxyService;->access$1500(Lcom/android/systemui/recents/OverviewProxyService;)Z

    move-result v3

    const/4 v4, 0x0

    .line 225
    invoke-virtual {p2, v3, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->onInputFocusTransfer(ZZF)V

    :cond_0
    const/4 v3, 0x3

    if-eq v0, v2, :cond_1

    if-ne v0, v3, :cond_3

    .line 230
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v4, v1}, Lcom/android/systemui/recents/OverviewProxyService;->access$1502(Lcom/android/systemui/recents/OverviewProxyService;Z)Z

    .line 231
    iget-object v4, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v4}, Lcom/android/systemui/recents/OverviewProxyService;->access$1500(Lcom/android/systemui/recents/OverviewProxyService;)Z

    move-result v4

    if-ne v0, v3, :cond_2

    move v1, v2

    .line 233
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$1600(Lcom/android/systemui/recents/OverviewProxyService;)F

    move-result v2

    sub-float/2addr v0, v2

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1700(Lcom/android/systemui/recents/OverviewProxyService;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    long-to-float p0, v2

    div-float/2addr v0, p0

    .line 231
    invoke-virtual {p2, v4, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onInputFocusTransfer(ZZF)V

    .line 236
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private synthetic lambda$onStatusBarMotionEvent$4(Landroid/view/MotionEvent;Ldagger/Lazy;)V
    .locals 2

    .line 215
    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startExpandLatencyTracking()V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$setNavBarButtonAlpha$8(FZ)V
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService;->access$1300(Lcom/android/systemui/recents/OverviewProxyService;FZ)V

    return-void
.end method

.method private static synthetic lambda$setSplitScreenMinimized$12(ZLcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V
    .locals 0

    .line 400
    invoke-interface {p1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->setMinimized(Z)V

    return-void
.end method

.method private synthetic lambda$startAssistant$11(Landroid/os/Bundle;)V
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$1000(Lcom/android/systemui/recents/OverviewProxyService;Landroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic lambda$startScreenPinning$0(ILdagger/Lazy;)V
    .locals 1

    .line 178
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showScreenPinningRequest(IZ)V

    return-void
.end method

.method private synthetic lambda$startScreenPinning$1(I)V
    .locals 1

    .line 177
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$100(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda11;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$stopScreenPinning$2()V
    .locals 2

    .line 195
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

    .line 197
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private sendEvent(II)Z
    .locals 14

    .line 263
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 264
    new-instance v13, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x48

    const/16 v12, 0x101

    move-object v0, v13

    move-wide v1, v3

    move v5, p1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object v0, p0

    .line 269
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$200(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 270
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 271
    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v0

    return v0
.end method

.method private verifyCaller(Ljava/lang/String;)Z
    .locals 2

    .line 461
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 462
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$800(Lcom/android/systemui/recents/OverviewProxyService;)I

    move-result p0

    if-eq v0, p0, :cond_0

    .line 463
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
.method public expandNotificationPanel()V
    .locals 3

    const-string v0, "expandNotificationPanel"

    .line 449
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 452
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 454
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$700(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/statusbar/CommandQueue;

    move-result-object p0

    const/16 v2, 0x119

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/CommandQueue;->handleSystemKey(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 457
    throw p0
.end method

.method public getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;
    .locals 4

    const-string v0, "getNonMinimizedSplitScreenSecondaryBounds"

    .line 293
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 296
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 298
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$300(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda15;->INSTANCE:Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda15;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 300
    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 303
    throw p0
.end method

.method public handleImageAsScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;I)V
    .locals 0

    return-void
.end method

.method public handleImageBundleAsScreenshot(Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 11

    .line 435
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$600(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/internal/util/ScreenshotHelper;

    move-result-object v1

    iget v5, p4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v6, p4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iget-object v7, p4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 443
    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v8, 0x3

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 435
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/util/ScreenshotHelper;->provideScreenshot(Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;IILandroid/content/ComponentName;ILandroid/os/Handler;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public notifyAccessibilityButtonClicked(I)V
    .locals 2

    const-string v0, "notifyAccessibilityButtonClicked"

    .line 361
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 364
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 366
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$200(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    .line 367
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 370
    throw p0
.end method

.method public notifyAccessibilityButtonLongClicked()V
    .locals 5

    const-string v0, "notifyAccessibilityButtonLongClicked"

    .line 375
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 378
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 380
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    const-class v3, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android"

    .line 383
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x10008000

    .line 384
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 385
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$200(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object p0

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 388
    throw p0
.end method

.method public notifySwipeToHomeFinished()V
    .locals 4

    const-string v0, "notifySwipeToHomeFinished"

    .line 405
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 408
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 410
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$500(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda14;->INSTANCE:Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda14;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 413
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 416
    throw p0
.end method

.method public onAssistantGestureCompletion(F)V
    .locals 4

    const-string v0, "onAssistantGestureCompletion"

    .line 335
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 338
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 340
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;F)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 343
    throw p0
.end method

.method public onAssistantProgress(F)V
    .locals 4

    const-string v0, "onAssistantProgress"

    .line 322
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 327
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;F)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 330
    throw p0
.end method

.method public onBackPressed()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "onBackPressed"

    .line 246
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 251
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 259
    throw p0
.end method

.method public onOverviewShown(Z)V
    .locals 4

    const-string v0, "onOverviewShown"

    .line 276
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 281
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    throw p0
.end method

.method public onQuickSwitchToNewTask(I)V
    .locals 4

    const-string v0, "onQuickSwitchToNewTask"

    .line 421
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 424
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 426
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 429
    throw p0
.end method

.method public onStatusBarMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4

    const-string v0, "onStatusBarMotionEvent"

    .line 208
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 214
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$100(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 241
    throw p0
.end method

.method public setNavBarButtonAlpha(FZ)V
    .locals 4

    const-string v0, "setNavBarButtonAlpha"

    .line 308
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 313
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$402(Lcom/android/systemui/recents/OverviewProxyService;F)F

    .line 314
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;FZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 317
    throw p0
.end method

.method public setSplitScreenMinimized(Z)V
    .locals 1

    .line 399
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$300(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda13;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startAssistant(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "startAssistant"

    .line 348
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 351
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 353
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 356
    throw p0
.end method

.method public startScreenPinning(I)V
    .locals 4

    const-string v0, "startScreenPinning"

    .line 171
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 176
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    throw p0
.end method

.method public stopScreenPinning()V
    .locals 3

    const-string/jumbo v0, "stopScreenPinning"

    .line 188
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 193
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object p0

    sget-object v2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda10;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 202
    throw p0
.end method
