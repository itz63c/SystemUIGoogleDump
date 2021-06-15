.class public Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;
.super Ljava/lang/Object;
.source "StackScrollAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;,
        Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    }
.end annotation


# instance fields
.field private mClipNotificationScrollToTop:Z

.field private mCollapsedSize:I

.field private mGapHeight:I

.field private mHeadsUpInset:F

.field private final mHostView:Landroid/view/ViewGroup;

.field private mIsExpanded:Z

.field private mNotificationScrimPadding:F

.field private mPaddingBetweenElements:I

.field private mPinnedZTranslationExtra:I

.field private mStatusBarHeight:I

.field private mTempAlgorithmState:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;-><init>(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 66
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private childNeedsGapHeight(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;ILandroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 508
    invoke-interface {p1, p3, p4}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;->beginsSection(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-lez p2, :cond_0

    instance-of p0, p4, Lcom/android/systemui/statusbar/notification/dagger/SilentHeader;

    if-nez p0, :cond_0

    instance-of p0, p3, Lcom/android/systemui/statusbar/notification/row/FooterView;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private clampHunToMaxTranslation(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V
    .locals 2

    .line 618
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getMaxHeadsUpTranslation()F

    move-result p0

    .line 619
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v1

    add-float/2addr v0, v1

    .line 620
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result p1

    add-float/2addr v0, p1

    .line 621
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 622
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float p1, p0, p1

    .line 623
    iget p2, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 624
    iget p2, p3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float p2, p2

    sub-float/2addr p0, p1

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    float-to-int p0, p0

    iput p0, p3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 626
    iput p1, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    return-void
.end method

.method private clampHunToTop(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V
    .locals 1

    .line 608
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result p0

    .line 609
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result p1

    add-float/2addr p0, p1

    iget p1, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 608
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 610
    iget p1, p3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float p1, p1

    iget v0, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    sub-float v0, p0, v0

    sub-float/2addr p1, v0

    .line 611
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result p2

    int-to-float p2, p2

    .line 610
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 612
    iput p0, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    return-void
.end method

.method private getExpansionFractionWithoutShelf(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)F
    .locals 2

    .line 351
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 354
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    goto :goto_1

    :cond_1
    move p1, v0

    .line 355
    :goto_1
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mNotificationScrimPadding:F

    .line 357
    :goto_2
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackHeight()F

    move-result p0

    sub-float/2addr p0, p1

    sub-float/2addr p0, v0

    .line 358
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackEndHeight()F

    move-result p2

    sub-float/2addr p2, p1

    sub-float/2addr p2, v0

    div-float/2addr p0, p2

    return p0
.end method

.method private getNotificationChildrenStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 3

    .line 122
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 124
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 125
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    .line 126
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 127
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateChildrenStates(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getPreviousView(ILcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 0

    if-lez p1, :cond_0

    .line 313
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private initAlgorithmState(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 10

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p3, v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v1

    .line 222
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result v2

    .line 226
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v3, v2

    add-float/2addr v3, v1

    float-to-int v1, v3

    .line 227
    iput v1, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    .line 230
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 231
    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 232
    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v3, v0

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    .line 235
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 236
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2

    .line 237
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v6

    if-ne v5, v6, :cond_0

    goto :goto_2

    .line 240
    :cond_0
    invoke-direct {p0, p2, v4, v5}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateNotGoneIndex(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/notification/row/ExpandableView;)I

    move-result v4

    .line 241
    instance-of v6, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v6, :cond_2

    .line 242
    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 245
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v6

    .line 246
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    .line 247
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 248
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v8

    if-eq v8, v7, :cond_1

    .line 249
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v6

    .line 250
    iput v4, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    neg-int p1, v2

    int-to-float p1, p1

    .line 263
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v1

    if-nez v1, :cond_4

    .line 264
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mNotificationScrimPadding:F

    add-float/2addr p1, v1

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 267
    iput-object v2, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/high16 v2, -0x40800000    # -1.0f

    .line 268
    iput v2, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->viewHeightBeforeShelf:F

    .line 269
    :goto_3
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 270
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 273
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getSectionProvider()Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;

    move-result-object v3

    .line 274
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getPreviousView(ILcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v4

    .line 272
    invoke-direct {p0, v3, v0, v2, v4}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->childNeedsGapHeight(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;ILandroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 276
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeight:I

    int-to-float v3, v3

    add-float/2addr p1, v3

    .line 279
    :cond_5
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 280
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackEndHeight()F

    move-result v3

    .line 281
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_6

    .line 282
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/FooterView;

    if-nez v3, :cond_6

    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez v3, :cond_6

    .line 285
    iput-object v2, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 289
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    .line 290
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackEndHeight()F

    move-result v4

    .line 291
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sub-float/2addr v4, v1

    .line 289
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->viewHeightBeforeShelf:F

    .line 298
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v9, v1

    move v1, p1

    move p1, v9

    goto :goto_3

    :cond_7
    return-void
.end method

.method private initConstants(Landroid/content/Context;)V
    .locals 2

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 76
    sget v0, Lcom/android/systemui/R$dimen;->notification_divider_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    .line 78
    sget v0, Lcom/android/systemui/R$dimen;->notification_min_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mCollapsedSize:I

    .line 79
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mStatusBarHeight:I

    .line 80
    sget v0, Lcom/android/systemui/R$bool;->config_clipNotificationScrollToTop:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mClipNotificationScrollToTop:Z

    .line 81
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mStatusBarHeight:I

    sget v1, Lcom/android/systemui/R$dimen;->heads_up_status_bar_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpInset:F

    .line 83
    sget v0, Lcom/android/systemui/R$dimen;->heads_up_pinned_elevation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPinnedZTranslationExtra:I

    .line 85
    sget v0, Lcom/android/systemui/R$dimen;->notification_section_divider_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeight:I

    .line 86
    sget v0, Lcom/android/systemui/R$dimen;->notification_side_paddings:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mNotificationScrimPadding:F

    return-void
.end method

.method private resetChildViewStates()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 115
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 116
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->resetViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setLocation(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;FI)V
    .locals 0

    const/4 p0, 0x4

    .line 337
    iput p0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    const/4 p0, 0x0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x2

    .line 339
    iput p0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    :cond_0
    return-void
.end method

.method private updateClipping(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 13

    .line 159
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackY()F

    move-result v0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 162
    :goto_0
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v6, v3

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_9

    .line 165
    iget-object v7, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 166
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v8

    .line 167
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-boolean v9, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-eqz v9, :cond_2

    .line 168
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 170
    :cond_2
    iget v9, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 171
    iget v10, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v10, v10

    add-float/2addr v10, v9

    .line 173
    instance-of v11, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v11, :cond_3

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v11

    if-eqz v11, :cond_3

    move v11, v3

    goto :goto_2

    :cond_3
    move v11, v4

    .line 174
    :goto_2
    iget-boolean v12, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mClipNotificationScrollToTop:Z

    if-eqz v12, :cond_5

    iget-boolean v12, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    if-eqz v12, :cond_4

    if-eqz v11, :cond_5

    if-nez v6, :cond_5

    :cond_4
    cmpg-float v12, v9, v1

    if-gez v12, :cond_5

    .line 177
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeOpening()Z

    move-result v12

    if-nez v12, :cond_5

    sub-float v12, v1, v9

    float-to-int v12, v12

    .line 180
    iput v12, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    goto :goto_3

    .line 182
    :cond_5
    iput v4, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    :goto_3
    if-eqz v11, :cond_6

    move v6, v4

    .line 187
    :cond_6
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isTransparent()Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz v11, :cond_7

    goto :goto_4

    :cond_7
    move v9, v10

    .line 190
    :goto_4
    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_9
    return-void
.end method

.method private updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 9

    .line 200
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDimmed()Z

    move-result p0

    .line 201
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHideSensitive()Z

    move-result v0

    .line 202
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v1

    .line 203
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 205
    iget-object v5, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 206
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v6

    .line 207
    iput-boolean p0, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    .line 208
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    if-ne v1, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    if-eqz p0, :cond_1

    if-eqz v5, :cond_1

    .line 211
    iget v5, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getZDistanceBetweenElements()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    add-float/2addr v5, v8

    iput v5, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateHeadsUpStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 12

    .line 533
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 537
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 539
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 541
    iget v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result v3

    sub-float/2addr v2, v3

    .line 542
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpInset:F

    .line 543
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getAppearFraction()F

    move-result v4

    .line 542
    invoke-static {v3, v2, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_b

    .line 549
    iget-object v5, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 550
    instance-of v6, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v6, :cond_1

    goto/16 :goto_3

    .line 553
    :cond_1
    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 554
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_3

    .line 557
    :cond_2
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v4, :cond_3

    .line 558
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mustStayOnScreen()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-nez v8, :cond_3

    .line 560
    iput v7, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    move-object v4, v5

    :cond_3
    if-ne v4, v5, :cond_4

    goto :goto_1

    :cond_4
    move v7, v2

    .line 563
    :goto_1
    iget v8, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v9, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 564
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v9, :cond_5

    .line 565
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mustStayOnScreen()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-boolean v9, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-nez v9, :cond_5

    .line 566
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result v9

    if-nez v9, :cond_5

    .line 568
    invoke-direct {p0, p2, v5, v6}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->clampHunToTop(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V

    if-eqz v7, :cond_5

    .line 569
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 571
    invoke-direct {p0, p2, v5, v6}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->clampHunToMaxTranslation(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V

    .line 572
    iput-boolean v2, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 576
    :cond_5
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 577
    iget v9, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v10, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpInset:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 578
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v9

    iget v10, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 579
    iput-boolean v2, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-nez v4, :cond_6

    move-object v9, v1

    goto :goto_2

    .line 581
    :cond_6
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v9

    :goto_2
    if-eqz v9, :cond_8

    if-nez v7, :cond_8

    .line 582
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v10, :cond_7

    iget v10, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v11, v9, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    cmpl-float v8, v8, v10

    if-lez v8, :cond_8

    .line 586
    :cond_7
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v8

    iput v8, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 587
    iget v10, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v9, v9, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v9, v9

    add-float/2addr v10, v9

    int-to-float v8, v8

    sub-float/2addr v10, v8

    iget v8, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-static {v10, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 596
    :cond_8
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-nez v8, :cond_9

    if-eqz v7, :cond_9

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result v7

    if-lez v7, :cond_9

    .line 597
    iget v7, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 600
    :cond_9
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 601
    iput-boolean v2, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    :cond_a
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private updateNotGoneIndex(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/notification/row/ExpandableView;)I
    .locals 0

    .line 305
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object p0

    .line 306
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 307
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method private updatePositionsForState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 3

    .line 325
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    neg-int v0, v0

    int-to-float v0, v0

    .line 326
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mNotificationScrimPadding:F

    add-float/2addr v0, v1

    .line 329
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 331
    invoke-virtual {p0, v2, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateChild(ILcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;F)F

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updatePulsingStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 4

    .line 516
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_3

    .line 518
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 519
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v3, :cond_0

    goto :goto_1

    .line 522
    :cond_0
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 523
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 526
    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v2

    .line 527
    iput-boolean v0, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateShelfState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 0

    .line 151
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationShelf;->updateState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    :cond_0
    return-void
.end method

.method private updateSpeedBumpState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;I)V
    .locals 4

    .line 134
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 137
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 138
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v2

    if-lt v1, p2, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    .line 142
    :goto_1
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateZValuesForState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 11

    .line 646
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 651
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 652
    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    if-eqz v4, :cond_0

    .line 653
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isAboveShelf()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :cond_2
    :goto_1
    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    move v7, v4

    :goto_2
    if-ltz v0, :cond_4

    if-ne v0, v2, :cond_3

    move v10, v3

    goto :goto_3

    :cond_3
    move v10, v1

    :goto_3
    move-object v5, p0

    move v6, v0

    move-object v8, p1

    move-object v9, p2

    .line 660
    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateChildZValue(IFLcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Z)F

    move-result v7

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public getGapHeightForChild(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;ILandroid/view/View;Landroid/view/View;)F
    .locals 0

    .line 486
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->childNeedsGapHeight(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;ILandroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 488
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeight:I

    int-to-float p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getMaxAllowedChildHeight(Landroid/view/View;)I
    .locals 1

    .line 630
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_0

    .line 631
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 632
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p0

    return p0

    :cond_0
    if-nez p1, :cond_1

    .line 634
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mCollapsedSize:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public initView(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->initConstants(Landroid/content/Context;)V

    return-void
.end method

.method public resetViewStates(Lcom/android/systemui/statusbar/notification/stack/AmbientState;I)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->resetChildViewStates()V

    .line 99
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->initAlgorithmState(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 100
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updatePositionsForState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 101
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateZValuesForState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 102
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateHeadsUpStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 103
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updatePulsingStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 106
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateClipping(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 107
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateSpeedBumpState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;I)V

    .line 108
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateShelfState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 109
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getNotificationChildrenStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    return-void
.end method

.method public setIsExpanded(Z)V
    .locals 0

    .line 717
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    return-void
.end method

.method protected updateChild(ILcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;F)F
    .locals 7

    .line 383
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 384
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v1

    const/4 v2, 0x0

    .line 385
    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 387
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v3

    if-nez v3, :cond_0

    .line 389
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpansionFraction()F

    move-result v3

    .line 388
    invoke-static {v3}, Lcom/android/systemui/animation/Interpolators;->getNotificationScrimAlpha(F)F

    move-result v3

    iput v3, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 391
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getHideAmount()F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 394
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget v3, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_2

    .line 397
    iget v5, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackY()F

    move-result v5

    add-float/2addr v3, v5

    .line 398
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getMaxHeadsUpTranslation()F

    move-result v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 401
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getExpansionFractionWithoutShelf(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)F

    move-result v3

    .line 407
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getSectionProvider()Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;

    move-result-object v5

    .line 408
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getPreviousView(ILcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v6

    .line 406
    invoke-direct {p0, v5, p1, v0, v6}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->childNeedsGapHeight(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;ILandroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 410
    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr p4, v5

    .line 413
    :cond_3
    iput p4, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 414
    instance-of v5, v0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eqz v5, :cond_4

    .line 416
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getSectionPadding()F

    move-result v5

    mul-float/2addr v5, v3

    add-float/2addr v5, p4

    iput v5, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 419
    :cond_4
    instance-of v5, v0, Lcom/android/systemui/statusbar/notification/row/FooterView;

    if-eqz v5, :cond_9

    .line 420
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p2, :cond_5

    move p2, v4

    goto :goto_2

    :cond_5
    move p2, v2

    .line 422
    :goto_2
    iget v5, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 423
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackHeight()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    move v5, v4

    goto :goto_3

    :cond_6
    move v5, v2

    :goto_3
    if-nez p2, :cond_7

    .line 426
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result p2

    if-nez p2, :cond_8

    if-eqz v5, :cond_8

    :cond_7
    move v2, v4

    :cond_8
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    goto/16 :goto_6

    .line 428
    :cond_9
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v5

    if-eq v0, v5, :cond_f

    .line 429
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 432
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 433
    iget-object v5, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v5, :cond_a

    iget-object v6, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    .line 434
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-lt p1, v5, :cond_a

    move v2, v4

    :cond_a
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    goto :goto_5

    .line 436
    :cond_b
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 440
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result v5

    .line 441
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 442
    iget v6, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    int-to-float v5, v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    cmpl-float v5, v6, v5

    if-ltz v5, :cond_d

    .line 444
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isExpandAnimationRunning()Z

    move-result v5

    if-nez v5, :cond_c

    .line 445
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->hasExpandingChild()Z

    move-result v5

    if-nez v5, :cond_c

    move v5, v4

    goto :goto_4

    :cond_c
    move v5, v2

    :goto_4
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 446
    iput-boolean v4, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 448
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 453
    :cond_d
    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    .line 454
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result v5

    if-eqz v5, :cond_e

    iget v5, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->viewHeightBeforeShelf:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_e

    .line 456
    iget-object v5, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    iget-object v6, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    sub-int/2addr v5, v4

    if-ne p1, v5, :cond_e

    .line 459
    iget v2, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->viewHeightBeforeShelf:F

    :cond_e
    mul-float/2addr v2, v3

    float-to-int p2, v2

    .line 462
    iput p2, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 465
    :cond_f
    :goto_6
    iget p2, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float p2, p2

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v2, v2

    mul-float/2addr v3, v2

    add-float/2addr p2, v3

    add-float/2addr p4, p2

    .line 466
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object p2

    invoke-direct {p0, p2, p4, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->setLocation(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;FI)V

    .line 467
    iget p0, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackY()F

    move-result p1

    add-float/2addr p0, p1

    iput p0, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    return p4
.end method

.method protected updateChildZValue(IFLcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Z)F
    .locals 6

    .line 669
    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 670
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object p3

    .line 671
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getZDistanceBetweenElements()I

    move-result v0

    .line 672
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseZHeight()I

    move-result v1

    int-to-float v1, v1

    .line 673
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    iget-boolean v2, p3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-nez v2, :cond_1

    .line 674
    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozingAndNotPulsing(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 675
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v4

    .line 676
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    const/4 p5, 0x0

    cmpl-float p5, p2, p5

    if-eqz p5, :cond_0

    add-float/2addr p2, v3

    goto :goto_0

    .line 680
    :cond_0
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result p5

    .line 681
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result p4

    add-float/2addr p5, p4

    iget p4, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    sub-float/2addr p5, p4

    .line 682
    iget p4, p3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float p4, p4

    div-float/2addr p5, p4

    invoke-static {v3, p5}, Ljava/lang/Math;->min(FF)F

    move-result p4

    add-float/2addr p2, p4

    :goto_0
    int-to-float p4, v0

    mul-float/2addr p4, p2

    add-float/2addr v1, p4

    .line 684
    iput v1, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    goto :goto_2

    :cond_1
    if-eqz p5, :cond_4

    .line 689
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object p5

    if-nez p5, :cond_2

    const/4 p5, 0x0

    goto :goto_1

    .line 690
    :cond_2
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p5

    .line 691
    :goto_1
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result v2

    sub-int/2addr v2, p5

    int-to-float v2, v2

    .line 692
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v4

    add-float/2addr v2, v4

    .line 693
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result p4

    add-float/2addr v2, p4

    .line 694
    iget p4, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr p4, v4

    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v4, v4

    add-float/2addr p4, v4

    cmpl-float v4, v2, p4

    if-lez v4, :cond_3

    .line 697
    iput v1, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    goto :goto_2

    :cond_3
    sub-float/2addr p4, v2

    int-to-float p5, p5

    div-float/2addr p4, p5

    .line 700
    invoke-static {p4, v3}, Ljava/lang/Math;->min(FF)F

    move-result p4

    int-to-float p5, v0

    mul-float/2addr p4, p5

    add-float/2addr v1, p4

    .line 701
    iput v1, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    goto :goto_2

    .line 704
    :cond_4
    iput v1, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 711
    :goto_2
    iget p4, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getHeaderVisibleAmount()F

    move-result p1

    sub-float/2addr v3, p1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPinnedZTranslationExtra:I

    int-to-float p0, p0

    mul-float/2addr v3, p0

    add-float/2addr p4, v3

    iput p4, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    return p2
.end method
