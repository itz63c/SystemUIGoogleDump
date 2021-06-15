.class public Lcom/android/systemui/qs/QSAnimator;
.super Ljava/lang/Object;
.source "QSAnimator.java"

# interfaces
.implements Lcom/android/systemui/qs/QSHost$Callback;
.implements Lcom/android/systemui/qs/PagedTileLayout$PageListener;
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;
    }
.end annotation


# instance fields
.field private mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private final mAllViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowFancy:Z

.field private mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFullRows:Z

.field private final mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mLastPosition:F

.field private mNeedsAnimatorUpdate:Z

.field private final mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field private mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNumQuickTiles:I

.field private mOnFirstPage:Z

.field private mOnKeyguard:Z

.field private mOtherTilesExpandAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

.field private mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

.field private mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

.field private mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

.field private final mQs:Lcom/android/systemui/plugins/qs/QS;

.field private final mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

.field private final mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

.field private final mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private final mQuickQsViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mQuickStatusBarHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field private final mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

.field private mShowCollapsedOnKeyguard:Z

.field private mToShowing:Z

.field private mTranslateWhileExpanding:Z

.field private mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field private final mUpdateAnimators:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$X3NBs2olMRBkDKYFVdJQOpLFabM(Lcom/android/systemui/qs/QSAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QuickStatusBarHeader;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/QSSecurityFooter;Ljava/util/concurrent/Executor;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/qs/QSExpansionPathInterpolator;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    .line 559
    new-instance v0, Lcom/android/systemui/qs/QSAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSAnimator$1;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 572
    new-instance v0, Lcom/android/systemui/qs/QSAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    .line 113
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 114
    iput-object p2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 115
    iput-object p4, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 116
    iput-object p5, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    .line 117
    iput-object p3, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickStatusBarHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 118
    iput-object p7, p0, Lcom/android/systemui/qs/QSAnimator;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    .line 119
    iput-object p6, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 120
    iput-object p8, p0, Lcom/android/systemui/qs/QSAnimator;->mExecutor:Ljava/util/concurrent/Executor;

    .line 121
    iput-object p9, p0, Lcom/android/systemui/qs/QSAnimator;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 122
    iput-object p10, p0, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    .line 123
    invoke-virtual {p6, p0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 124
    invoke-virtual {p4, p0}, Lcom/android/systemui/util/ViewController;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 125
    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 126
    invoke-virtual {p4}, Lcom/android/systemui/util/ViewController;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSAnimator;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 129
    :cond_0
    invoke-virtual {p4}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    .line 130
    instance-of p2, p1, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz p2, :cond_1

    .line 131
    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    goto :goto_0

    :cond_1
    const-string p1, "QSAnimator"

    const-string p2, "QS Not using page layout"

    .line 133
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_0
    invoke-virtual {p4, p0}, Lcom/android/systemui/qs/QSPanelController;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSAnimator;)Lcom/android/systemui/qs/QuickQSPanel;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    return-object p0
.end method

.method private clearAnimationState()V
    .locals 6

    .line 521
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 522
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 524
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 525
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 526
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 527
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 528
    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleY(F)V

    .line 529
    instance-of v5, v4, Lcom/android/systemui/qs/SideLabelTileLayout;

    if-eqz v5, :cond_0

    .line 530
    check-cast v4, Lcom/android/systemui/qs/SideLabelTileLayout;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 531
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    if-eqz v0, :cond_2

    .line 535
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->resetViewsHeights()V

    .line 537
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOtherTilesExpandAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    if-eqz v0, :cond_3

    .line 538
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->resetViewsHeights()V

    .line 540
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    .line 542
    iget-object v3, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private getRelativePosition([ILandroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 433
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    add-int/2addr v0, v1

    aput v0, p1, v1

    const/4 v0, 0x1

    .line 434
    aput v1, p1, v0

    .line 435
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V
    .locals 4

    if-eq p2, p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/QSAnimator;->isAPage(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 443
    aget v0, p1, v2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v0, v3

    aput v0, p1, v2

    .line 444
    aget v0, p1, v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v0, v3

    aput v0, p1, v1

    .line 446
    :cond_1
    instance-of v0, p2, Lcom/android/systemui/qs/PagedTileLayout;

    if-nez v0, :cond_2

    .line 448
    aget v0, p1, v2

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v0, v3

    aput v0, p1, v2

    .line 449
    aget v0, p1, v1

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v2

    aput v0, p1, v1

    .line 451
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private isAPage(Landroid/view/View;)Z
    .locals 0

    .line 456
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Lcom/android/systemui/qs/SideLabelTileLayout;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isIconInAnimatedRow(I)Z
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 428
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v0

    .line 429
    iget p0, p0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    add-int/2addr p0, v0

    const/4 v2, 0x1

    sub-int/2addr p0, v2

    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    if-ge p1, p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 573
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 574
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->setCurrentPosition()V

    return-void
.end method

.method private setCurrentPosition()V
    .locals 1

    .line 180
    iget v0, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSAnimator;->setPosition(F)V

    return-void
.end method

.method private translateContent(Landroid/view/View;Landroid/view/View;Landroid/view/View;I[ILcom/android/systemui/qs/TouchAnimator$Builder;)V
    .locals 4

    .line 230
    invoke-direct {p0, p5, p1, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    const/4 v0, 0x1

    .line 231
    aget v1, p5, v0

    .line 232
    invoke-direct {p0, p5, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 233
    aget p3, p5, v0

    sub-int/2addr p3, v1

    sub-int/2addr p3, p4

    const/4 p4, 0x2

    new-array p5, p4, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, p5, v1

    int-to-float v3, p3

    aput v3, p5, v0

    const-string/jumbo v3, "translationY"

    .line 236
    invoke-virtual {p6, p1, v3, p5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array p4, p4, [F

    neg-int p3, p3

    int-to-float p3, p3

    aput p3, p4, v1

    aput v2, p4, v0

    .line 237
    invoke-virtual {p6, p2, v3, p4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 238
    iget-object p3, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateAnimators()V
    .locals 26

    move-object/from16 v7, p0

    const/4 v8, 0x0

    .line 243
    iput-boolean v8, v7, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    .line 244
    new-instance v9, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 245
    new-instance v10, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 247
    iget-object v0, v7, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    const/4 v11, 0x2

    new-array v12, v11, [I

    new-array v13, v11, [I

    .line 252
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 253
    iget-object v1, v7, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 254
    iget-object v1, v7, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v14, 0x0

    .line 255
    iput-object v14, v7, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 256
    iput-object v14, v7, Lcom/android/systemui/qs/QSAnimator;->mOtherTilesExpandAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 258
    iget-object v1, v7, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles()I

    move-result v1

    iput v1, v7, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    .line 260
    iget-object v1, v7, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v15

    .line 261
    iget-object v1, v7, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object v2, v15

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v1, v7, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v7, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v8

    .line 263
    :goto_0
    iget-object v2, v7, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v7, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 264
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 265
    iget-boolean v2, v7, Lcom/android/systemui/qs/QSAnimator;->mTranslateWhileExpanding:Z

    if-nez v2, :cond_1

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    :cond_1
    move v6, v1

    new-array v1, v11, [F

    int-to-float v2, v6

    aput v2, v1, v8

    const/4 v5, 0x1

    const/4 v4, 0x0

    aput v4, v1, v5

    const-string/jumbo v3, "translationY"

    .line 268
    invoke-virtual {v9, v15, v3, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 272
    iget-object v1, v7, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->areThereTiles()Z

    move-result v1

    const-string v2, "alpha"

    if-eqz v1, :cond_8

    .line 273
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v0, v8

    move v1, v0

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Lcom/android/systemui/plugins/qs/QSTile;

    .line 274
    iget-object v4, v7, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v4, v14}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v4

    if-nez v4, :cond_2

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tileView is null "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "QSAnimator"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 279
    :cond_2
    invoke-virtual {v4}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v8

    .line 280
    iget-object v11, v7, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v11}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v11

    .line 283
    iget-object v5, v7, Lcom/android/systemui/qs/QSAnimator;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getNumVisibleTiles()I

    move-result v5

    if-ge v1, v5, :cond_5

    iget-boolean v5, v7, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v5, :cond_5

    .line 286
    iget-object v5, v7, Lcom/android/systemui/qs/QSAnimator;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v5, v14}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v8

    if-nez v8, :cond_3

    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x2

    const/4 v14, 0x0

    goto :goto_1

    .line 289
    :cond_3
    invoke-direct {v7, v12, v8, v11}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 290
    invoke-direct {v7, v13, v4, v11}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    const/4 v5, 0x1

    .line 291
    aget v14, v13, v5

    aget v19, v12, v5

    sub-int v14, v14, v19

    .line 295
    iget-object v5, v7, Lcom/android/systemui/qs/QSAnimator;->mQuickStatusBarHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 296
    invoke-virtual {v5}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getOffsetTranslation()I

    move-result v5

    sub-int v5, v14, v5

    move/from16 v20, v1

    move-object/from16 v21, v2

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v17, v2, v18

    int-to-float v1, v5

    const/16 v19, 0x1

    aput v1, v2, v19

    .line 297
    invoke-virtual {v10, v8, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v1, 0x2

    new-array v2, v1, [F

    neg-int v1, v5

    int-to-float v1, v1

    aput v1, v2, v18

    aput v17, v2, v19

    .line 299
    invoke-virtual {v10, v4, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 302
    iget-object v1, v7, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    if-nez v1, :cond_4

    .line 303
    new-instance v0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 304
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-direct {v0, v7, v1, v2}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;-><init>(Lcom/android/systemui/qs/TouchAnimator$Listener;II)V

    iput-object v0, v7, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 305
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    :cond_4
    move/from16 v22, v0

    .line 308
    iget-object v0, v7, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    invoke-virtual {v0, v8}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->addView(Landroid/view/View;)V

    .line 312
    invoke-virtual {v8}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v1

    .line 313
    invoke-virtual {v4}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v5, v20

    move-object/from16 v20, v15

    move-object/from16 v15, v21

    move-object/from16 v21, v13

    move-object v13, v3

    move-object v3, v11

    move-object/from16 v23, v4

    move/from16 v25, v17

    move-object/from16 v17, v13

    move/from16 v13, v25

    move v4, v14

    move v13, v5

    move-object v5, v12

    move/from16 v24, v6

    move-object v6, v10

    .line 311
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/QSAnimator;->translateContent(Landroid/view/View;Landroid/view/View;Landroid/view/View;I[ILcom/android/systemui/qs/TouchAnimator$Builder;)V

    .line 322
    invoke-virtual {v8}, Lcom/android/systemui/plugins/qs/QSTileView;->getLabelContainer()Landroid/view/View;

    move-result-object v1

    .line 323
    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/plugins/qs/QSTileView;->getLabelContainer()Landroid/view/View;

    move-result-object v2

    .line 321
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/QSAnimator;->translateContent(Landroid/view/View;Landroid/view/View;Landroid/view/View;I[ILcom/android/systemui/qs/TouchAnimator$Builder;)V

    .line 332
    invoke-virtual {v8}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryIcon()Landroid/view/View;

    move-result-object v1

    .line 333
    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryIcon()Landroid/view/View;

    move-result-object v2

    .line 331
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/QSAnimator;->translateContent(Landroid/view/View;Landroid/view/View;Landroid/view/View;I[ILcom/android/systemui/qs/TouchAnimator$Builder;)V

    .line 340
    invoke-virtual {v8}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryLabel()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-virtual {v9, v0, v15, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 342
    iget-object v0, v7, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v0, v7, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v0, v7, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryLabel()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v17

    move-object/from16 v6, v21

    move/from16 v0, v22

    move/from16 v2, v24

    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_5
    move-object/from16 v17, v3

    move/from16 v24, v6

    move-object/from16 v21, v13

    move-object/from16 v20, v15

    move v13, v1

    move-object v15, v2

    move-object v1, v4

    .line 345
    iget-boolean v2, v7, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    if-eqz v2, :cond_6

    invoke-direct {v7, v13}, Lcom/android/systemui/qs/QSAnimator;->isIconInAnimatedRow(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    new-array v3, v2, [F

    move/from16 v2, v24

    neg-int v4, v2

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v3, v5

    move-object/from16 v4, v17

    .line 347
    invoke-virtual {v9, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 349
    iget-object v3, v7, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v21

    goto :goto_3

    :cond_6
    move-object/from16 v4, v17

    move/from16 v2, v24

    const/4 v5, 0x1

    .line 353
    iget-object v3, v7, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 354
    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/SideLabelTileLayout;

    .line 355
    invoke-direct {v7, v12, v3, v11}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    move-object/from16 v6, v21

    .line 356
    invoke-direct {v7, v6, v1, v11}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 357
    aget v8, v6, v5

    aget v11, v12, v5

    invoke-virtual {v3, v13}, Lcom/android/systemui/qs/SideLabelTileLayout;->getPhantomTopPosition(I)I

    move-result v3

    add-int/2addr v11, v3

    sub-int/2addr v8, v11

    const/4 v3, 0x2

    new-array v11, v3, [F

    neg-int v3, v8

    int-to-float v3, v3

    const/4 v8, 0x0

    aput v3, v11, v8

    const/4 v3, 0x0

    aput v3, v11, v5

    .line 358
    invoke-virtual {v10, v1, v4, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 359
    iget-object v3, v7, Lcom/android/systemui/qs/QSAnimator;->mOtherTilesExpandAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    if-nez v3, :cond_7

    .line 360
    new-instance v3, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 362
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v8

    invoke-direct {v3, v7, v0, v8}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;-><init>(Lcom/android/systemui/qs/TouchAnimator$Listener;II)V

    iput-object v3, v7, Lcom/android/systemui/qs/QSAnimator;->mOtherTilesExpandAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 364
    :cond_7
    iget-object v3, v7, Lcom/android/systemui/qs/QSAnimator;->mOtherTilesExpandAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->addView(Landroid/view/View;)V

    .line 365
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 366
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 369
    :goto_3
    iget-object v3, v7, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v13, 0x1

    move-object v3, v4

    move-object v13, v6

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x2

    const/4 v14, 0x0

    move v6, v2

    move-object v2, v15

    move-object/from16 v15, v20

    goto/16 :goto_1

    :cond_8
    move-object v4, v3

    move-object/from16 v20, v15

    move-object v15, v2

    .line 374
    iget-boolean v0, v7, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_b

    .line 376
    iget-object v0, v7, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelController;->getBrightnessView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 379
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    const/4 v8, 0x0

    aput v6, v3, v8

    const/4 v6, 0x0

    aput v6, v3, v5

    .line 378
    invoke-virtual {v9, v0, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 380
    new-instance v3, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    .line 381
    invoke-virtual {v3, v0, v15, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v3

    new-array v4, v2, [F

    fill-array-data v4, :array_2

    const-string v2, "scaleY"

    .line 382
    invoke-virtual {v3, v0, v2, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 383
    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    .line 384
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v7, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    const/4 v2, 0x0

    .line 385
    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 386
    iget-object v2, v7, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    .line 388
    iput-object v0, v7, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 391
    :goto_4
    invoke-virtual {v9, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 394
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_3

    move-object/from16 v4, v20

    .line 395
    invoke-virtual {v0, v4, v15, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 399
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const v3, 0x3f5c28f6    # 0.86f

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 400
    iget-object v3, v7, Lcom/android/systemui/qs/QSAnimator;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v3

    new-array v5, v2, [F

    fill-array-data v5, :array_4

    invoke-virtual {v0, v3, v15, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 401
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/qs/QSAnimator;->mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 402
    iget-object v0, v7, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v2, v7, Lcom/android/systemui/qs/QSAnimator;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v0, v7, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 404
    invoke-virtual {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 405
    iget-object v0, v7, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    if-eqz v0, :cond_a

    .line 406
    iget-object v2, v7, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    .line 407
    invoke-virtual {v2}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 406
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 409
    :cond_a
    iget-object v0, v7, Lcom/android/systemui/qs/QSAnimator;->mOtherTilesExpandAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    if-eqz v0, :cond_c

    .line 410
    iget-object v2, v7, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    .line 411
    invoke-virtual {v2}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 410
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_5

    :cond_b
    move-object/from16 v4, v20

    .line 414
    :cond_c
    :goto_5
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, v7, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v3, 0x2

    new-array v5, v3, [F

    fill-array-data v5, :array_5

    .line 415
    invoke-virtual {v0, v2, v15, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v2, v7, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 416
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 417
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 418
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 419
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const v1, 0x3e0f5c29    # 0.14f

    .line 420
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_6

    .line 421
    invoke-virtual {v0, v4, v15, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateQQSVisibility()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 185
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSAnimator;->mShowCollapsedOnKeyguard:Z

    if-nez p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 184
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .locals 4

    .line 502
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 505
    iget-object v3, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationAtStart()V
    .locals 1

    .line 497
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStarted()V
    .locals 4

    .line 511
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateQQSVisibility()V

    .line 512
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 515
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 549
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPageChanged(Z)V
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 219
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    return-void
.end method

.method public onQsScrollingChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    return-void
.end method

.method public onRtlChanged()V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method public onTilesChanged()V
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "sysui_qs_fancy_anim"

    .line 202
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 203
    invoke-static {p2, v1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-nez p1, :cond_1

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "sysui_qs_move_whole_rows"

    .line 207
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 208
    invoke-static {p2, v1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    .line 210
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 190
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v0, "sysui_qs_fancy_anim"

    const-string/jumbo v1, "sysui_qs_move_whole_rows"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 196
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 197
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p1, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public setOnKeyguard(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateQQSVisibility()V

    .line 151
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz p1, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    :cond_0
    return-void
.end method

.method public setPosition(F)V
    .locals 2

    .line 460
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    if-eqz v0, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-nez v0, :cond_1

    return-void

    .line 464
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 465
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mShowCollapsedOnKeyguard:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    move p1, v1

    .line 471
    :cond_3
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    .line 472
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v0, :cond_5

    .line 473
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 474
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 475
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 476
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 477
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    if-eqz v0, :cond_4

    .line 478
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->setPosition(F)V

    .line 480
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOtherTilesExpandAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    if-eqz v0, :cond_6

    .line 481
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->setPosition(F)V

    goto :goto_1

    .line 484
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 485
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 487
    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v0, :cond_7

    .line 488
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 489
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_7

    .line 490
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_7
    return-void
.end method

.method setShowCollapsedOnKeyguard(Z)V
    .locals 0

    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mShowCollapsedOnKeyguard:Z

    .line 174
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateQQSVisibility()V

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->setCurrentPosition()V

    return-void
.end method

.method public setTranslateWhileExpanding(Z)V
    .locals 0

    .line 581
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslateWhileExpanding:Z

    return-void
.end method

.method startAlphaAnimation(Z)V
    .locals 3

    .line 157
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mToShowing:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 160
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mToShowing:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 162
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p0

    const-wide/16 v1, 0xc8

    invoke-static {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;JI)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p0

    const-wide/16 v1, 0x32

    const/4 p1, 0x0

    invoke-static {p0, v1, v2, v0, p1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;JILjava/lang/Runnable;)V

    :goto_0
    return-void
.end method
