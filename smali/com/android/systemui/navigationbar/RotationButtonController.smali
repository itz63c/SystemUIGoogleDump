.class public Lcom/android/systemui/navigationbar/RotationButtonController;
.super Ljava/lang/Object;
.source "RotationButtonController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/navigationbar/RotationButtonController$RotationButtonEvent;,
        Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;,
        Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;
    }
.end annotation


# instance fields
.field private mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field private mBehavior:I

.field private final mCancelPendingRotationProposal:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mDarkIconColor:I

.field private mHoveringRotationSuggestion:Z

.field private mIconResId:I

.field private mIsNavigationBarShowing:Z

.field private mLastRotationSuggestion:I

.field private mLightIconColor:I

.field private mListenersRegistered:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPendingRotationSuggestion:Z

.field private final mRemoveRotationProposal:Ljava/lang/Runnable;

.field private mRotWatcherListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRotateHideAnimator:Landroid/animation/Animator;

.field private final mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

.field private mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private final mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

.field private mSkipOverrideUserLockPrefsOnce:Z

.field private mTaskStackListener:Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mViewRippler:Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;


# direct methods
.method public static synthetic $r8$lambda$EgQXKIsd5cCh73nIJ2ELKEupB0o(Lcom/android/systemui/navigationbar/RotationButtonController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/RotationButtonController;->onRotateSuggestionHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GxmebPWhsqfX95jJhWPMdJo7Oaw(Lcom/android/systemui/navigationbar/RotationButtonController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->onRotateSuggestionClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HGQg5Xlyaj52-_PmjiqBk59RkKI(Lcom/android/systemui/navigationbar/RotationButtonController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$RKC8vc0YCMmgWzmB_75_A9Sb_NQ(Lcom/android/systemui/navigationbar/RotationButtonController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->lambda$new$0()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IILcom/android/systemui/navigationbar/RotationButton;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Lcom/android/systemui/navigationbar/RotationButton;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 72
    new-instance v0, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;Lcom/android/systemui/navigationbar/RotationButtonController$1;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mViewRippler:Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mListenersRegistered:Z

    const/4 v0, 0x1

    .line 83
    iput v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mBehavior:I

    .line 87
    sget v2, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button_ccw_start_90:I

    iput v2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIconResId:I

    .line 89
    new-instance v2, Lcom/android/systemui/navigationbar/RotationButtonController-$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/RotationButtonController-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    .line 91
    new-instance v2, Lcom/android/systemui/navigationbar/RotationButtonController-$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/RotationButtonController-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    .line 96
    new-instance v2, Lcom/android/systemui/navigationbar/RotationButtonController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/RotationButtonController$1;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    .line 130
    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mContext:Landroid/content/Context;

    .line 131
    iput p2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mLightIconColor:I

    .line 132
    iput p3, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mDarkIconColor:I

    .line 133
    iput-object p4, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    .line 134
    invoke-interface {p4, p0}, Lcom/android/systemui/navigationbar/RotationButton;->setRotationButtonController(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    .line 136
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIsNavigationBarShowing:Z

    .line 137
    const-class p1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 138
    const-class p1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 141
    new-instance p1, Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;Lcom/android/systemui/navigationbar/RotationButtonController$1;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;

    .line 142
    new-instance p1, Lcom/android/systemui/navigationbar/RotationButtonController-$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/RotationButtonController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    invoke-interface {p4, p1}, Lcom/android/systemui/navigationbar/RotationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    new-instance p1, Lcom/android/systemui/navigationbar/RotationButtonController-$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/RotationButtonController-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    invoke-interface {p4, p1}, Lcom/android/systemui/navigationbar/RotationButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 144
    invoke-interface {p4, p5}, Lcom/android/systemui/navigationbar/RotationButton;->setVisibilityChangedCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/navigationbar/RotationButtonController;)Landroid/os/Handler;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/navigationbar/RotationButtonController;)Lcom/android/systemui/statusbar/policy/RotationLockController;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/navigationbar/RotationButtonController;I)Z
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->shouldOverrideUserLockPrefs(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/navigationbar/RotationButtonController;)Ljava/util/function/Consumer;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotWatcherListener:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/navigationbar/RotationButtonController;)Lcom/android/systemui/navigationbar/RotationButton;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    return-object p0
.end method

.method private canShowRotationButton()Z
    .locals 2

    .line 343
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIsNavigationBarShowing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mBehavior:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private computeRotationProposalTimeout()I
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 446
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mHoveringRotationSuggestion:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x3e80

    goto :goto_0

    :cond_0
    const/16 p0, 0x1388

    :goto_0
    const/4 v1, 0x4

    .line 445
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0
.end method

.method static hasDisable2RotateSuggestionFlag(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private incrementNumAcceptedRotationSuggestionsIfNeeded()V
    .locals 3

    .line 458
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "num_rotation_suggestions_accepted"

    const/4 v1, 0x0

    .line 459
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 464
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private isRotateSuggestionIntroduced()Z
    .locals 2

    .line 451
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "num_rotation_suggestions_accepted"

    const/4 v1, 0x0

    .line 452
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isRotationAnimationCCW(II)Z
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    return p0

    :cond_0
    const/4 v1, 0x2

    if-nez p1, :cond_1

    if-ne p2, v1, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x3

    if-nez p1, :cond_2

    if-ne p2, v2, :cond_2

    return v0

    :cond_2
    if-ne p1, v0, :cond_3

    if-nez p2, :cond_3

    return v0

    :cond_3
    if-ne p1, v0, :cond_4

    if-ne p2, v1, :cond_4

    return p0

    :cond_4
    if-ne p1, v0, :cond_5

    if-ne p2, v2, :cond_5

    return v0

    :cond_5
    if-ne p1, v1, :cond_6

    if-nez p2, :cond_6

    return v0

    :cond_6
    if-ne p1, v1, :cond_7

    if-ne p2, v0, :cond_7

    return v0

    :cond_7
    if-ne p1, v1, :cond_8

    if-ne p2, v2, :cond_8

    return p0

    :cond_8
    if-ne p1, v2, :cond_9

    if-nez p2, :cond_9

    return p0

    :cond_9
    if-ne p1, v2, :cond_a

    if-ne p2, v0, :cond_a

    return v0

    :cond_a
    if-ne p1, v2, :cond_b

    if-ne p2, v1, :cond_b

    return v0

    :cond_b
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mPendingRotationSuggestion:Z

    return-void
.end method

.method private onRotateSuggestionClick(Landroid/view/View;)V
    .locals 1

    .line 367
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/navigationbar/RotationButtonController$RotationButtonEvent;->ROTATION_SUGGESTION_ACCEPTED:Lcom/android/systemui/navigationbar/RotationButtonController$RotationButtonEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 368
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->incrementNumAcceptedRotationSuggestionsIfNeeded()V

    .line 369
    iget p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mLastRotationSuggestion:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotationLockedAtAngle(I)V

    return-void
.end method

.method private onRotateSuggestionHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 373
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    .line 374
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mHoveringRotationSuggestion:Z

    .line 376
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->rescheduleRotationTimeout(Z)V

    return p2
.end method

.method private onRotationSuggestionsDisabled()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 382
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    .line 383
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private rescheduleRotationTimeout(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 432
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 434
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {p1}, Lcom/android/systemui/navigationbar/RotationButton;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 438
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 440
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    .line 441
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->computeRotationProposalTimeout()I

    move-result p0

    int-to-long v1, p0

    .line 440
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private shouldOverrideUserLockPrefs(I)Z
    .locals 2

    .line 402
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mSkipOverrideUserLockPrefsOnce:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 403
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mSkipOverrideUserLockPrefsOnce:Z

    return v1

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private showAndLogRotationSuggestion()V
    .locals 1

    const/4 v0, 0x1

    .line 387
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    const/4 v0, 0x0

    .line 388
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->rescheduleRotationTimeout(Z)V

    .line 389
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/navigationbar/RotationButtonController$RotationButtonEvent;->ROTATION_SUGGESTION_SHOWN:Lcom/android/systemui/navigationbar/RotationButtonController$RotationButtonEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method private showPendingRotationButtonIfNeeded()V
    .locals 1

    .line 336
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->canShowRotationButton()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mPendingRotationSuggestion:Z

    if-eqz v0, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->showAndLogRotationSuggestion()V

    :cond_0
    return-void
.end method


# virtual methods
.method addRotationCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotWatcherListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDarkIconColor()I
    .locals 0

    .line 363
    iget p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mDarkIconColor:I

    return p0
.end method

.method public getIconResId()I
    .locals 0

    .line 355
    iget p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIconResId:I

    return p0
.end method

.method public getLightIconColor()I
    .locals 0

    .line 359
    iget p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mLightIconColor:I

    return p0
.end method

.method getRotationButton()Lcom/android/systemui/navigationbar/RotationButton;
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    return-object p0
.end method

.method public isRotationLocked()Z
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result p0

    return p0
.end method

.method onBehaviorChanged(I)V
    .locals 1

    .line 329
    iget v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mBehavior:I

    if-eq v0, p1, :cond_0

    .line 330
    iput p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mBehavior:I

    .line 331
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->showPendingRotationButtonIfNeeded()V

    :cond_0
    return-void
.end method

.method onDisable2FlagChanged(I)V
    .locals 0

    .line 317
    invoke-static {p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->hasDisable2RotateSuggestionFlag(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->onRotationSuggestionsDisabled()V

    :cond_0
    return-void
.end method

.method onNavigationBarWindowVisibilityChange(Z)V
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIsNavigationBarShowing:Z

    if-eq v0, p1, :cond_0

    .line 323
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIsNavigationBarShowing:Z

    .line 324
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->showPendingRotationButtonIfNeeded()V

    :cond_0
    return-void
.end method

.method onRotationProposal(IIZ)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {v0}, Lcom/android/systemui/navigationbar/RotationButton;->acceptRotationProposal()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 278
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void

    :cond_1
    if-ne p1, p2, :cond_2

    .line 284
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void

    .line 290
    :cond_2
    iput p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mLastRotationSuggestion:I

    .line 291
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->isRotationAnimationCCW(II)Z

    move-result p1

    if-eqz p2, :cond_5

    const/4 p3, 0x2

    if-ne p2, p3, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 298
    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button_ccw_start_0:I

    goto :goto_0

    .line 299
    :cond_4
    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button_ccw_start_0:I

    :goto_0
    iput p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIconResId:I

    goto :goto_3

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    .line 294
    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button_ccw_start_90:I

    goto :goto_2

    .line 295
    :cond_6
    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button_cw_start_90:I

    :goto_2
    iput p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIconResId:I

    .line 301
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    iget p2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mLightIconColor:I

    iget p3, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mDarkIconColor:I

    invoke-interface {p1, p2, p3}, Lcom/android/systemui/navigationbar/RotationButton;->updateIcon(II)V

    .line 303
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->canShowRotationButton()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->showAndLogRotationSuggestion()V

    goto :goto_4

    :cond_7
    const/4 p1, 0x1

    .line 309
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mPendingRotationSuggestion:Z

    .line 310
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 311
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    const-wide/16 p2, 0x4e20

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    return-void
.end method

.method registerListeners()V
    .locals 3

    .line 148
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mListenersRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mListenersRegistered:Z

    .line 154
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 160
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_1
    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mListenersRegistered:Z

    const-string v0, "StatusBar/RotationButtonController"

    const-string v1, "RegisterListeners for the display failed"

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method setDarkIntensity(F)V
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {p0, p1}, Lcom/android/systemui/navigationbar/RotationButton;->setDarkIntensity(F)V

    return-void
.end method

.method setRotateSuggestionButtonState(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    return-void
.end method

.method setRotateSuggestionButtonState(ZZ)V
    .locals 5

    if-nez p1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {v0}, Lcom/android/systemui/navigationbar/RotationButton;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {v0}, Lcom/android/systemui/navigationbar/RotationButton;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {v1}, Lcom/android/systemui/navigationbar/RotationButton;->getImageDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 211
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mPendingRotationSuggestion:Z

    .line 212
    iget-object v3, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_6

    .line 217
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 218
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_3
    const/4 p1, 0x0

    .line 220
    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 223
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 226
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->canAnimate()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 227
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->resetAnimation()V

    .line 228
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->startAnimation()V

    .line 231
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->isRotateSuggestionIntroduced()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mViewRippler:Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->start(Landroid/view/View;)V

    .line 234
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {p0}, Lcom/android/systemui/navigationbar/RotationButton;->show()Z

    goto :goto_0

    .line 236
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mViewRippler:Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->stop()V

    if-eqz p2, :cond_8

    .line 240
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 241
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->pause()V

    .line 243
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {p0}, Lcom/android/systemui/navigationbar/RotationButton;->hide()Z

    return-void

    .line 248
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    const/4 p1, 0x1

    new-array p1, p1, [F

    const/4 p2, 0x0

    aput p2, p1, v2

    const-string p2, "alpha"

    .line 250
    invoke-static {v0, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 251
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 252
    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 253
    new-instance p2, Lcom/android/systemui/navigationbar/RotationButtonController$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/navigationbar/RotationButtonController$2;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 260
    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    .line 261
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void
.end method

.method setRotationLockedAtAngle(I)V
    .locals 1

    .line 186
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLockedAtAngle(ZI)V

    return-void
.end method

.method setSkipOverrideUserLockPrefsOnce()V
    .locals 1

    const/4 v0, 0x1

    .line 398
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mSkipOverrideUserLockPrefsOnce:Z

    return-void
.end method

.method unregisterListeners()V
    .locals 2

    .line 167
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mListenersRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mListenersRegistered:Z

    .line 173
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void

    :catch_0
    move-exception p0

    .line 175
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
