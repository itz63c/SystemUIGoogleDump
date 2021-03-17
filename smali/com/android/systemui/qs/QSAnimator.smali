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

.field private final mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

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

.field private mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

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

.field private final mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

.field private mShowCollapsedOnKeyguard:Z

.field private mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field private final mUpdateAnimators:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$X3NBs2olMRBkDKYFVdJQOpLFabM(Lcom/android/systemui/qs/QSAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/QSSecurityFooter;Ljava/util/concurrent/Executor;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/statusbar/FeatureFlags;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    .line 461
    new-instance v0, Lcom/android/systemui/qs/QSAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSAnimator$1;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 474
    new-instance v0, Lcom/android/systemui/qs/QSAnimator-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSAnimator-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    .line 99
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 100
    iput-object p2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 101
    iput-object p3, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 102
    iput-object p4, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    .line 103
    iput-object p6, p0, Lcom/android/systemui/qs/QSAnimator;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    .line 104
    iput-object p5, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 105
    iput-object p7, p0, Lcom/android/systemui/qs/QSAnimator;->mExecutor:Ljava/util/concurrent/Executor;

    .line 106
    iput-object p8, p0, Lcom/android/systemui/qs/QSAnimator;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 107
    iput-object p9, p0, Lcom/android/systemui/qs/QSAnimator;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    .line 108
    invoke-virtual {p5, p0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 109
    invoke-virtual {p3, p0}, Lcom/android/systemui/util/ViewController;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 110
    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 111
    invoke-virtual {p3}, Lcom/android/systemui/util/ViewController;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSAnimator;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 114
    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    .line 115
    instance-of p2, p1, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz p2, :cond_1

    .line 116
    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    goto :goto_0

    :cond_1
    const-string p1, "QSAnimator"

    const-string p2, "QS Not using page layout"

    .line 118
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    invoke-virtual {p3, p0}, Lcom/android/systemui/qs/QSPanelController;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSAnimator;)Lcom/android/systemui/qs/QuickQSPanel;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    return-object p0
.end method

.method private clearAnimationState()V
    .locals 6

    .line 434
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 435
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    .line 437
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 438
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 439
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 440
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 444
    iget-object v3, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getRelativePosition([ILandroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 356
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    add-int/2addr v0, v1

    aput v0, p1, v1

    const/4 v0, 0x1

    .line 357
    aput v1, p1, v0

    .line 358
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V
    .locals 4

    if-eq p2, p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    instance-of v0, p2, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/android/systemui/qs/SideLabelTileLayout;

    if-nez v0, :cond_1

    .line 366
    aget v0, p1, v2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v0, v3

    aput v0, p1, v2

    .line 367
    aget v0, p1, v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v0, v3

    aput v0, p1, v1

    .line 369
    :cond_1
    instance-of v0, p2, Lcom/android/systemui/qs/PagedTileLayout;

    if-nez v0, :cond_2

    .line 371
    aget v0, p1, v2

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v0, v3

    aput v0, p1, v2

    .line 372
    aget v0, p1, v1

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v2

    aput v0, p1, v1

    .line 374
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private isIconInAnimatedRow(I)Z
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 351
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v0

    .line 352
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

    .line 475
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 476
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->setCurrentPosition()V

    return-void
.end method

.method private setCurrentPosition()V
    .locals 1

    .line 153
    iget v0, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSAnimator;->setPosition(F)V

    return-void
.end method

.method private updateAnimators()V
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 199
    iput-boolean v1, v0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    .line 200
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 201
    new-instance v3, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 202
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 204
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [I

    new-array v8, v6, [I

    .line 209
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 210
    iget-object v9, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 211
    iget-object v9, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 213
    iget-object v9, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v9}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v9

    .line 214
    iget-object v10, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object v11, v9

    check-cast v11, Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v10, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v10}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v10}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    goto :goto_0

    :cond_0
    move v10, v1

    .line 216
    :goto_0
    iget-object v11, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v11}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v11}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    goto :goto_1

    :cond_1
    move v11, v1

    .line 217
    :goto_1
    iget-object v12, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v12}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    sub-int/2addr v10, v12

    iget-object v12, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 218
    invoke-interface {v12}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    add-int/2addr v10, v12

    new-array v12, v6, [F

    int-to-float v13, v10

    aput v13, v12, v1

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v15, v12, v14

    const-string v15, "translationY"

    .line 219
    invoke-virtual {v2, v9, v15, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 221
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v6, v1

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    const-string v14, "alpha"

    if-eqz v17, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    move-object/from16 v17, v12

    .line 222
    iget-object v12, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v12, v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v12

    if-nez v12, :cond_2

    .line 224
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tileView is null "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v12, "QSAnimator"

    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v21, v5

    move/from16 v22, v10

    move/from16 v20, v13

    goto :goto_3

    .line 227
    :cond_2
    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v20

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v5

    move/from16 v20, v13

    .line 228
    iget-object v13, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v13}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v13

    move/from16 v22, v10

    .line 231
    iget-object v10, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v10}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getNumVisibleTiles()I

    move-result v10

    if-ge v6, v10, :cond_7

    iget-boolean v10, v0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v10, :cond_7

    .line 234
    iget-object v10, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v10, v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_3
    move-object/from16 v12, v17

    move/from16 v13, v20

    move-object/from16 v5, v21

    move/from16 v10, v22

    :goto_4
    const/4 v1, 0x0

    const/4 v14, 0x1

    goto :goto_2

    .line 236
    :cond_3
    move-object v10, v1

    check-cast v10, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    invoke-virtual {v10}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getBgCircle()Landroid/view/View;

    move-result-object v10

    .line 238
    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v23

    move/from16 v24, v11

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v11

    invoke-direct {v0, v7, v11, v13}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 239
    invoke-direct {v0, v8, v5, v13}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    const/4 v5, 0x0

    .line 240
    aget v11, v8, v5

    aget v13, v7, v5

    sub-int/2addr v11, v13

    const/4 v13, 0x1

    .line 241
    aget v18, v8, v13

    aget v19, v7, v13

    sub-int v13, v18, v19

    .line 244
    invoke-interface {v9}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getNumVisibleTiles()I

    move-result v5

    move-object/from16 v25, v7

    const-string v7, "translationX"

    if-ge v6, v5, :cond_4

    move-object/from16 v26, v8

    const/4 v5, 0x2

    new-array v8, v5, [F

    const/16 v16, 0x0

    const/16 v18, 0x0

    aput v16, v8, v18

    int-to-float v5, v11

    const/16 v23, 0x1

    aput v5, v8, v23

    .line 246
    invoke-virtual {v3, v1, v7, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v5, 0x2

    new-array v8, v5, [F

    aput v16, v8, v18

    int-to-float v5, v13

    aput v5, v8, v23

    .line 247
    invoke-virtual {v4, v1, v15, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v5, 0x2

    new-array v8, v5, [F

    neg-int v11, v11

    int-to-float v11, v11

    aput v11, v8, v18

    aput v16, v8, v23

    .line 255
    invoke-virtual {v3, v12, v7, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v7, v5, [F

    neg-int v5, v13

    int-to-float v5, v5

    aput v5, v7, v18

    aput v16, v7, v23

    .line 256
    invoke-virtual {v4, v12, v15, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 258
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/FeatureFlags;->isQSLabelsEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x3

    new-array v5, v5, [F

    .line 259
    fill-array-data v5, :array_0

    invoke-virtual {v2, v10, v14, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 260
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_4
    move-object/from16 v26, v8

    const/4 v5, 0x2

    new-array v8, v5, [F

    .line 264
    fill-array-data v8, :array_1

    invoke-virtual {v2, v1, v14, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v8, v5, [F

    const/4 v5, 0x0

    const/4 v10, 0x0

    aput v5, v8, v10

    int-to-float v5, v13

    const/4 v10, 0x1

    aput v5, v8, v10

    .line 265
    invoke-virtual {v4, v1, v15, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 269
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanelController;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_5

    sub-int v11, v11, v24

    goto :goto_5

    :cond_5
    add-int v11, v11, v24

    :goto_5
    const/4 v5, 0x2

    new-array v8, v5, [F

    const/4 v5, 0x0

    const/4 v10, 0x0

    aput v5, v8, v10

    int-to-float v5, v11

    const/4 v10, 0x1

    aput v5, v8, v10

    .line 270
    invoke-virtual {v3, v1, v7, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 274
    :cond_6
    :goto_6
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getIconWithBackground()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v10, v22

    goto :goto_7

    :cond_7
    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move/from16 v24, v11

    .line 277
    iget-boolean v1, v0, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    if-eqz v1, :cond_8

    invoke-direct {v0, v6}, Lcom/android/systemui/qs/QSAnimator;->isIconInAnimatedRow(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    new-array v7, v1, [F

    move/from16 v10, v22

    neg-int v8, v10

    int-to-float v8, v8

    const/4 v11, 0x0

    aput v8, v7, v11

    const/4 v8, 0x0

    const/4 v11, 0x1

    aput v8, v7, v11

    .line 279
    invoke-virtual {v2, v12, v15, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 281
    iget-object v7, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    move/from16 v10, v22

    const/4 v1, 0x2

    new-array v5, v1, [F

    .line 283
    fill-array-data v5, :array_2

    invoke-virtual {v2, v12, v14, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v5, v1, [F

    neg-int v1, v10

    int-to-float v1, v1

    const/4 v7, 0x0

    aput v1, v5, v7

    const/4 v1, 0x0

    const/4 v7, 0x1

    aput v1, v5, v7

    .line 284
    invoke-virtual {v2, v12, v15, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 286
    :goto_7
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v12, v17

    move/from16 v13, v20

    move-object/from16 v5, v21

    move/from16 v11, v24

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    goto/16 :goto_4

    :cond_9
    move-object/from16 v21, v5

    move/from16 v20, v13

    .line 290
    iget-boolean v1, v0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v1, :cond_f

    .line 292
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanelController;->getBrightnessView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v20, v7, v8

    const/4 v8, 0x0

    const/4 v10, 0x1

    aput v8, v7, v10

    .line 294
    invoke-virtual {v2, v1, v15, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 295
    new-instance v7, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v8, v6, [F

    fill-array-data v8, :array_3

    .line 296
    invoke-virtual {v7, v1, v14, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v6

    .line 297
    invoke-virtual {v6, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v6

    .line 298
    invoke-virtual {v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 299
    iget-object v6, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    .line 301
    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 304
    :goto_8
    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 305
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 307
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const v2, 0x3f5c28f6    # 0.86f

    .line 308
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    const/4 v6, 0x2

    new-array v7, v6, [F

    fill-array-data v7, :array_4

    .line 309
    invoke-virtual {v1, v9, v14, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 310
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 313
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 314
    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v2

    new-array v7, v6, [F

    fill-array-data v7, :array_5

    invoke-virtual {v1, v2, v14, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 315
    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanelController;->getDivider()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 316
    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanelController;->getDivider()Landroid/view/View;

    move-result-object v2

    new-array v7, v6, [F

    fill-array-data v7, :array_6

    invoke-virtual {v1, v2, v14, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 318
    :cond_b
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 319
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanelController;->getDivider()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 321
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanelController;->getDivider()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_c
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->size()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v6, 0x3

    if-gt v1, v6, :cond_d

    move v1, v2

    goto :goto_9

    .line 328
    :cond_d
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v6, 0x6

    if-gt v1, v6, :cond_e

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    .line 331
    :goto_9
    new-instance v6, Lcom/android/systemui/qs/PathInterpolatorBuilder;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v1, v2}, Lcom/android/systemui/qs/PathInterpolatorBuilder;-><init>(FFFF)V

    .line 332
    invoke-virtual {v6}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getXInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 333
    invoke-virtual {v6}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 334
    invoke-virtual {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 335
    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 337
    :cond_f
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_7

    .line 338
    invoke-virtual {v1, v2, v14, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 339
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 340
    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 341
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 342
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const v2, 0x3e0f5c29    # 0.14f

    .line 343
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_8

    .line 344
    invoke-virtual {v1, v9, v14, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
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
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateQQSVisibility()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 158
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSAnimator;->mShowCollapsedOnKeyguard:Z

    if-nez p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 157
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .locals 4

    .line 415
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 418
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

    .line 410
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStarted()V
    .locals 4

    .line 424
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateQQSVisibility()V

    .line 425
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 428
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

    .line 451
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPageChanged(Z)V
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 195
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    return-void
.end method

.method public onQsScrollingChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    return-void
.end method

.method public onRtlChanged()V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method public onTilesChanged()V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "sysui_qs_fancy_anim"

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 176
    invoke-static {p2, v1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-nez p1, :cond_2

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    goto :goto_0

    :cond_0
    const-string v0, "sysui_qs_move_whole_rows"

    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    invoke-static {p2, v1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    goto :goto_0

    :cond_1
    const-string v0, "sysui_qqs_count"

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 183
    invoke-static {p2}, Lcom/android/systemui/qs/QuickQSPanel;->parseNumTiles(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 186
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 163
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string v0, "sysui_qs_fancy_anim"

    const-string v1, "sysui_qs_move_whole_rows"

    const-string v2, "sysui_qqs_count"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 169
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 170
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p1, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public setOnKeyguard(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateQQSVisibility()V

    .line 136
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz p1, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    :cond_0
    return-void
.end method

.method public setPosition(F)V
    .locals 2

    .line 378
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    if-eqz v0, :cond_0

    .line 379
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-nez v0, :cond_1

    return-void

    .line 382
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 383
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mShowCollapsedOnKeyguard:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    move p1, v1

    .line 389
    :cond_3
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    .line 390
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v0, :cond_4

    .line 391
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 393
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 395
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 396
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_5

    .line 397
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_1

    .line 400
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 401
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 403
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v0, :cond_6

    .line 404
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_6
    return-void
.end method

.method setShowCollapsedOnKeyguard(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mShowCollapsedOnKeyguard:Z

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateQQSVisibility()V

    .line 148
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->setCurrentPosition()V

    return-void
.end method
