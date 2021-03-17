.class public Lcom/android/systemui/qs/QSPanel;
.super Landroid/widget/LinearLayout;
.source "QSPanel.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;,
        Lcom/android/systemui/qs/QSPanel$QSTileLayout;,
        Lcom/android/systemui/qs/QSPanel$Record;,
        Lcom/android/systemui/qs/QSPanel$H;
    }
.end annotation


# instance fields
.field protected mBrightnessView:Landroid/view/View;

.field private mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

.field private mContentMarginEnd:I

.field private mContentMarginStart:I

.field protected final mContext:Landroid/content/Context;

.field private mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

.field protected mDivider:Landroid/view/View;

.field protected mExpanded:Z

.field protected mFooter:Landroid/view/View;

.field private mFooterMarginStartHorizontal:I

.field private mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private final mHandler:Lcom/android/systemui/qs/QSPanel$H;

.field private mHeaderContainer:Landroid/view/ViewGroup;

.field private mHorizontalContentContainer:Landroid/widget/LinearLayout;

.field private mHorizontalLinearLayout:Landroid/widget/LinearLayout;

.field private mHorizontalTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

.field private mLastOrientation:I

.field protected mListening:Z

.field private mMediaTotalBottomMargin:I

.field private mMediaVisibilityChangedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMovableContentStartIndex:I

.field private final mOnConfigurationChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

.field protected mSecurityFooter:Landroid/view/View;

.field private mSideLabels:Z

.field protected mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

.field private mUsingHorizontalLayout:Z

.field protected mUsingMediaPlayer:Z

.field private mVisualMarginEnd:I

.field private mVisualMarginStart:I

.field private mVisualTilePadding:I


# direct methods
.method public static synthetic $r8$lambda$rqaT62ZW3CH_6fk-u18NMFX0iwE(Landroid/content/res/Configuration;Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/QSPanel;->lambda$onConfigurationChanged$0(Landroid/content/res/Configuration;Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    new-instance p2, Lcom/android/systemui/qs/QSPanel$H;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/QSPanel$H;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$1;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    .line 82
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mOnConfigurationChangedListeners:Ljava/util/List;

    const/4 p2, -0x1

    .line 111
    iput p2, p0, Lcom/android/systemui/qs/QSPanel;->mLastOrientation:I

    .line 119
    invoke-static {p1}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    .line 120
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->quick_settings_bottom_margin_media:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/QSPanel;->mMediaTotalBottomMargin:I

    .line 122
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 124
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 126
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mMovableContentStartIndex:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$H;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    return-object p0
.end method

.method private fireScanStateChanged(Z)V
    .locals 0

    .line 611
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz p0, :cond_0

    .line 612
    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSDetail$Callback;->onScanStateChanged(Z)V

    :cond_0
    return-void
.end method

.method private fireShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V
    .locals 0

    .line 599
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz p0, :cond_0

    .line 600
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSDetail$Callback;->onShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    :cond_0
    return-void
.end method

.method private fireToggleStateChanged(Z)V
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz p0, :cond_0

    .line 606
    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSDetail$Callback;->onToggleStateChanged(Z)V

    :cond_0
    return-void
.end method

.method private handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 586
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    if-eqz p2, :cond_1

    .line 587
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    :cond_1
    invoke-direct {p0, v0, p3, p4}, Lcom/android/systemui/qs/QSPanel;->fireShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    return-void
.end method

.method private handleShowDetailTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;Z)V
    .locals 3

    .line 573
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ne v1, p2, :cond_1

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 576
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-nez v0, :cond_2

    return-void

    .line 579
    :cond_2
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0, p2}, Lcom/android/systemui/plugins/qs/QSTile;->setDetailListening(Z)V

    .line 580
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 581
    iget-object v1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTileView;->getDetailY()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v2, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getOffsetTop(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 582
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    return-void
.end method

.method private static synthetic lambda$onConfigurationChanged$0(Landroid/content/res/Configuration;Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V
    .locals 0

    .line 337
    invoke-interface {p1, p0}, Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;->onConfigurationChange(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private reAttachMediaHost(Landroid/view/ViewGroup;Z)V
    .locals 2

    .line 411
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 414
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 415
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eq v1, v0, :cond_7

    if-eqz v1, :cond_2

    .line 418
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 420
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 421
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    .line 422
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    .line 423
    :goto_1
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eqz p2, :cond_4

    const v1, 0x3f99999a    # 1.2f

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 424
    :goto_2
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    if-eqz p2, :cond_5

    .line 428
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->displayMediaMarginsOnMedia()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 429
    :cond_5
    iget p2, p0, Lcom/android/systemui/qs/QSPanel;->mMediaTotalBottomMargin:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p0

    sub-int v0, p2, p0

    :cond_6
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_7
    return-void
.end method

.method private switchAllContentToParent(Landroid/view/ViewGroup;Lcom/android/systemui/qs/QSPanel$QSTileLayout;)V
    .locals 4

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    .line 370
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mMovableContentStartIndex:I

    goto :goto_0

    :cond_0
    move v1, v0

    .line 373
    :goto_0
    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p2, p1, v1}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V

    const/4 p2, 0x1

    add-int/2addr v1, p2

    .line 376
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 378
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 379
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mHeaderContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 381
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const v0, 0x3fcccccd    # 1.6f

    .line 382
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 383
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Landroid/view/View;

    invoke-direct {p0, v0, v3, p2}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V

    goto :goto_1

    :cond_1
    const/4 p2, -0x2

    .line 385
    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 p2, 0x0

    .line 386
    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 387
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Landroid/view/View;

    invoke-direct {p0, p2, p1, v1}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V

    add-int/lit8 v1, v1, 0x1

    .line 390
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Landroid/view/View;

    if-eqz p2, :cond_3

    .line 395
    invoke-direct {p0, p2, p1, v1}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V

    :cond_3
    return-void
.end method

.method private switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V
    .locals 1

    .line 400
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-ne p0, p2, :cond_0

    .line 401
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, p3, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    .line 403
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 405
    :cond_1
    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method private updateDividerMargin()V
    .locals 3

    .line 682
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 683
    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mContentMarginStart:I

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mContentMarginEnd:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/QSPanel;->updateMargins(Landroid/view/View;II)V

    return-void
.end method

.method private updateFooterMargin()V
    .locals 4

    .line 639
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 642
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 643
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mFooterMarginStartHorizontal:I

    .line 644
    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mVisualMarginEnd:I

    sub-int v3, v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    move v3, v1

    .line 646
    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/QSPanel;->updateMargins(Landroid/view/View;II)V

    .line 649
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    if-eqz v0, :cond_1

    .line 650
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/qs/QSPanel;->updateMargins(Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method private updateHorizontalLinearLayoutMargins()V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->displayMediaMarginsOnMedia()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 350
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mMediaTotalBottomMargin:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 351
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private updateMargins(Landroid/view/ViewGroup;)V
    .locals 0

    .line 772
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateTileLayoutMargins()V

    .line 773
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateFooterMargin()V

    .line 774
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateDividerMargin()V

    .line 775
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->updateMediaHostContentMargins(Landroid/view/ViewGroup;)V

    .line 776
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateHorizontalLinearLayoutMargins()V

    .line 777
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updatePadding()V

    return-void
.end method

.method private updatePageIndicator()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v0, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout;->setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    :cond_0
    return-void
.end method

.method private updateTileLayoutMargins()V
    .locals 3

    .line 674
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mVisualMarginEnd:I

    .line 675
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 678
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v1, Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mVisualMarginStart:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/qs/QSPanel;->updateMargins(Landroid/view/View;II)V

    return-void
.end method

.method private updateTileLayoutMargins(II)V
    .locals 0

    .line 664
    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mVisualMarginStart:I

    .line 665
    iput p2, p0, Lcom/android/systemui/qs/QSPanel;->mVisualMarginEnd:I

    .line 666
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateTileLayoutMargins()V

    return-void
.end method

.method private updateViewVisibilityForTuningValue(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x1

    .line 248
    invoke-static {p2, p0}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method addOnConfigurationChangedListener(Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mOnConfigurationChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 2

    .line 497
    new-instance v0, Lcom/android/systemui/qs/QSPanel$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/QSPanel$1;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    .line 536
    iget-object v1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/qs/QSTile;->addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    .line 537
    iput-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->callback:Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .line 538
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget-object v1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/qs/QSTileView;->init(Lcom/android/systemui/plugins/qs/QSTile;)V

    .line 539
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 541
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz p0, :cond_0

    .line 542
    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->addTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    :cond_0
    return-void
.end method

.method closeDetail()V
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method protected closePanelEvent()Lcom/android/systemui/qs/QSEvent;
    .locals 0

    .line 485
    sget-object p0, Lcom/android/systemui/qs/QSEvent;->QS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

    return-object p0
.end method

.method protected createHorizontalTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 0

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->createRegularTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p0

    return-object p0
.end method

.method public createRegularTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 184
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mSideLabels:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/systemui/R$layout;->qs_paged_tile_layout_side_labels:I

    goto :goto_0

    .line 185
    :cond_0
    sget v1, Lcom/android/systemui/R$layout;->qs_paged_tile_layout:I

    :goto_0
    const/4 v2, 0x0

    .line 184
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 187
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    return-object p0
.end method

.method protected displayMediaMarginsOnMedia()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected drawTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    .line 477
    iget-object p0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/plugins/qs/QSTileView;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method getBrightnessView()Landroid/view/View;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    return-object p0
.end method

.method public getDivider()Landroid/view/View;
    .locals 0

    .line 622
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    return-object p0
.end method

.method protected getDumpableTag()Ljava/lang/String;
    .locals 0

    const-string p0, "QSPanel"

    return-object p0
.end method

.method getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 0

    .line 617
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    return-object p0
.end method

.method public getVisualSideMargins()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 670
    new-instance v0, Landroid/util/Pair;

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mVisualMarginStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-eqz v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/qs/QSPanel;->mVisualMarginEnd:I

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;Z)V
    .locals 2

    .line 559
    instance-of v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    if-eqz v0, :cond_0

    .line 560
    check-cast p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 565
    iget v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->x:I

    .line 566
    iget v1, p1, Lcom/android/systemui/qs/QSPanel$Record;->y:I

    goto :goto_0

    :cond_1
    move v1, v0

    .line 568
    :goto_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    :goto_1
    return-void
.end method

.method initialize(Z)V
    .locals 4

    .line 131
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mSideLabels:Z

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->createRegularTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 133
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 135
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-eqz p1, :cond_0

    .line 136
    new-instance p1, Lcom/android/internal/widget/RemeasuringLinearLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/RemeasuringLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 138
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 139
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 141
    new-instance p1, Lcom/android/internal/widget/RemeasuringLinearLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/android/internal/widget/RemeasuringLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 142
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 143
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 144
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->createHorizontalTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 147
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 148
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->qqs_media_spacing:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 149
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 150
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    const/16 v1, 0x10

    .line 151
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 152
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public isExpanded()Z
    .locals 0

    .line 448
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    return p0
.end method

.method public isListening()Z
    .locals 0

    .line 728
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    return p0
.end method

.method protected needsDynamicRowsAndColumns()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 335
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 336
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mOnConfigurationChangedListeners:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/qs/QSPanel-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/QSPanel-$$ExternalSyntheticLambda0;-><init>(Landroid/content/res/Configuration;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 342
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 343
    sget v0, Lcom/android/systemui/R$id;->qs_footer:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Landroid/view/View;

    .line 344
    sget v0, Lcom/android/systemui/R$id;->divider:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v1, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    if-eqz v1, :cond_0

    .line 201
    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getNumPages()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    :cond_0
    const/16 v0, 0x2710

    .line 206
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    rsub-int p2, p2, 0x2710

    const/high16 v1, 0x40000000    # 2.0f

    .line 212
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v1, p2}, Lcom/android/systemui/qs/PagedTileLayout;->setExcessHeight(I)V

    move p2, v0

    .line 215
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 223
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    .line 224
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    .line 226
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    .line 228
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr p1, v2

    .line 229
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 230
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v1

    add-int/2addr p1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onMediaVisibilityChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaVisibilityChangedListener:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    .line 161
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "qs_show_brightness"

    .line 242
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 243
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->updateViewVisibilityForTuningValue(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public openDetails(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 256
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object p1

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    const/4 v0, 0x0

    aput v2, v1, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V

    :cond_0
    return-void
.end method

.method protected openPanelEvent()Lcom/android/systemui/qs/QSEvent;
    .locals 0

    .line 481
    sget-object p0, Lcom/android/systemui/qs/QSEvent;->QS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

    return-object p0
.end method

.method removeOnConfigurationChangedListener(Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mOnConfigurationChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 0

    .line 547
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    return-void
.end method

.method public setBrightnessView(Landroid/view/View;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 173
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mMovableContentStartIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/QSPanel;->mMovableContentStartIndex:I

    :cond_0
    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 176
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    .line 177
    iget p1, p0, Lcom/android/systemui/qs/QSPanel;->mMovableContentStartIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mMovableContentStartIndex:I

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    return-void
.end method

.method public setContentMargins(IILandroid/view/ViewGroup;)V
    .locals 1

    .line 629
    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mContentMarginStart:I

    .line 630
    iput p2, p0, Lcom/android/systemui/qs/QSPanel;->mContentMarginEnd:I

    .line 631
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mVisualTilePadding:I

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->updateTileLayoutMargins(II)V

    .line 633
    invoke-virtual {p0, p3}, Lcom/android/systemui/qs/QSPanel;->updateMediaHostContentMargins(Landroid/view/ViewGroup;)V

    .line 634
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateFooterMargin()V

    .line 635
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateDividerMargin()V

    return-void
.end method

.method protected setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne p1, v0, :cond_0

    return-void

    .line 592
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    .line 593
    instance-of v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-boolean p1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->scanState:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 595
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 434
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 435
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-nez p1, :cond_1

    .line 436
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of p1, p0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz p1, :cond_1

    .line 437
    check-cast p0, Lcom/android/systemui/qs/PagedTileLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method

.method public setFooterPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v0, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_0

    .line 276
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 277
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updatePageIndicator()V

    :cond_0
    return-void
.end method

.method public setHeaderContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHeaderContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    .line 453
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    return-void
.end method

.method public setMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 724
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mMediaVisibilityChangedListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V
    .locals 1

    .line 442
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v0, p0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_0

    .line 443
    check-cast p0, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    :cond_0
    return-void
.end method

.method public setSecurityFooter(Landroid/view/View;)V
    .locals 0

    .line 732
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Landroid/view/View;

    return-void
.end method

.method setUsingHorizontalLayout(ZLandroid/view/ViewGroup;ZLcom/android/internal/logging/UiEventLogger;)V
    .locals 5

    .line 737
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_c

    .line 738
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-eqz p1, :cond_1

    .line 739
    iget-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast p3, Landroid/view/View;

    :goto_0
    if-eqz p1, :cond_2

    .line 740
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Landroid/view/View;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    :goto_1
    if-eqz p1, :cond_3

    .line 741
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    goto :goto_2

    :cond_3
    move-object v1, p0

    :goto_2
    if-eqz p1, :cond_4

    .line 743
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    :goto_3
    if-eqz v0, :cond_6

    .line 744
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-ne v3, v4, :cond_5

    if-eq v0, v3, :cond_6

    :cond_5
    const/16 v3, 0x8

    .line 749
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const/4 v0, 0x0

    .line 751
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 752
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/QSPanel;->switchAllContentToParent(Landroid/view/ViewGroup;Lcom/android/systemui/qs/QSPanel$QSTileLayout;)V

    .line 753
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/qs/QSPanel;->reAttachMediaHost(Landroid/view/ViewGroup;Z)V

    .line 754
    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 755
    iget-boolean p3, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-interface {v2, p3, p4}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    .line 756
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->needsDynamicRowsAndColumns()Z

    move-result p3

    if-eqz p3, :cond_b

    const/4 p3, 0x2

    const/4 p4, 0x1

    if-eqz p1, :cond_7

    move v0, p3

    goto :goto_4

    :cond_7
    move v0, p4

    .line 757
    :goto_4
    invoke-interface {v2, v0}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setMinRows(I)Z

    .line 760
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mSideLabels:Z

    if-eqz v0, :cond_8

    if-eqz p1, :cond_a

    move p3, p4

    goto :goto_6

    :cond_8
    if-eqz p1, :cond_9

    const/4 p1, 0x3

    goto :goto_5

    :cond_9
    const/16 p1, 0x64

    :goto_5
    move p3, p1

    .line 765
    :cond_a
    :goto_6
    invoke-interface {v2, p3}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setMaxColumns(I)Z

    .line 767
    :cond_b
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/QSPanel;->updateMargins(Landroid/view/ViewGroup;)V

    :cond_c
    return-void
.end method

.method protected shouldShowDetail()Z
    .locals 0

    .line 493
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    return p0
.end method

.method protected showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 2

    .line 473
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V
    .locals 5

    const/4 v0, 0x0

    .line 457
    aget v1, p3, v0

    const/4 v2, 0x1

    .line 458
    aget v3, p3, v2

    .line 459
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 461
    new-instance v4, Lcom/android/systemui/qs/QSPanel$Record;

    invoke-direct {v4}, Lcom/android/systemui/qs/QSPanel$Record;-><init>()V

    .line 462
    iput-object p2, v4, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 463
    aget p2, p3, v0

    sub-int p2, v1, p2

    iput p2, v4, Lcom/android/systemui/qs/QSPanel$Record;->x:I

    .line 464
    aget p2, p3, v2

    sub-int p2, v3, p2

    iput p2, v4, Lcom/android/systemui/qs/QSPanel$Record;->y:I

    .line 466
    aput v1, p3, v0

    .line 467
    aput v3, p3, v2

    .line 469
    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method protected updateMargins(Landroid/view/View;II)V
    .locals 0

    .line 708
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p0, :cond_0

    .line 710
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 711
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 712
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected updateMediaHostContentMargins(Landroid/view/ViewGroup;)V
    .locals 2

    .line 690
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-eqz v0, :cond_1

    .line 693
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 694
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mContentMarginEnd:I

    goto :goto_0

    :cond_0
    move v0, v1

    .line 696
    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/qs/QSPanel;->updateMargins(Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method protected updatePadding()V
    .locals 5

    .line 311
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 312
    sget v1, Lcom/android/systemui/R$dimen;->qs_panel_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 313
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-eqz v2, :cond_0

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 319
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v2

    .line 321
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v3

    sget v4, Lcom/android/systemui/R$dimen;->qs_panel_padding_bottom:I

    .line 322
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 319
    invoke-virtual {p0, v2, v1, v3, v0}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    return-void
.end method

.method public updateResources()V
    .locals 4

    .line 296
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_quick_tile_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 297
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_tile_background_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 298
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->qs_footer_horizontal_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mFooterMarginStartHorizontal:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 300
    iput v0, p0, Lcom/android/systemui/qs/QSPanel;->mVisualTilePadding:I

    .line 301
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updatePadding()V

    .line 303
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updatePageIndicator()V

    .line 305
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz p0, :cond_0

    .line 306
    invoke-interface {p0}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->updateResources()Z

    :cond_0
    return-void
.end method
