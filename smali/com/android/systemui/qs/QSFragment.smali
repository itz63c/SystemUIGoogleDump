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

.field private mTranslateWhileExpanding:Z


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

    .line 122
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

    .line 639
    new-instance v0, Lcom/android/systemui/qs/QSFragment$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$2;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 655
    new-instance v0, Lcom/android/systemui/qs/QSFragment$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$3;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    .line 123
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 124
    iput-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

    .line 125
    iput-object p5, p0, Lcom/android/systemui/qs/QSFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 126
    iput-object p6, p0, Lcom/android/systemui/qs/QSFragment;->mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    .line 127
    iput-object p7, p0, Lcom/android/systemui/qs/QSFragment;->mQsMediaHost:Lcom/android/systemui/media/MediaHost;

    .line 128
    iput-object p8, p0, Lcom/android/systemui/qs/QSFragment;->mQqsMediaHost:Lcom/android/systemui/media/MediaHost;

    .line 129
    iput-object p9, p0, Lcom/android/systemui/qs/QSFragment;->mQsComponentFactory:Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/util/LifecycleFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-interface {p5, p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iput-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 132
    iput-object p10, p0, Lcom/android/systemui/qs/QSFragment;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    .line 133
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

    .line 530
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const/4 v0, 0x0

    :goto_0
    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    .line 531
    instance-of v1, p1, Lcom/android/systemui/qs/QSContainerImpl;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 532
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    sub-int/2addr v1, p0

    add-int/2addr v0, v1

    .line 534
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

    .line 540
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eqz v0, :cond_0

    .line 541
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

    .line 334
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

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsBounds()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;IIII)V
    .locals 0

    .line 162
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSAnimator;->onQsScrollingChanged()V

    .line 163
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

    .line 198
    iget p1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    iget p2, p0, Lcom/android/systemui/qs/QSFragment;->mLastHeaderTranslation:F

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSFragment;->setQsExpansion(FF)V

    :cond_1
    return-void
.end method

.method private pinToBottom(FLcom/android/systemui/media/MediaHost;Z)V
    .locals 3

    .line 507
    invoke-virtual {p2}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    .line 508
    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 509
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSFragment;->getTotalBottomMargin(Landroid/view/View;)F

    move-result p0

    sub-float/2addr p1, p0

    .line 510
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    .line 511
    invoke-virtual {p2}, Lcom/android/systemui/media/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    .line 512
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result p2

    sub-float/2addr p0, p2

    sub-float/2addr p1, p0

    if-eqz p3, :cond_0

    .line 517
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    goto :goto_0

    .line 519
    :cond_0
    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 521
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 523
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    return-void
.end method

.method private setEditLocation(Landroid/view/View;)V
    .locals 3

    const v0, 0x1020003

    .line 269
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 271
    aget v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    .line 272
    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    .line 273
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->setEditLocation(II)V

    return-void
.end method

.method private setKeyguardShowing(Z)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 375
    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 377
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setOnKeyguard(Z)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setKeyguardShowing(Z)V

    .line 382
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method private updateMediaPositions()V
    .locals 4

    .line 493
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mTmpLocation:[I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 495
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mTmpLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 497
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 498
    invoke-virtual {v3}, Lcom/android/systemui/qs/NonInterceptingScrollView;->getScrollRange()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 500
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQsMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/systemui/qs/QSFragment;->pinToBottom(FLcom/android/systemui/media/MediaHost;Z)V

    .line 502
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQqsMediaHost:Lcom/android/systemui/media/MediaHost;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/qs/QSFragment;->pinToBottom(FLcom/android/systemui/media/MediaHost;Z)V

    :cond_0
    return-void
.end method

.method private updateQsBounds()V
    .locals 5

    .line 480
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 485
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 486
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    neg-int v2, v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 487
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    .line 486
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateQsState()V
    .locals 8

    .line 309
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

    .line 311
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v4, v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->setExpanded(Z)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/QSDetail;->setExpanded(Z)V

    .line 313
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardShowing()Z

    move-result v0

    .line 314
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
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 318
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

    .line 320
    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    .line 321
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

    .line 320
    :goto_5
    invoke-interface {v4, v5}, Lcom/android/systemui/qs/QSFooter;->setVisibility(I)V

    .line 325
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

    .line 327
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 328
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-nez p0, :cond_c

    if-eqz v3, :cond_c

    goto :goto_7

    :cond_c
    move v2, v6

    .line 327
    :goto_7
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSPanelController;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public animateHeaderSlidingIn(J)V
    .locals 2

    .line 549
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

    .line 550
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    .line 551
    iput-wide p1, p0, Lcom/android/systemui/qs/QSFragment;->mDelay:J

    .line 552
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

    .line 559
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 562
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    .line 563
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 564
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x168

    .line 565
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 566
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSFragment$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFragment$1;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    .line 567
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 579
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public closeDetail()V
    .locals 0

    .line 589
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->closeDetail()V

    return-void
.end method

.method public disable(IIIZ)V
    .locals 1

    .line 294
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 297
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

    .line 300
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-ne p3, v0, :cond_2

    return-void

    .line 301
    :cond_2
    iput-boolean p3, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    .line 302
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p3, p2, p1, p4}, Lcom/android/systemui/qs/QSContainerImpl;->disable(IIZ)V

    .line 303
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p3, p2, p1, p4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->disable(IIZ)V

    .line 304
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {p3, p2, p1, p4}, Lcom/android/systemui/qs/QSFooter;->disable(IIZ)V

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public getDesiredHeight()I
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isClosingDetail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 615
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 616
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v1, v0

    .line 617
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr v1, p0

    return v1

    .line 619
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public getHeader()Landroid/view/View;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    return-object p0
.end method

.method public getQSPanelController()Lcom/android/systemui/qs/QSPanelController;
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    return-object p0
.end method

.method public getQsMinExpansionHeight()I
    .locals 0

    .line 630
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public hideImmediately()V
    .locals 1

    .line 635
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 636
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public isCustomizing()Z
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->isCustomizing()Z

    move-result p0

    return p0
.end method

.method isExpanded()Z
    .locals 0

    .line 232
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    return p0
.end method

.method isListening()Z
    .locals 0

    .line 227
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    return p0
.end method

.method public isShowingDetail()Z
    .locals 1

    .line 357
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

    .line 594
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    .line 595
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

    .line 597
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    .line 598
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizerController;->isCustomizing()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 597
    :goto_1
    invoke-interface {v0, v2}, Lcom/android/systemui/qs/QSFooter;->setVisibility(I)V

    .line 601
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS$HeightListener;->onQsHeightChanged()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 251
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 252
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setEditLocation(Landroid/view/View;)V

    .line 253
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    if-eq v0, v1, :cond_0

    .line 254
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    .line 255
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz p0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSAnimator;->onRtlChanged()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 139
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 140
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$style;->Theme_SystemUI_QuickSettings:I

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 139
    invoke-virtual {p3, p0}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 142
    sget p1, Lcom/android/systemui/R$layout;->qs_panel:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 205
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleFragment;->onDestroy()V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 207
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizerController;->setQs(Lcom/android/systemui/qs/QSFragment;)V

    .line 211
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetailDisplayer;->setQsPanelController(Lcom/android/systemui/qs/QSPanelController;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 216
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 217
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    const-string v1, "expanded"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    const-string v1, "listening"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/QSCustomizerController;->saveInstanceState(Landroid/os/Bundle;)V

    .line 220
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    .line 666
    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 667
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setKeyguardShowing(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsComponentFactory:Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;

    invoke-interface {v0, p0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;->create(Lcom/android/systemui/qs/QSFragment;)Lcom/android/systemui/qs/dagger/QSFragmentComponent;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSPanelController()Lcom/android/systemui/qs/QSPanelController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 149
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQuickQSPanelController()Lcom/android/systemui/qs/QuickQSPanelController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    .line 151
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 152
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 154
    sget v1, Lcom/android/systemui/R$id;->expanded_qs_scroll_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/NonInterceptingScrollView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 155
    new-instance v2, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 159
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    new-instance v2, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 165
    sget v1, Lcom/android/systemui/R$id;->qs_detail:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSDetail;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    .line 166
    sget v1, Lcom/android/systemui/R$id;->header:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 167
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    sget v2, Lcom/android/systemui/R$id;->header_text_container:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSPanelController;->setHeaderContainer(Landroid/view/ViewGroup;)V

    .line 168
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    .line 170
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSDetailDisplayer;->setQsPanelController(Lcom/android/systemui/qs/QSPanelController;)V

    .line 172
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSContainerImplController()Lcom/android/systemui/qs/QSContainerImplController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    .line 173
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 174
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainerImplController;->getView()Lcom/android/systemui/qs/QSContainerImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    .line 176
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSDetail;->setQsPanel(Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickStatusBarHeader;Lcom/android/systemui/qs/QSFooter;)V

    .line 177
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSAnimator()Lcom/android/systemui/qs/QSAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    .line 179
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSCustomizerController()Lcom/android/systemui/qs/customize/QSCustomizerController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 180
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->setQs(Lcom/android/systemui/qs/QSFragment;)V

    if-eqz p2, :cond_0

    const-string v0, "expanded"

    .line 183
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setExpanded(Z)V

    const-string v0, "listening"

    .line 184
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    .line 185
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSFragment;->setEditLocation(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/customize/QSCustomizerController;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 191
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSFragment;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 192
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p2, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 193
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSFragment;->onStateChanged(I)V

    .line 194
    new-instance p2, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public setContainer(Landroid/view/ViewGroup;)V
    .locals 1

    .line 278
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    if-eqz v0, :cond_0

    .line 279
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizerController;->setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V

    :cond_0
    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 584
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSFooter;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    .line 368
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    .line 369
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSPanelController;->setListening(ZZ)V

    .line 370
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setFancyClipping(IIIZ)V
    .locals 1

    .line 263
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/qs/QSContainerImpl;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/QSContainerImpl;->setFancyClipping(IIIZ)V

    :cond_0
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

    .line 403
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImplController;->setListening(Z)V

    .line 404
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0

    .line 625
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setHeightOverride(I)V

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetail;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 395
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    .line 396
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImplController;->setListening(Z)V

    .line 397
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    .line 398
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/qs/QSPanelController;->setListening(ZZ)V

    return-void
.end method

.method public setOverscrolling(Z)V
    .locals 0

    .line 388
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    .line 389
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    return-void
.end method

.method public setQsExpansion(FF)V
    .locals 10

    .line 417
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    cmpl-float v4, p1, v1

    if-lez v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    cmpl-float v5, p2, v1

    if-eqz v5, :cond_2

    .line 419
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mTranslateWhileExpanding:Z

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_4

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v4, v3

    goto :goto_4

    :cond_4
    :goto_3
    move v4, v2

    .line 420
    :goto_4
    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/QSAnimator;->startAlphaAnimation(Z)V

    .line 422
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setExpansion(F)V

    .line 423
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mTranslateWhileExpanding:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    move v0, v4

    goto :goto_5

    :cond_6
    const v0, 0x3dcccccd    # 0.1f

    :goto_5
    sub-float v5, p1, v4

    mul-float/2addr v0, v5

    .line 425
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardShowing()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-nez v5, :cond_7

    move v5, v2

    goto :goto_6

    :cond_7
    move v5, v3

    .line 426
    :goto_6
    iget-boolean v6, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v6, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->headerWillBeAnimating()Z

    move-result v6

    if-nez v6, :cond_9

    .line 427
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v5, :cond_8

    .line 429
    iget-object v7, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v0

    goto :goto_7

    :cond_8
    move v7, p2

    .line 427
    :goto_7
    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 432
    :cond_9
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 433
    iput p2, p0, Lcom/android/systemui/qs/QSFragment;->mLastHeaderTranslation:F

    .line 434
    iget p2, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    cmpl-float p2, p1, p2

    if-nez p2, :cond_a

    iget-boolean p2, p0, Lcom/android/systemui/qs/QSFragment;->mLastKeyguardAndExpanded:Z

    if-ne p2, v5, :cond_a

    iget p2, p0, Lcom/android/systemui/qs/QSFragment;->mLastViewHeight:I

    if-ne p2, v6, :cond_a

    return-void

    .line 438
    :cond_a
    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 439
    iput-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mLastKeyguardAndExpanded:Z

    .line 440
    iput v6, p0, Lcom/android/systemui/qs/QSFragment;->mLastViewHeight:I

    cmpl-float p2, p1, v4

    if-nez p2, :cond_b

    move p2, v2

    goto :goto_8

    :cond_b
    move p2, v3

    :goto_8
    cmpl-float v1, p1, v1

    if-nez v1, :cond_c

    goto :goto_9

    :cond_c
    move v2, v3

    .line 444
    :goto_9
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getBottom()I

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v6

    sub-int/2addr v1, v6

    iget-object v6, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 445
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v6

    add-int/2addr v1, v6

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 449
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1, v5, p1, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setExpansion(ZFF)V

    cmpg-float v1, p1, v4

    if-gez v1, :cond_d

    float-to-double v6, p1

    const-wide v8, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v1, v6, v8

    if-lez v1, :cond_d

    .line 451
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/QSPanelControllerBase;->switchTileLayout(Z)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 452
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 455
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    if-eqz v5, :cond_e

    goto :goto_a

    :cond_e
    move v4, p1

    :goto_a
    invoke-interface {v1, v4}, Lcom/android/systemui/qs/QSFooter;->setExpansion(F)V

    .line 456
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->setRevealExpansion(F)V

    .line 457
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setExpansion(F)V

    .line 458
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setExpansion(F)V

    .line 459
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setTranslationY(F)V

    if-eqz v2, :cond_f

    .line 461
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setScrollY(I)V

    .line 463
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/QSDetail;->setFullyExpanded(Z)V

    if-nez p2, :cond_10

    .line 467
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 468
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 469
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 471
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsBounds()V

    .line 473
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz p2, :cond_11

    .line 474
    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QSAnimator;->setPosition(F)V

    .line 476
    :cond_11
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateMediaPositions()V

    return-void
.end method

.method public setShowCollapsedOnKeyguard(Z)V
    .locals 1

    .line 339
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eq p1, v0, :cond_1

    .line 340
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    .line 341
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setShowCollapsedOnKeyguard(Z)V

    :cond_0
    if-nez p1, :cond_1

    .line 345
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 346
    iget p1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSFragment;->setQsExpansion(FF)V

    :cond_1
    return-void
.end method

.method public setTranslateWhileExpanding(Z)V
    .locals 0

    .line 409
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mTranslateWhileExpanding:Z

    .line 410
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSAnimator;->setTranslateWhileExpanding(Z)V

    return-void
.end method
