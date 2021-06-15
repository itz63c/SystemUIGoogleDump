.class public Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;
.super Landroid/app/Fragment;
.source "CollapsedStatusBarFragment.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;


# instance fields
.field private final mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

.field private mBlockedIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCenteredIconArea:Landroid/view/View;

.field private mClockView:Landroid/view/View;

.field private mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

.field private mDisabled1:I

.field private mDisabled2:I

.field private mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mLocationPublisher:Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private mNotificationIconAreaInner:Landroid/view/View;

.field private mOngoingCallChip:Landroid/view/ViewGroup;

.field private mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

.field private final mOngoingCallListener:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;

.field private mOperatorNameFrame:Landroid/view/View;

.field private mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field private mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field private mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mSystemIconArea:Landroid/widget/LinearLayout;


# direct methods
.method public static synthetic $r8$lambda$ESiQAK7Q_1ZFcBgoGlRsaYbLAaQ(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->lambda$new$1(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$G1vE37sIOP8qcviY3zzXfN9oNE8(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->lambda$animateHiddenState$0(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mBlockedIcons:Ljava/util/List;

    .line 100
    new-instance v0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$1;-><init>(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 107
    new-instance v0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$2;-><init>(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOngoingCallListener:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;

    .line 545
    new-instance v0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    .line 122
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    .line 123
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mLocationPublisher:Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;

    .line 124
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/CommandQueue;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled1:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled2:I

    return p0
.end method

.method private animateHiddenState(Landroid/view/View;IZ)V
    .locals 2

    .line 416
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 p0, 0x0

    if-nez p3, :cond_0

    .line 418
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 419
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 423
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 424
    invoke-virtual {p3, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xa0

    .line 425
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 426
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p3, Lcom/android/systemui/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 427
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p3, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1, p2}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;I)V

    .line 428
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private animateHide(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x4

    .line 435
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHiddenState(Landroid/view/View;IZ)V

    return-void
.end method

.method private animateShow(Landroid/view/View;Z)V
    .locals 2

    .line 442
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    .line 443
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    .line 445
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 448
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 449
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x140

    .line 450
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 451
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x32

    .line 452
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v0, 0x0

    .line 457
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 460
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 461
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 462
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getKeyguardFadingAwayDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 463
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 464
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getKeyguardFadingAwayDelay()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 465
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method private clockHiddenMode()I
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 384
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0
.end method

.method private hideClock(Z)V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->clockHiddenMode()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHiddenState(Landroid/view/View;IZ)V

    return-void
.end method

.method private hideSystemIconArea(Z)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    return-void
.end method

.method private initEmergencyCryptkeeperText()V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v1, Lcom/android/systemui/R$id;->emergency_cryptkeeper_text:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 471
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasEmergencyCryptKeeperText()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 473
    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 477
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 478
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private initOngoingCallChip()V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOngoingCallListener:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->addCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V

    .line 491
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOngoingCallChip:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->setChipView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private initOperatorName()V
    .locals 2

    .line 483
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_showOperatorNameInStatusBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v1, Lcom/android/systemui/R$id;->operator_name:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 485
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOperatorNameFrame:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private isSystemIconAreaDisabled()Z
    .locals 2

    .line 534
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled1:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled2:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$animateHiddenState$0(Landroid/view/View;I)V
    .locals 0

    .line 428
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-eq p4, p8, :cond_1

    .line 548
    :cond_0
    invoke-direct {p0, p2, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->updateStatusBarLocation(II)V

    :cond_1
    return-void
.end method

.method private shouldHideNotificationIcons()Z
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->isClosed()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideStatusBarIconsWhenExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 342
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideStatusBarIconsForBouncer()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private showClock(Z)V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    return-void
.end method

.method private showSystemIconArea(Z)V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->getAnimationState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method private updateNotificationIconAreaAndCallChip(IZ)V
    .locals 4

    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/high16 v3, 0x4000000

    and-int/2addr p1, v3

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    .line 323
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showNotificationIconArea(Z)V

    goto :goto_3

    .line 321
    :cond_3
    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideNotificationIconArea(Z)V

    :goto_3
    if-eqz p1, :cond_4

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    if-eqz v1, :cond_5

    .line 331
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showOngoingCallChip(Z)V

    goto :goto_5

    .line 333
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideOngoingCallChip(Z)V

    .line 335
    :goto_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->notifyChipVisibilityChanged(Z)V

    return-void
.end method

.method private updateStatusBarLocation(II)V
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    sub-int/2addr p1, v0

    .line 539
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    sub-int/2addr v0, p2

    .line 541
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mLocationPublisher:Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;->updateStatusBarMargin(II)V

    return-void
.end method


# virtual methods
.method protected adjustDisableFlags(I)I
    .locals 6

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->headsUpShouldBeVisible()Z

    move-result v0

    const/high16 v1, 0x800000

    if-eqz v0, :cond_0

    or-int/2addr p1, v1

    .line 275
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isLaunchTransitionFadingAway()Z

    move-result v2

    const/high16 v3, 0x100000

    const/high16 v4, 0x20000

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 276
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v2

    if-nez v2, :cond_2

    .line 277
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->shouldHideNotificationIcons()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 278
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    if-nez v0, :cond_2

    :cond_1
    or-int/2addr p1, v4

    or-int/2addr p1, v3

    or-int/2addr p1, v1

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v0, :cond_4

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    if-eqz v1, :cond_4

    .line 287
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasEmergencyCryptKeeperText()Z

    move-result v0

    if-eqz v0, :cond_3

    or-int/2addr p1, v4

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_4

    or-int/2addr p1, v3

    .line 297
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 298
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->hasCustomClock()Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v0, 0x900000

    or-int/2addr p1, v0

    .line 302
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->hasOngoingCall()Z

    move-result p0

    if-eqz p0, :cond_6

    const p0, -0x4000001

    and-int/2addr p0, p1

    goto :goto_0

    :cond_6
    const/high16 p0, 0x4000000

    or-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public disable(IIIZ)V
    .locals 3

    .line 230
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, "CollapsedStatusBarFragment"

    const-string v0, "disable: "

    .line 233
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->adjustDisableFlags(I)I

    move-result p1

    .line 235
    iget p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled1:I

    xor-int/2addr p2, p1

    .line 237
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled2:I

    xor-int/2addr v0, p3

    .line 239
    iput p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled1:I

    .line 240
    iput p3, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled2:I

    const/high16 v1, 0x100000

    and-int v2, p2, v1

    if-nez v2, :cond_1

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    :cond_1
    and-int v0, p1, v1

    if-nez v0, :cond_3

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_2

    goto :goto_0

    .line 246
    :cond_2
    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showSystemIconArea(Z)V

    .line 247
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showOperatorName(Z)V

    goto :goto_1

    .line 243
    :cond_3
    :goto_0
    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideSystemIconArea(Z)V

    .line 244
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideOperatorName(Z)V

    :cond_4
    :goto_1
    const/high16 p3, 0x4000000

    and-int/2addr p3, p2

    if-nez p3, :cond_5

    const/high16 p3, 0x20000

    and-int/2addr p3, p2

    if-eqz p3, :cond_6

    .line 255
    :cond_5
    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->updateNotificationIconAreaAndCallChip(IZ)V

    :cond_6
    const/high16 p3, 0x800000

    and-int/2addr p2, p3

    if-nez p2, :cond_7

    .line 260
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->clockHiddenMode()I

    move-result v0

    if-eq p2, v0, :cond_9

    :cond_7
    and-int/2addr p1, p3

    if-eqz p1, :cond_8

    .line 262
    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideClock(Z)V

    goto :goto_2

    .line 264
    :cond_8
    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showClock(Z)V

    :cond_9
    :goto_2
    return-void
.end method

.method public hideNotificationIconArea(Z)V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    return-void
.end method

.method public hideOngoingCallChip(Z)V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOngoingCallChip:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHiddenState(Landroid/view/View;IZ)V

    return-void
.end method

.method public hideOperatorName(Z)V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOperatorNameFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 402
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public initNotificationIconArea()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v1, Lcom/android/systemui/R$id;->notification_icon_area:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 209
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getNotificationInnerAreaView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    .line 210
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    .line 212
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v1, Lcom/android/systemui/R$id;->centered_icon_area:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 217
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getCenteredNotificationAreaView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    .line 218
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    .line 220
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 225
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled1:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->updateNotificationIconAreaAndCallChip(IZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 131
    const-class p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 132
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 133
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 134
    const-class p1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 140
    sget p0, Lcom/android/systemui/R$layout;->status_bar:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 198
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 199
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasEmergencyCryptKeeperText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 3

    .line 499
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled1:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled2:I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->disable(IIIZ)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 190
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOngoingCallListener:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->removeCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 182
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 185
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->initOngoingCallChip()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 174
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 175
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 176
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string p0, "panel_state"

    .line 177
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onSystemChromeAnimationEnd()V
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->getAnimationState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 516
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    .line 518
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->isSystemIconAreaDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 524
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onSystemChromeAnimationStart()V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->getAnimationState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 505
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->isSystemIconAreaDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 507
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onSystemChromeAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 530
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 145
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 146
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 147
    sget v1, Lcom/android/systemui/R$id;->status_bar_contents:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 149
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->updateStatusBarLocation(II)V

    if-eqz p2, :cond_0

    const-string v0, "panel_state"

    .line 150
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 152
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p2

    .line 151
    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 154
    :cond_0
    new-instance p2, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    sget v0, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;-><init>(Landroid/widget/LinearLayout;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    const/4 p1, 0x1

    .line 155
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->setShouldLog(Z)V

    .line 156
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mBlockedIcons:Ljava/util/List;

    const p2, 0x104082a

    invoke-virtual {p0, p2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mBlockedIcons:Ljava/util/List;

    const p2, 0x104080b

    invoke-virtual {p0, p2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mBlockedIcons:Ljava/util/List;

    const p2, 0x104080e

    invoke-virtual {p0, p2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mBlockedIcons:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->setBlockList(Ljava/util/List;)V

    .line 160
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 161
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget p2, Lcom/android/systemui/R$id;->system_icon_area:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    .line 162
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget p2, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    .line 163
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget p2, Lcom/android/systemui/R$id;->ongoing_call_chip:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOngoingCallChip:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    .line 164
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showSystemIconArea(Z)V

    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showClock(Z)V

    .line 166
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->initEmergencyCryptkeeperText()V

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->initOperatorName()V

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->initNotificationIconArea()V

    .line 169
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->addCallback(Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;)V

    return-void
.end method

.method public showNotificationIconArea(Z)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    return-void
.end method

.method public showOngoingCallChip(Z)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOngoingCallChip:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    return-void
.end method

.method public showOperatorName(Z)V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOperatorNameFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 408
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
