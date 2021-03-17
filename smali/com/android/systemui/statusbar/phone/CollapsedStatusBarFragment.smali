.class public Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;
.super Landroid/app/Fragment;
.source "CollapsedStatusBarFragment.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field private mCenteredIconArea:Landroid/view/View;

.field private mClockView:Landroid/view/View;

.field private mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

.field private mDisabled1:I

.field private mDisabled2:I

.field private mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mNotificationIconAreaInner:Landroid/view/View;

.field private mOperatorNameFrame:Landroid/view/View;

.field private mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field private mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mSystemIconArea:Landroid/widget/LinearLayout;


# direct methods
.method public static synthetic $r8$lambda$G1vE37sIOP8qcviY3zzXfN9oNE8(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->lambda$animateHiddenState$0(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$1;-><init>(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/CommandQueue;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    return-object p0
.end method

.method private animateHiddenState(Landroid/view/View;IZ)V
    .locals 2

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 p0, 0x0

    if-nez p3, :cond_0

    .line 311
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 312
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 316
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 317
    invoke-virtual {p3, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xa0

    .line 318
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 319
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 320
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p3, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment-$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, p2}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment-$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;I)V

    .line 321
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private animateHide(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x4

    .line 328
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHiddenState(Landroid/view/View;IZ)V

    return-void
.end method

.method private animateShow(Landroid/view/View;Z)V
    .locals 2

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    .line 336
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    .line 338
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 341
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 342
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x140

    .line 343
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 344
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x32

    .line 345
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v0, 0x0

    .line 350
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 353
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 354
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 355
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getKeyguardFadingAwayDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 356
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 357
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getKeyguardFadingAwayDelay()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 358
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method private clockHiddenMode()I
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 277
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0
.end method

.method private initEmergencyCryptkeeperText()V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v1, Lcom/android/systemui/R$id;->emergency_cryptkeeper_text:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasEmergencyCryptKeeperText()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 366
    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 370
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 371
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private initOperatorName()V
    .locals 2

    .line 376
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_showOperatorNameInStatusBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v1, Lcom/android/systemui/R$id;->operator_name:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 378
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOperatorNameFrame:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private static synthetic lambda$animateHiddenState$0(Landroid/view/View;I)V
    .locals 0

    .line 321
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private shouldHideNotificationIcons()Z
    .locals 2

    .line 246
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

    .line 249
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


# virtual methods
.method protected adjustDisableFlags(I)I
    .locals 6

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->headsUpShouldBeVisible()Z

    move-result v0

    const/high16 v1, 0x800000

    if-eqz v0, :cond_0

    or-int/2addr p1, v1

    .line 215
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isLaunchTransitionFadingAway()Z

    move-result v2

    const/high16 v3, 0x100000

    const/high16 v4, 0x20000

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 216
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v2

    if-nez v2, :cond_2

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->shouldHideNotificationIcons()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 218
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    if-nez v0, :cond_2

    :cond_1
    or-int/2addr p1, v4

    or-int/2addr p1, v3

    or-int/2addr p1, v1

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v0, :cond_4

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    if-eqz v1, :cond_4

    .line 227
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasEmergencyCryptKeeperText()Z

    move-result v0

    if-eqz v0, :cond_3

    or-int/2addr p1, v4

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_4

    or-int/2addr p1, v3

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->hasCustomClock()Z

    move-result p0

    if-eqz p0, :cond_5

    const/high16 p0, 0x900000

    or-int/2addr p1, p0

    :cond_5
    return p1
.end method

.method public disable(IIIZ)V
    .locals 3

    .line 172
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->adjustDisableFlags(I)I

    move-result p1

    .line 176
    iget p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled1:I

    xor-int/2addr p2, p1

    .line 178
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled2:I

    xor-int/2addr v0, p3

    .line 180
    iput p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled1:I

    .line 181
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

    .line 187
    :cond_2
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showSystemIconArea(Z)V

    .line 188
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showOperatorName(Z)V

    goto :goto_1

    .line 184
    :cond_3
    :goto_0
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideSystemIconArea(Z)V

    .line 185
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideOperatorName(Z)V

    :cond_4
    :goto_1
    const/high16 p3, 0x20000

    and-int v0, p2, p3

    if-eqz v0, :cond_6

    and-int/2addr p3, p1

    if-eqz p3, :cond_5

    .line 193
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideNotificationIconArea(Z)V

    goto :goto_2

    .line 195
    :cond_5
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showNotificationIconArea(Z)V

    :cond_6
    :goto_2
    const/high16 p3, 0x800000

    and-int/2addr p2, p3

    if-nez p2, :cond_7

    .line 200
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->clockHiddenMode()I

    move-result v0

    if-eq p2, v0, :cond_9

    :cond_7
    and-int/2addr p1, p3

    if-eqz p1, :cond_8

    .line 202
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideClock(Z)V

    goto :goto_3

    .line 204
    :cond_8
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showClock(Z)V

    :cond_9
    :goto_3
    return-void
.end method

.method public hideClock(Z)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->clockHiddenMode()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHiddenState(Landroid/view/View;IZ)V

    return-void
.end method

.method public hideNotificationIconArea(Z)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    return-void
.end method

.method public hideOperatorName(Z)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOperatorNameFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public hideSystemIconArea(Z)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    return-void
.end method

.method public initNotificationIconArea(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v1, Lcom/android/systemui/R$id;->notification_icon_area:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 151
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getNotificationInnerAreaView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    .line 152
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    .line 154
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v1, Lcom/android/systemui/R$id;->centered_icon_area:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 159
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getCenteredNotificationAreaView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 161
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    .line 162
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showNotificationIconArea(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 84
    const-class p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 85
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 86
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 87
    const-class p1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 93
    sget p0, Lcom/android/systemui/R$layout;->status_bar:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 140
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 141
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasEmergencyCryptKeeperText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 2

    .line 389
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled1:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->disable(IIIZ)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 133
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 126
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 120
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string p0, "panel_state"

    .line 121
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 98
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 99
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz p2, :cond_0

    const-string v0, "panel_state"

    .line 100
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p2

    .line 101
    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 104
    :cond_0
    new-instance p2, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    sget v0, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 105
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;-><init>(Landroid/widget/LinearLayout;Lcom/android/systemui/statusbar/CommandQueue;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    const/4 p1, 0x1

    .line 106
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->setShouldLog(Z)V

    .line 107
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 108
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget p2, Lcom/android/systemui/R$id;->system_icon_area:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    .line 109
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget p2, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    const/4 p1, 0x0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showSystemIconArea(Z)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showClock(Z)V

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->initEmergencyCryptkeeperText()V

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->initOperatorName()V

    return-void
.end method

.method public showClock(Z)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    return-void
.end method

.method public showNotificationIconArea(Z)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mCenteredIconArea:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    return-void
.end method

.method public showOperatorName(Z)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOperatorNameFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 301
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public showSystemIconArea(Z)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    return-void
.end method
