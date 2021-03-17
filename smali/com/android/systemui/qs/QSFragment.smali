.class public Lcom/android/systemui/qs/QSFragment;
.super Lcom/android/systemui/util/LifecycleFragment;
.source "QSFragment.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QS;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field private final mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mContainer:Lcom/android/systemui/qs/QSContainerImpl;

.field private mDelay:J

.field private mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

.field private mFooter:Lcom/android/systemui/qs/QSFooter;

.field protected mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field private mHeaderAnimating:Z

.field private final mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

.field private mLastHeaderTranslation:F

.field private mLastKeyguardAndExpanded:Z

.field private mLastQSExpansion:F

.field private mLastViewHeight:I

.field private mLayoutDirection:I

.field private mListening:Z

.field private mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

.field private mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

.field private mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

.field private mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

.field private mQSDetail:Lcom/android/systemui/qs/QSDetail;

.field private mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

.field protected mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

.field private final mQqsMediaHost:Lcom/android/systemui/media/MediaHost;

.field private final mQsBounds:Landroid/graphics/Rect;

.field private final mQsComponentFactory:Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;

.field private final mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

.field private mQsDisabled:Z

.field private mQsExpanded:Z

.field private final mQsMediaHost:Lcom/android/systemui/media/MediaHost;

.field private mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

.field private final mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field private mShowCollapsedOnKeyguard:Z

.field private mStackScrollerOverscrolling:Z

.field private final mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mState:I

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mTmpLocation:[I


# direct methods
.method public static synthetic $r8$lambda$3zvw7bVBDhwh3GV3GSYsq-B3ULI(Lcom/android/systemui/qs/QSFragment;Landroid/view/View;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/qs/QSFragment;->lambda$onViewCreated$1(Landroid/view/View;IIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$SU_vwOjIqGCZqnW_U4x6TV7pczk(Lcom/android/systemui/qs/QSFragment;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/QSFragment;->lambda$onViewCreated$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$lTvt7moPVBPdCeAzjAAkQwspBis(Lcom/android/systemui/qs/QSFragment;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/QSFragment;->lambda$onViewCreated$2(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/qs/QSDetailDisplayer;Lcom/android/systemui/media/MediaHost;Lcom/android/systemui/media/MediaHost;Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;Lcom/android/systemui/statusbar/FeatureFlags;)V
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleFragment;-><init>()V

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    const/high16 v0, -0x40800000    # -1.0f

    .line 83
    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 103
    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mTmpLocation:[I

    .line 609
    new-instance v0, Lcom/android/systemui/qs/QSFragment$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$2;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 625
    new-instance v0, Lcom/android/systemui/qs/QSFragment$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$3;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    .line 118
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 119
    iput-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

    .line 120
    iput-object p5, p0, Lcom/android/systemui/qs/QSFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 121
    iput-object p6, p0, Lcom/android/systemui/qs/QSFragment;->mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    .line 122
    iput-object p7, p0, Lcom/android/systemui/qs/QSFragment;->mQsMediaHost:Lcom/android/systemui/media/MediaHost;

    .line 123
    iput-object p8, p0, Lcom/android/systemui/qs/QSFragment;->mQqsMediaHost:Lcom/android/systemui/media/MediaHost;

    .line 124
    iput-object p9, p0, Lcom/android/systemui/qs/QSFragment;->mQsComponentFactory:Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/util/LifecycleFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-interface {p5, p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iput-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 127
    iput-object p10, p0, Lcom/android/systemui/qs/QSFragment;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    .line 128
    iput-object p4, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/QSFragment;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSFragment;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSFragment;)J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/android/systemui/qs/QSFragment;->mDelay:J

    return-wide v0
.end method

.method private getTotalBottomMargin(Landroid/view/View;)F
    .locals 3

    .line 500
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const/4 v0, 0x0

    :goto_0
    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    .line 501
    instance-of v1, p1, Lcom/android/systemui/qs/QSContainerImpl;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 502
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    sub-int/2addr v1, p0

    add-int/2addr v0, v1

    .line 504
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    int-to-float p0, v0

    return p0
.end method

.method private headerWillBeAnimating()Z
    .locals 2

    .line 510
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eqz v0, :cond_0

    .line 511
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardShowing()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isKeyguardShowing()Z
    .locals 1

    .line 322
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsBounds()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;IIII)V
    .locals 0

    .line 156
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSAnimator;->onQsScrollingChanged()V

    .line 157
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p0, p3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setExpandedScrollAmount(I)V

    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p7, p9

    sub-int/2addr p3, p5

    if-eq p7, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 193
    iget p1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/qs/QSFragment;->setQsExpansion(FF)V

    :cond_1
    return-void
.end method

.method private pinToBottom(FLcom/android/systemui/media/MediaHost;Z)V
    .locals 3

    .line 477
    invoke-virtual {p2}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    .line 478
    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 479
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSFragment;->getTotalBottomMargin(Landroid/view/View;)F

    move-result p0

    sub-float/2addr p1, p0

    .line 480
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    .line 481
    invoke-virtual {p2}, Lcom/android/systemui/media/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    .line 482
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result p2

    sub-float/2addr p0, p2

    sub-float/2addr p1, p0

    if-eqz p3, :cond_0

    .line 487
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    goto :goto_0

    .line 489
    :cond_0
    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 491
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 493
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    return-void
.end method

.method private setEditLocation(Landroid/view/View;)V
    .locals 3

    const v0, 0x1020003

    .line 257
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 259
    aget v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    .line 260
    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    .line 261
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->setEditLocation(II)V

    return-void
.end method

.method private setKeyguardShowing(Z)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 363
    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 365
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setOnKeyguard(Z)V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setKeyguardShowing(Z)V

    .line 370
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method private updateMediaPositions()V
    .locals 4

    .line 463
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mTmpLocation:[I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 465
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mTmpLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 467
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 468
    invoke-virtual {v3}, Lcom/android/systemui/qs/NonInterceptingScrollView;->getScrollRange()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 470
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQsMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/systemui/qs/QSFragment;->pinToBottom(FLcom/android/systemui/media/MediaHost;Z)V

    .line 472
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQqsMediaHost:Lcom/android/systemui/media/MediaHost;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/qs/QSFragment;->pinToBottom(FLcom/android/systemui/media/MediaHost;Z)V

    :cond_0
    return-void
.end method

.method private updateQsBounds()V
    .locals 4

    .line 454
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateQsState()V
    .locals 8

    .line 297
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    .line 299
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v4, v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->setExpanded(Z)V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/QSDetail;->setExpanded(Z)V

    .line 301
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardShowing()Z

    move-result v0

    .line 302
    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    const/4 v6, 0x4

    if-nez v5, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v2

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 306
    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    if-eqz v0, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eqz v5, :cond_5

    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v5, :cond_6

    :cond_5
    move v5, v1

    goto :goto_4

    :cond_6
    move v5, v2

    :goto_4
    iget-object v7, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v4, v5, v7}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setExpanded(ZLcom/android/systemui/qs/QuickQSPanelController;)V

    .line 308
    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    .line 309
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-nez v5, :cond_8

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v5, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eqz v5, :cond_8

    :cond_7
    move v5, v2

    goto :goto_5

    :cond_8
    move v5, v6

    .line 308
    :goto_5
    invoke-interface {v4, v5}, Lcom/android/systemui/qs/QSFooter;->setVisibility(I)V

    .line 313
    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eqz v0, :cond_b

    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    move v1, v2

    :cond_b
    :goto_6
    invoke-interface {v4, v1}, Lcom/android/systemui/qs/QSFooter;->setExpanded(Z)V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 316
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-nez p0, :cond_c

    if-eqz v3, :cond_c

    goto :goto_7

    :cond_c
    move v2, v6

    .line 315
    :goto_7
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSPanelController;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public animateHeaderSlidingIn(J)V
    .locals 2

    .line 519
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 520
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    .line 521
    iput-wide p1, p0, Lcom/android/systemui/qs/QSFragment;->mDelay:J

    .line 522
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public animateHeaderSlidingOut()V
    .locals 3

    .line 529
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 532
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    .line 533
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 534
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x168

    .line 535
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 536
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSFragment$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFragment$1;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    .line 537
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 549
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public closeDetail()V
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->closeDetail()V

    return-void
.end method

.method public disable(IIIZ)V
    .locals 1

    .line 282
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->adjustDisableFlags(I)I

    move-result p1

    and-int/lit8 p3, p1, 0x1

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 288
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-ne p3, v0, :cond_2

    return-void

    .line 289
    :cond_2
    iput-boolean p3, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    .line 290
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p3, p2, p1, p4}, Lcom/android/systemui/qs/QSContainerImpl;->disable(IIZ)V

    .line 291
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p3, p2, p1, p4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->disable(IIZ)V

    .line 292
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {p3, p2, p1, p4}, Lcom/android/systemui/qs/QSFooter;->disable(IIZ)V

    .line 293
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public getDesiredHeight()I
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isClosingDetail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 585
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 586
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v1, v0

    .line 587
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr v1, p0

    return v1

    .line 589
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public getHeader()Landroid/view/View;
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    return-object p0
.end method

.method public getQSPanelController()Lcom/android/systemui/qs/QSPanelController;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    return-object p0
.end method

.method public getQsMinExpansionHeight()I
    .locals 0

    .line 600
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public hideImmediately()V
    .locals 1

    .line 605
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 606
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public isCustomizing()Z
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->isCustomizing()Z

    move-result p0

    return p0
.end method

.method isExpanded()Z
    .locals 0

    .line 227
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    return p0
.end method

.method isListening()Z
    .locals 0

    .line 222
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    return p0
.end method

.method public isShowingDetail()Z
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->isCustomizing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->isShowingDetail()Z

    move-result p0

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

.method public notifyCustomizeChanged()V
    .locals 4

    .line 564
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    .line 565
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizerController;->isCustomizing()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    .line 568
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizerController;->isCustomizing()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 567
    :goto_1
    invoke-interface {v0, v2}, Lcom/android/systemui/qs/QSFooter;->setVisibility(I)V

    .line 571
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS$HeightListener;->onQsHeightChanged()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 246
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 247
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setEditLocation(Landroid/view/View;)V

    .line 248
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    if-eq v0, v1, :cond_0

    .line 249
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    .line 250
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz p0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSAnimator;->onRtlChanged()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 134
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 135
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$style;->qs_theme:I

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 134
    invoke-virtual {p3, p0}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 136
    sget p1, Lcom/android/systemui/R$layout;->qs_panel:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 200
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleFragment;->onDestroy()V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 202
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizerController;->setQs(Lcom/android/systemui/qs/QSFragment;)V

    .line 206
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetailDisplayer;->setQsPanelController(Lcom/android/systemui/qs/QSPanelController;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 211
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 212
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    const-string v1, "expanded"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 213
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    const-string v1, "listening"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/QSCustomizerController;->saveInstanceState(Landroid/os/Bundle;)V

    .line 215
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    .line 636
    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 637
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setKeyguardShowing(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 141
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsComponentFactory:Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;

    invoke-interface {v0, p0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;->create(Lcom/android/systemui/qs/QSFragment;)Lcom/android/systemui/qs/dagger/QSFragmentComponent;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSPanelController()Lcom/android/systemui/qs/QSPanelController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 143
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQuickQSPanelController()Lcom/android/systemui/qs/QuickQSPanelController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    .line 145
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 146
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 148
    sget v1, Lcom/android/systemui/R$id;->expanded_qs_scroll_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/NonInterceptingScrollView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 149
    new-instance v2, Lcom/android/systemui/qs/QSFragment-$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSFragment-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 153
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    new-instance v2, Lcom/android/systemui/qs/QSFragment-$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSFragment-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 159
    sget v1, Lcom/android/systemui/R$id;->qs_detail:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSDetail;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    .line 160
    sget v1, Lcom/android/systemui/R$id;->header:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 161
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    sget v2, Lcom/android/systemui/R$id;->header_text_container:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSPanelController;->setHeaderContainer(Landroid/view/ViewGroup;)V

    .line 162
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    .line 164
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSDetailDisplayer;->setQsPanelController(Lcom/android/systemui/qs/QSPanelController;)V

    .line 166
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSContainerImplController()Lcom/android/systemui/qs/QSContainerImplController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    .line 167
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 168
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainerImplController;->getView()Lcom/android/systemui/qs/QSContainerImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    .line 169
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/FeatureFlags;->isShadeOpaque()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSContainerImpl;->setBackgroundVisible(Z)V

    .line 171
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSDetail;->setQsPanel(Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickStatusBarHeader;Lcom/android/systemui/qs/QSFooter;)V

    .line 172
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSAnimator()Lcom/android/systemui/qs/QSAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    .line 174
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSCustomizerController()Lcom/android/systemui/qs/customize/QSCustomizerController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 175
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->setQs(Lcom/android/systemui/qs/QSFragment;)V

    if-eqz p2, :cond_0

    const-string v0, "expanded"

    .line 178
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setExpanded(Z)V

    const-string v0, "listening"

    .line 179
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    .line 180
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSFragment;->setEditLocation(Landroid/view/View;)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/customize/QSCustomizerController;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 182
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 186
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSFragment;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 187
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p2, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 188
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSFragment;->onStateChanged(I)V

    .line 189
    new-instance p2, Lcom/android/systemui/qs/QSFragment-$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/QSFragment-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public setContainer(Landroid/view/ViewGroup;)V
    .locals 1

    .line 266
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    if-eqz v0, :cond_0

    .line 267
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizerController;->setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V

    :cond_0
    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 554
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSFooter;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    .line 356
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    .line 357
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSPanelController;->setListening(ZZ)V

    .line 358
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setHasNotifications(Z)V
    .locals 0

    return-void
.end method

.method public setHeaderClickable(Z)V
    .locals 0

    return-void
.end method

.method public setHeaderListening(Z)V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImplController;->setListening(Z)V

    .line 392
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0

    .line 595
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setHeightOverride(I)V

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetail;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 383
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    .line 384
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImplController;->setListening(Z)V

    .line 385
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    .line 386
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/qs/QSPanelController;->setListening(ZZ)V

    return-void
.end method

.method public setOverscrolling(Z)V
    .locals 0

    .line 376
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    return-void
.end method

.method public setQsExpansion(FF)V
    .locals 9

    .line 398
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setExpansion(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, p1, v0

    .line 400
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardShowing()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 401
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->headerWillBeAnimating()Z

    move-result v5

    if-nez v5, :cond_2

    .line 402
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v2, :cond_1

    .line 404
    iget-object v6, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    goto :goto_1

    :cond_1
    move v6, p2

    .line 402
    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 407
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 408
    iput p2, p0, Lcom/android/systemui/qs/QSFragment;->mLastHeaderTranslation:F

    .line 409
    iget p2, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    cmpl-float p2, p1, p2

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/android/systemui/qs/QSFragment;->mLastKeyguardAndExpanded:Z

    if-ne p2, v2, :cond_3

    iget p2, p0, Lcom/android/systemui/qs/QSFragment;->mLastViewHeight:I

    if-ne p2, v5, :cond_3

    return-void

    .line 413
    :cond_3
    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 414
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mLastKeyguardAndExpanded:Z

    .line 415
    iput v5, p0, Lcom/android/systemui/qs/QSFragment;->mLastViewHeight:I

    cmpl-float p2, p1, v0

    if-nez p2, :cond_4

    move p2, v3

    goto :goto_2

    :cond_4
    move p2, v4

    :goto_2
    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    .line 419
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getBottom()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 420
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v1, v5

    .line 424
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v5, v2, p1, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setExpansion(ZFF)V

    cmpg-float v5, p1, v0

    if-gez v5, :cond_6

    float-to-double v5, p1

    const-wide v7, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v5, v5, v7

    if-lez v5, :cond_6

    .line 426
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/QSPanelControllerBase;->switchTileLayout(Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 427
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 430
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    move v0, p1

    :goto_4
    invoke-interface {v5, v0}, Lcom/android/systemui/qs/QSFooter;->setExpansion(F)V

    .line 431
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->setRevealExpansion(F)V

    .line 432
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setExpansion(F)V

    .line 433
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setTranslationY(F)V

    if-eqz v3, :cond_8

    .line 435
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setScrollY(I)V

    .line 437
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/QSDetail;->setFullyExpanded(Z)V

    if-nez p2, :cond_9

    .line 441
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 442
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 443
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 445
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsBounds()V

    .line 447
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz p2, :cond_a

    .line 448
    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QSAnimator;->setPosition(F)V

    .line 450
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateMediaPositions()V

    return-void
.end method

.method public setShowCollapsedOnKeyguard(Z)V
    .locals 1

    .line 327
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eq p1, v0, :cond_1

    .line 328
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    .line 329
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    .line 330
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setShowCollapsedOnKeyguard(Z)V

    :cond_0
    if-nez p1, :cond_1

    .line 333
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 334
    iget p1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSFragment;->setQsExpansion(FF)V

    :cond_1
    return-void
.end method
