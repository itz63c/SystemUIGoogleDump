.class Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;
.super Ljava/lang/Object;
.source "NotificationShadeWindowViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setupExpandedStatusBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didIntercept(Landroid/view/MotionEvent;)V
    .locals 1

    .line 323
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    .line 324
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1900(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 326
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public didNotHandleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 349
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 365
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 366
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_3

    const/16 v4, 0x52

    if-eq v3, v4, :cond_2

    const/16 v0, 0x18

    if-eq v3, v0, :cond_1

    const/16 v0, 0x19

    if-eq v3, v0, :cond_1

    goto :goto_1

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 385
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object p0

    const/high16 v0, -0x80000000

    .line 386
    invoke-virtual {p0, p1, v0, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    return v2

    :cond_2
    if-nez v0, :cond_4

    .line 374
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onMenuPressed()Z

    move-result p0

    return p0

    :cond_3
    if-nez v0, :cond_4

    .line 379
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onSpacePressed()Z

    move-result p0

    return p0

    :cond_4
    :goto_1
    return v1

    :cond_5
    if-nez v0, :cond_6

    .line 369
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onBackPressed()Z

    :cond_6
    return v2
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEventComplete()V
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/classifier/FalsingCollector;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/classifier/FalsingCollector;->onMotionEventComplete()V

    return-void
.end method

.method public handleDispatchTouchEvent(Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 8

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 218
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 219
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    .line 221
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result v6

    if-nez v3, :cond_3

    if-eqz v4, :cond_4

    .line 223
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$502(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Z)Z

    :cond_4
    if-nez v4, :cond_5

    .line 230
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldIgnoreTouch()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 231
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    if-eqz v0, :cond_6

    .line 234
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setTouchActive(Z)V

    .line 235
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v5, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$602(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Z)Z

    goto :goto_3

    .line 236
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-eq v7, v2, :cond_7

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-ne v7, v5, :cond_8

    .line 238
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setTouchActive(Z)V

    .line 240
    :cond_8
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result v5

    if-nez v5, :cond_14

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$700(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto/16 :goto_4

    .line 243
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/classifier/FalsingCollector;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/android/systemui/classifier/FalsingCollector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 244
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$900(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Landroid/view/GestureDetector;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 245
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1000(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onTouch(Landroid/view/MotionEvent;)Z

    .line 246
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 247
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_a

    .line 251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v7, 0x5

    if-ne v5, v7, :cond_a

    .line 252
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_a
    if-eqz v0, :cond_b

    .line 256
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V

    .line 258
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 259
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->extendPulse()V

    :cond_c
    if-eqz v0, :cond_d

    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_d

    .line 267
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$502(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Z)Z

    move v6, v2

    :cond_d
    if-eqz v6, :cond_e

    .line 271
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 274
    :cond_e
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result v5

    if-nez v5, :cond_10

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 275
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 278
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v5

    invoke-static {v4, v5, v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1700(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isSameStatusBarState(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1502(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Z)Z

    .line 281
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 283
    :cond_f
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 286
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v3, :cond_11

    if-eqz v4, :cond_12

    .line 289
    :cond_11
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1502(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Z)Z

    .line 291
    :cond_12
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0

    .line 241
    :cond_14
    :goto_4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPulsing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 336
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/DragDownHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/DragDownHelper;->isDragDownEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 337
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/DragDownHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 339
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/DragDownHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_3
    return v0
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPulsing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 305
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/dock/DockManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/dock/DockManager;->isDocked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 310
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 311
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/DragDownHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/DragDownHelper;->isDragDownEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 312
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 313
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/DragDownHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    return v0
.end method
