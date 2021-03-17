.class public Lcom/android/systemui/statusbar/NotificationShelf;
.super Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
.source "NotificationShelf.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;
    }
.end annotation


# static fields
.field private static final ICON_ANMATIONS_WHILE_SCROLLING:Z

.field private static final TAG_CONTINUOUS_CLIPPING:I

.field private static final USE_ANIMATIONS_WHEN_OPENING:Z


# instance fields
.field private mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field private mAnimationsEnabled:Z

.field private mClipRect:Landroid/graphics/Rect;

.field private mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mController:Lcom/android/systemui/statusbar/NotificationShelfController;

.field private mCutoutHeight:I

.field private mFirstElementRoundness:F

.field private mGapHeight:I

.field private mHasItemsInStableShelf:Z

.field private mHiddenShelfIconSize:F

.field private mHideBackground:Z

.field private mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field private mIconAppearTopPadding:I

.field private mIconSize:I

.field private mInteractive:Z

.field private mMaxLayoutHeight:I

.field private mNoAnimationsInThisFrame:Z

.field private mNotGoneIndex:I

.field private mOpenedAmount:F

.field private mPaddingBetweenElements:I

.field private mRelativeOffset:I

.field private mScrollFastThreshold:I

.field private mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mShowNotificationShelf:Z

.field private mStatusBarHeight:I

.field private mStatusBarState:I

.field private mTmp:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.icon_opening_animations"

    const/4 v1, 0x1

    .line 59
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    const-string v0, "debug.icon_scroll_animations"

    .line 61
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    .line 62
    sget v0, Lcom/android/systemui/R$id;->continuous_clipping_tag:I

    sput v0, Lcom/android/systemui/statusbar/NotificationShelf;->TAG_CONTINUOUS_CLIPPING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 66
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    .line 88
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .line 55
    sget v0, Lcom/android/systemui/statusbar/NotificationShelf;->TAG_CONTINUOUS_CLIPPING:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconClipAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/NotificationShelf;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/NotificationShelf;F)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setOpenedAmount(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/NotificationShelf;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setHasItemsInStableShelf(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/NotificationShelf;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object p0
.end method

.method private calculateIconTransformationStart(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)F
    .locals 1

    .line 598
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfTransformationTarget()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    .line 600
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    return p0

    .line 602
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getRelativeTopPadding(Landroid/view/View;)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    .line 605
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    return v0
.end method

.method private clipTransientViews()V
    .locals 4

    const/4 v0, 0x0

    .line 381
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getTransientViewCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getTransientView(I)Landroid/view/View;

    move-result-object v1

    .line 383
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v2, :cond_0

    .line 384
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 385
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    const/4 v3, -0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FI)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getFullyClosedTranslation()F
    .locals 1

    .line 822
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    sub-int/2addr v0, p0

    neg-int p0, v0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    return p0
.end method

.method private getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .locals 0

    .line 818
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object p0

    return-object p0
.end method

.method private handleCustomTransformHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;ZLcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;)V
    .locals 2

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 611
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 612
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p2, p3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-nez p2, :cond_1

    .line 620
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getIntrinsicPadding()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 621
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getPositionInLinearLayout(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I

    move-result v0

    add-int/2addr p2, v0

    int-to-float p2, p2

    .line 622
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_1

    .line 623
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p2

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    .line 624
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    const/4 p1, 0x1

    .line 625
    iput-boolean p1, p3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    const/high16 v0, -0x80000000

    .line 626
    iput v0, p3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    .line 628
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, p2

    .line 629
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 633
    iget p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    .line 634
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    sub-float/2addr p0, p2

    float-to-int p0, p0

    iput p0, p3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    :cond_1
    return-void
.end method

.method private initDimens()V
    .locals 4

    .line 124
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    sget v1, Lcom/android/systemui/R$dimen;->notification_icon_appear_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    .line 126
    sget v1, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    .line 127
    sget v1, Lcom/android/systemui/R$dimen;->notification_divider_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    .line 129
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 130
    sget v2, Lcom/android/systemui/R$dimen;->notification_shelf_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 131
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    sget v1, Lcom/android/systemui/R$dimen;->shelf_icon_container_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 134
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 135
    sget v1, Lcom/android/systemui/R$dimen;->scroll_fast_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    .line 136
    sget v1, Lcom/android/systemui/R$bool;->config_showNotificationShelf:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    const v1, 0x1050273

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconSize:I

    .line 138
    sget v1, Lcom/android/systemui/R$dimen;->hidden_shelf_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHiddenShelfIconSize:F

    .line 139
    sget v1, Lcom/android/systemui/R$dimen;->qs_notification_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mGapHeight:I

    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 142
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private isTargetClipped(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 4

    .line 697
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfTransformationTarget()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 702
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    .line 703
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getContentTranslation()F

    move-result v3

    add-float/2addr v2, v3

    .line 704
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getRelativeTopPadding(Landroid/view/View;)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v2, p1

    .line 705
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v2, p1

    .line 707
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    cmpl-float p0, v2, p1

    if-ltz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private setFirstElementRoundness(F)V
    .locals 1

    .line 391
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mFirstElementRoundness:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 392
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mFirstElementRoundness:F

    const/4 v0, 0x0

    .line 393
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setTopRoundness(FZ)Z

    :cond_0
    return-void
.end method

.method private setHasItemsInStableShelf(Z)V
    .locals 1

    .line 930
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-eq v0, p1, :cond_0

    .line 931
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    .line 932
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    :cond_0
    return-void
.end method

.method private setHideBackground(Z)V
    .locals 1

    .line 831
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eq v0, p1, :cond_0

    .line 832
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    .line 833
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackground()V

    .line 834
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->updateOutline()V

    :cond_0
    return-void
.end method

.method private setIconTransformationAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FFZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 713
    instance-of v3, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v3, :cond_0

    return-void

    .line 716
    :cond_0
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 718
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v3

    .line 719
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v4

    .line 720
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShelfTransformationTarget()Landroid/view/View;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    .line 727
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getRelativeTopPadding(Landroid/view/View;)I

    move-result v8

    .line 728
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getRelativeStartPadding(Landroid/view/View;)I

    move-result v9

    .line 729
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    goto :goto_0

    .line 731
    :cond_1
    iget v8, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    move v5, v7

    const/4 v9, 0x0

    .line 735
    :goto_0
    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result v10

    if-eqz v10, :cond_2

    iget v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHiddenShelfIconSize:F

    goto :goto_1

    :cond_2
    iget v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconSize:I

    int-to-float v10, v10

    .line 736
    :goto_1
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v11

    mul-float/2addr v10, v11

    .line 739
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v11

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getContentTranslation()F

    move-result v12

    add-float/2addr v11, v12

    .line 741
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isTransformingIntoShelf()Z

    move-result v12

    if-nez v12, :cond_3

    move v12, v13

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    if-eqz p4, :cond_4

    if-nez v12, :cond_4

    .line 746
    iget v14, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    int-to-float v14, v14

    add-float/2addr v14, v11

    .line 748
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v15

    sub-float/2addr v14, v15

    .line 747
    invoke-static {v14, v7}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 746
    invoke-static {v14, v7, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v14

    goto :goto_3

    :cond_4
    move v14, v7

    :goto_3
    int-to-float v8, v8

    add-float/2addr v11, v8

    .line 753
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v8

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v8, v15

    .line 754
    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v15, v10

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v8, v15

    sub-float/2addr v11, v8

    .line 755
    invoke-static {v11, v14, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v8

    .line 762
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v11

    int-to-float v11, v11

    .line 763
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v14, v15, v14

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v14, v6

    div-float v14, v14, v16

    add-float/2addr v11, v14

    int-to-float v6, v9

    sub-float/2addr v6, v11

    .line 764
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 766
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v9

    .line 764
    invoke-static {v6, v9, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v6

    .line 771
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isShowingIcon()Z

    move-result v9

    xor-int/2addr v9, v13

    if-eqz v9, :cond_5

    div-float v5, v10, v16

    .line 776
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v6

    move v11, v2

    goto :goto_4

    :cond_5
    move v11, v15

    .line 779
    :goto_4
    invoke-static {v5, v10, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    if-eqz v4, :cond_e

    div-float/2addr v5, v10

    .line 782
    iput v5, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    .line 783
    iput v5, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    cmpl-float v2, v2, v7

    if-nez v2, :cond_6

    .line 784
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v13

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    iput-boolean v2, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 785
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDrawingAppearAnimation()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v13

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_8

    .line 787
    iput-boolean v13, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 788
    iput v7, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 790
    :cond_8
    iput v11, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 791
    iput v8, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 792
    iput v6, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    if-eqz v12, :cond_9

    .line 794
    iput v15, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 795
    iput v15, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 796
    iput v15, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    .line 797
    iput v15, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    const/4 v2, 0x0

    .line 798
    iput-boolean v2, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 800
    :cond_9
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v2

    if-nez v2, :cond_b

    .line 801
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result v2

    if-nez v2, :cond_b

    .line 802
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v2

    if-nez v2, :cond_c

    if-eqz p5, :cond_a

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v2

    if-nez v2, :cond_b

    .line 803
    :cond_a
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v2

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseZHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_c

    .line 804
    :cond_b
    iput-boolean v13, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 806
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    move-result v0

    .line 807
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContrastedStaticDrawableColor(I)I

    move-result v0

    if-nez v9, :cond_d

    if-eqz v0, :cond_d

    .line 809
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getOriginalIconColor()I

    move-result v1

    .line 810
    iget v2, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    invoke-static {v1, v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    .line 813
    :cond_d
    iput v0, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    :cond_e
    return-void
.end method

.method private setOpenedAmount(F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 883
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mOpenedAmount:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNoAnimationsInThisFrame:Z

    .line 884
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mOpenedAmount:F

    .line 885
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPanelFullWidth()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move p1, v0

    .line 889
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    .line 890
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 891
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    sub-int v0, v1, v0

    .line 893
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 894
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 895
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    .line 896
    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 893
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    float-to-int v1, v1

    .line 897
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualLayoutWidth(I)V

    .line 898
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->hasOverflow()Z

    move-result v1

    .line 899
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    if-nez v1, :cond_4

    .line 903
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getNoOverflowExtraPadding()I

    move-result v1

    goto :goto_1

    .line 906
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPartialOverflowExtraPadding()I

    move-result v1

    :goto_1
    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 908
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 909
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    int-to-float v2, v2

    .line 908
    invoke-static {v1, v2, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    .line 911
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualPaddingEnd(F)V

    int-to-float v0, v0

    .line 912
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 913
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v1

    int-to-float v1, v1

    .line 912
    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    .line 914
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualPaddingStart(F)V

    .line 915
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setOpenedAmount(F)V

    return-void
.end method

.method private updateContinuousClipping(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 6

    .line 415
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    .line 416
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 417
    :goto_0
    sget v4, Lcom/android/systemui/statusbar/NotificationShelf;->TAG_CONTINUOUS_CLIPPING:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 419
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 420
    new-instance v2, Lcom/android/systemui/statusbar/NotificationShelf$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/systemui/statusbar/NotificationShelf$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 436
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 437
    new-instance p1, Lcom/android/systemui/statusbar/NotificationShelf$2;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationShelf$2;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 452
    invoke-virtual {v0, v4, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private updateIconClipAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 4

    .line 398
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    .line 399
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 403
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p1

    .line 404
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    .line 405
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result p0

    if-nez p0, :cond_1

    sub-float/2addr v0, v1

    float-to-int p0, v0

    .line 407
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v1, p0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 408
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 410
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private updateIconPositioning(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FFFZZZZ)V
    .locals 11

    move-object v0, p0

    .line 643
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v1

    .line 644
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 648
    :cond_0
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 649
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hasCustomTransformHeight()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v6, p2, v6

    if-gtz v6, :cond_3

    .line 650
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->isTargetClipped(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v6, v5

    :goto_2
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_3

    :cond_4
    move v6, v8

    :goto_3
    cmpl-float v9, p2, v6

    if-nez v9, :cond_b

    if-nez p6, :cond_5

    if-eqz p7, :cond_6

    :cond_5
    if-nez v3, :cond_6

    move v9, v5

    goto :goto_4

    :cond_6
    move v9, v4

    .line 653
    :goto_4
    iput-boolean v9, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    if-nez v9, :cond_8

    .line 654
    sget-boolean v9, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    if-nez v9, :cond_7

    cmpl-float v9, p2, v8

    if-nez v9, :cond_7

    if-eqz p5, :cond_7

    goto :goto_5

    :cond_7
    move v9, v4

    goto :goto_6

    :cond_8
    :goto_5
    move v9, v5

    :goto_6
    iput-boolean v9, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 657
    sget-boolean v9, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    if-nez v9, :cond_9

    cmpl-float v9, p2, v8

    if-nez v9, :cond_9

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 658
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result v9

    if-nez v9, :cond_9

    move v9, v5

    goto :goto_7

    :cond_9
    move v9, v4

    :goto_7
    iput-boolean v9, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useLinearTransitionAmount:Z

    .line 659
    iget v9, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v10

    sub-float/2addr v9, v10

    .line 660
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    cmpl-float v9, v9, v8

    if-lez v9, :cond_a

    move v9, v5

    goto :goto_8

    :cond_a
    move v9, v4

    :goto_8
    iput-boolean v9, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    :cond_b
    if-nez v3, :cond_d

    if-nez p6, :cond_c

    if-eqz p7, :cond_d

    .line 662
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-eqz v3, :cond_d

    .line 663
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 664
    :cond_c
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    .line 665
    iput-boolean v5, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 666
    iput-boolean v5, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    .line 668
    :cond_d
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hasCustomTransformHeight()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 669
    iput-boolean v5, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 671
    :cond_e
    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-eqz v1, :cond_f

    .line 672
    iput-boolean v4, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    .line 675
    :cond_f
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHiddenAtAll()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v1

    if-nez v1, :cond_11

    .line 676
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_b

    :cond_10
    move v7, v8

    goto :goto_b

    :cond_11
    if-nez p8, :cond_14

    .line 677
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    if-eqz v1, :cond_14

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-nez v1, :cond_14

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useLinearTransitionAmount:Z

    if-eqz v1, :cond_12

    goto :goto_a

    .line 684
    :cond_12
    iget v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_13

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNoAnimationsInThisFrame:Z

    if-nez v1, :cond_13

    move v1, v5

    goto :goto_9

    :cond_13
    move v1, v4

    :goto_9
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    move v7, v6

    goto :goto_b

    :cond_14
    :goto_a
    move v7, p2

    .line 688
    :goto_b
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    if-eqz v1, :cond_16

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-eqz v1, :cond_15

    goto :goto_c

    :cond_15
    move v1, v7

    goto :goto_d

    :cond_16
    :goto_c
    move v1, p3

    .line 690
    :goto_d
    iput v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 691
    iput v6, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    cmpl-float v1, v6, v7

    if-eqz v1, :cond_17

    move v4, v5

    :cond_17
    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, p4

    move/from16 v5, p8

    .line 692
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationShelf;->setIconTransformationAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FFZZ)V

    return-void
.end method

.method private updateInteractiveness()V
    .locals 2

    .line 956
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    .line 957
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 958
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 959
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method private updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FI)I
    .locals 5

    .line 462
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 463
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 464
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozingAndNotPulsing(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 466
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_1

    .line 469
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    move-result v2

    :goto_1
    cmpl-float p3, v0, p2

    if-lez p3, :cond_6

    if-nez v2, :cond_6

    .line 471
    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 472
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeExpanded()Z

    move-result p3

    if-nez p3, :cond_4

    if-nez v1, :cond_6

    :cond_4
    sub-float p2, v0, p2

    float-to-int p2, p2

    if-eqz v1, :cond_5

    .line 475
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 478
    :cond_5
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    goto :goto_2

    .line 480
    :cond_6
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    :goto_2
    if-eqz v2, :cond_7

    .line 483
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    sub-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_7
    return v3
.end method

.method private updateRelativeOffset()V
    .locals 3

    .line 860
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 861
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    .line 862
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 863
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    aget v1, v2, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    return-void
.end method

.method private updateShelfTransformation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FZZZZ)F
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v7, p5

    move/from16 v8, p6

    .line 504
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v3

    .line 505
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v3

    .line 508
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    .line 509
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v5

    iget v6, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    add-int/2addr v5, v6

    .line 510
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/NotificationShelf;->calculateIconTransformationStart(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)F

    move-result v6

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float/2addr v9, v10

    const/high16 v11, 0x3f800000    # 1.0f

    .line 513
    invoke-static {v11, v10, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v10

    mul-float/2addr v9, v10

    int-to-float v10, v5

    .line 514
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    add-float/2addr v10, v4

    sub-float/2addr v10, v6

    .line 518
    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    if-eqz v8, :cond_0

    .line 522
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v12

    sub-int/2addr v10, v12

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 523
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight()I

    move-result v10

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v12

    sub-int/2addr v10, v12

    int-to-float v10, v10

    .line 523
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    :cond_0
    int-to-float v10, v5

    add-float/2addr v10, v4

    .line 527
    invoke-direct {v0, v1, v7, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->handleCustomTransformHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;ZLcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;)V

    .line 532
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v12

    const/4 v13, 0x1

    cmpl-float v10, v10, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-ltz v10, :cond_6

    .line 534
    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isUnlockHintRunning()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_1
    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 535
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeExpanded()Z

    move-result v10

    if-nez v10, :cond_2

    .line 536
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    move-result v10

    if-nez v10, :cond_6

    :cond_2
    cmpg-float v10, v4, v12

    if-gez v10, :cond_5

    if-eqz v3, :cond_3

    .line 538
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hasCustomTransformHeight()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 539
    iget v5, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    int-to-float v9, v5

    :cond_3
    sub-float v10, v12, v4

    int-to-float v5, v5

    div-float v5, v10, v5

    .line 544
    invoke-static {v11, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 545
    sget-object v13, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-interface {v13, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v13

    .line 547
    invoke-static {v13, v5, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    sub-float v2, v11, v2

    if-eqz v8, :cond_4

    div-float/2addr v10, v9

    goto :goto_0

    :cond_4
    sub-float v5, v12, v6

    div-float v10, v5, v9

    .line 558
    :goto_0
    invoke-static {v10, v15, v11}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v5

    sub-float v5, v11, v5

    move v13, v14

    goto :goto_1

    :cond_5
    move v2, v11

    move v5, v2

    :goto_1
    sub-float/2addr v12, v4

    div-float/2addr v12, v9

    .line 568
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float/2addr v11, v4

    move v4, v9

    move v9, v2

    move v2, v5

    goto :goto_2

    :cond_6
    move v4, v9

    move v2, v15

    move v9, v2

    move v11, v9

    :goto_2
    if-eqz v3, :cond_7

    if-eqz v13, :cond_7

    if-nez v7, :cond_7

    .line 575
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-eqz v5, :cond_7

    .line 576
    iput-boolean v14, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    const/high16 v5, -0x80000000

    .line 577
    iput v5, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    .line 581
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isAboveShelf()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    move-result v5

    if-nez v5, :cond_9

    if-nez v8, :cond_8

    if-eqz v3, :cond_8

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    move v15, v11

    .line 585
    :cond_9
    :goto_3
    invoke-virtual {v1, v15, v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setContentTransformationAmount(FZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v9

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 588
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconPositioning(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FFFZZZZ)V

    return v9
.end method


# virtual methods
.method public bind(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 120
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    return-void
.end method

.method public createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 2

    .line 163
    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/NotificationShelf$1;)V

    return-object v0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object p0
.end method

.method public getNotGoneIndex()I
    .locals 0

    .line 926
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    return p0
.end method

.method public getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object p0
.end method

.method public hasNoContentHeight()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isInteractive()Z
    .locals 0

    .line 965
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    return p0
.end method

.method public needsClippingToShelf()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected needsOutline()Z
    .locals 1

    .line 840
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->needsOutline()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 868
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 875
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 876
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 877
    :cond_0
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCutoutHeight:I

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 148
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 100
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onFinishInflate()V

    .line 101
    sget v0, Lcom/android/systemui/R$id;->content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipToActualHeight(Z)V

    .line 106
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 107
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setIsStaticLayout(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setBottomRoundness(FZ)Z

    const/4 v0, 0x1

    .line 113
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setFirstInSection(Z)V

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 983
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 984
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    if-eqz v0, :cond_0

    .line 985
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 986
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    .line 989
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$string;->accessibility_overflow_action:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 990
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 850
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onLayout(ZIIII)V

    .line 851
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateRelativeOffset()V

    .line 854
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 855
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    neg-int p3, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    const/4 p5, 0x0

    invoke-virtual {p2, p5, p3, p4, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 856
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 997
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateRelativeOffset()V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 951
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    .line 952
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 0

    .line 1006
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundColors()V

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0

    .line 969
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    if-nez p1, :cond_0

    .line 972
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 0

    .line 945
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 946
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public setController(Lcom/android/systemui/statusbar/NotificationShelfController;)V
    .locals 0

    .line 1010
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mController:Lcom/android/systemui/statusbar/NotificationShelfController;

    return-void
.end method

.method public setFakeShadowIntensity(FFII)V
    .locals 1

    .line 492
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 495
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setFakeShadowIntensity(FFII)V

    return-void
.end method

.method public setMaxLayoutHeight(I)V
    .locals 0

    .line 919
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    return-void
.end method

.method protected shouldHideBackground()Z
    .locals 1

    .line 845
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

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

.method public updateAppearance()V
    .locals 31

    move-object/from16 v7, p0

    .line 213
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 218
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v8

    .line 220
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v9

    const/4 v10, -0x1

    .line 221
    iput v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 222
    iget v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v1, v8, v0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    if-ltz v1, :cond_1

    sub-float v0, v8, v0

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 226
    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v13, v0

    goto :goto_0

    :cond_1
    move v13, v12

    .line 232
    :goto_0
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$200(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v16, 0x1

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    .line 238
    :goto_1
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getCurrentScrollVelocity()F

    move-result v0

    .line 239
    iget v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_4

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 240
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 241
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpandingVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v17, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/16 v17, 0x1

    :goto_3
    cmpl-float v0, v0, v12

    if-lez v0, :cond_5

    const/16 v18, 0x1

    goto :goto_4

    :cond_5
    const/16 v18, 0x0

    .line 243
    :goto_4
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 244
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPanelTracking()Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v19, 0x1

    goto :goto_5

    :cond_6
    const/16 v19, 0x0

    .line 245
    :goto_5
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseZHeight()I

    move-result v6

    const/4 v0, 0x0

    move-object v5, v0

    move v2, v12

    move/from16 v20, v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v21, 0x0

    .line 251
    :goto_6
    iget-object v15, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildCount()I

    move-result v15

    const/16 v10, 0x8

    if-ge v4, v15, :cond_1b

    .line 252
    iget-object v15, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v15, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildAt(I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v15

    .line 254
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->needsClippingToShelf()Z

    move-result v22

    if-eqz v22, :cond_1a

    move/from16 v22, v2

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-ne v2, v10, :cond_7

    goto/16 :goto_14

    .line 259
    :cond_7
    invoke-static {v15}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getFinalTranslationZ(Landroid/view/View;)F

    move-result v2

    int-to-float v10, v6

    cmpl-float v2, v2, v10

    if-gtz v2, :cond_9

    .line 260
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_7

    :cond_8
    const/4 v10, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v10, 0x1

    :goto_8
    if-ne v15, v9, :cond_a

    const/16 v23, 0x1

    goto :goto_9

    :cond_a
    const/16 v23, 0x0

    .line 262
    :goto_9
    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v24

    if-eqz v23, :cond_b

    .line 263
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    if-nez v10, :cond_d

    if-eqz v16, :cond_c

    goto :goto_a

    .line 266
    :cond_c
    iget v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    int-to-float v2, v2

    sub-float v2, v8, v2

    goto :goto_b

    .line 264
    :cond_d
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v8

    .line 268
    :goto_b
    invoke-direct {v7, v15, v2, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FI)I

    move-result v2

    .line 269
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v25

    move-object/from16 v0, p0

    move v2, v1

    move-object v1, v15

    move-object/from16 v26, v9

    move v9, v2

    move v2, v13

    move/from16 v27, v13

    move v13, v3

    move/from16 v3, v18

    move/from16 v28, v4

    move/from16 v4, v17

    move/from16 v29, v13

    move-object v13, v5

    move/from16 v5, v19

    move/from16 v30, v6

    move/from16 v6, v23

    .line 272
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationShelf;->updateShelfTransformation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FZZZZ)F

    move-result v0

    .line 276
    instance-of v1, v15, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_16

    .line 277
    move-object v1, v15

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    add-float v20, v20, v0

    .line 279
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    move-result v2

    cmpl-float v3, v24, v8

    if-ltz v3, :cond_e

    .line 280
    iget v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_f

    .line 281
    iput v9, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 282
    invoke-virtual {v7, v14}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setTintColor(I)V

    .line 283
    invoke-virtual {v7, v11, v12}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(IF)V

    goto :goto_c

    :cond_e
    const/4 v4, -0x1

    .line 285
    :cond_f
    iget v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    if-ne v3, v4, :cond_10

    move v12, v0

    goto :goto_d

    :cond_10
    :goto_c
    move v14, v11

    :goto_d
    if-eqz v23, :cond_12

    .line 290
    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mController:Lcom/android/systemui/statusbar/NotificationShelfController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelfController;->canModifyColorOfNotifications()Z

    move-result v3

    if-eqz v3, :cond_12

    if-nez v21, :cond_11

    move v3, v2

    goto :goto_e

    :cond_11
    move/from16 v3, v21

    .line 294
    :goto_e
    invoke-virtual {v1, v3, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(IF)V

    move v0, v3

    const/4 v3, 0x0

    goto :goto_f

    :cond_12
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 297
    invoke-virtual {v1, v3, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(IF)V

    move v0, v2

    :goto_f
    if-nez v9, :cond_13

    if-nez v10, :cond_14

    .line 300
    :cond_13
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAboveShelf(Z)V

    :cond_14
    if-nez v9, :cond_15

    .line 303
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v3

    .line 304
    invoke-direct {v7, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 308
    iget v3, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_15

    .line 310
    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 311
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentTopRoundness()F

    move-result v1

    goto :goto_10

    :cond_15
    move/from16 v1, v22

    move/from16 v3, v29

    :goto_10
    add-int/lit8 v4, v9, 0x1

    move/from16 v21, v0

    move v11, v14

    move v14, v2

    move v2, v1

    move v1, v4

    goto :goto_11

    :cond_16
    move v1, v9

    move/from16 v2, v22

    move/from16 v3, v29

    .line 319
    :goto_11
    instance-of v0, v15, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    if-eqz v0, :cond_19

    .line 320
    move-object v0, v15

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 322
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isFirstInSection()Z

    move-result v4

    if-eqz v4, :cond_18

    if-eqz v13, :cond_18

    .line 323
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isLastInSection()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 326
    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v5

    sub-float/2addr v4, v5

    .line 327
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v5

    .line 328
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v6

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v6, v9

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    cmpl-float v9, v5, v6

    if-lez v9, :cond_17

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 335
    iget v9, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mGapHeight:I

    int-to-float v9, v9

    div-float/2addr v5, v9

    float-to-double v9, v5

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v5, 0x0

    .line 337
    invoke-virtual {v13, v2, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setBottomRoundness(FZ)Z

    float-to-int v3, v4

    goto :goto_12

    :cond_17
    const/4 v5, 0x0

    goto :goto_12

    :cond_18
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_12
    move-object v13, v0

    goto :goto_13

    :cond_19
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_13
    move/from16 v0, v25

    goto :goto_15

    :cond_1a
    move/from16 v22, v2

    :goto_14
    move/from16 v29, v3

    move/from16 v28, v4

    move/from16 v30, v6

    move-object/from16 v26, v9

    move/from16 v27, v13

    const/4 v6, 0x0

    move v9, v1

    move-object v13, v5

    const/4 v5, 0x0

    move v1, v9

    move/from16 v2, v22

    move/from16 v3, v29

    :goto_15
    add-int/lit8 v4, v28, 0x1

    move-object v5, v13

    move-object/from16 v9, v26

    move/from16 v13, v27

    move/from16 v6, v30

    const/4 v10, -0x1

    goto/16 :goto_6

    :cond_1b
    move v9, v1

    move/from16 v22, v2

    move/from16 v29, v3

    const/4 v5, 0x0

    .line 345
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->clipTransientViews()V

    .line 347
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setClipTopAmount(I)V

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-nez v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    if-lt v0, v1, :cond_1c

    goto :goto_16

    :cond_1c
    move v3, v5

    goto :goto_17

    :cond_1d
    :goto_16
    const/4 v3, 0x1

    .line 349
    :goto_17
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-eqz v0, :cond_1f

    if-eqz v3, :cond_1e

    const/4 v3, 0x4

    goto :goto_18

    :cond_1e
    move v3, v5

    .line 350
    :goto_18
    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1f
    move/from16 v15, v29

    .line 352
    invoke-virtual {v7, v15}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setBackgroundTop(I)V

    move/from16 v2, v22

    .line 353
    invoke-direct {v7, v2}, Lcom/android/systemui/statusbar/NotificationShelf;->setFirstElementRoundness(F)V

    .line 354
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getSpeedBumpIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setSpeedBumpIndex(I)V

    .line 355
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconTranslations()V

    .line 356
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    move v3, v5

    .line 357
    :goto_19
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_22

    .line 358
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildAt(I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    .line 359
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_21

    .line 360
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v10, :cond_20

    goto :goto_1a

    .line 363
    :cond_20
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 364
    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconClipAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 365
    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateContinuousClipping(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_21
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_22
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v20, v0

    if-gez v0, :cond_23

    const/4 v3, 0x1

    goto :goto_1b

    :cond_23
    move v3, v5

    :goto_1b
    if-nez v3, :cond_25

    if-eqz v16, :cond_24

    goto :goto_1c

    :cond_24
    move v14, v5

    goto :goto_1d

    :cond_25
    :goto_1c
    const/4 v14, 0x1

    .line 368
    :goto_1d
    invoke-direct {v7, v14}, Lcom/android/systemui/statusbar/NotificationShelf;->setHideBackground(Z)V

    .line 369
    iget v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    .line 370
    iput v9, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    :cond_26
    return-void
.end method

.method public updateState(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 7

    .line 168
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    .line 170
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 171
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v5

    add-float/2addr v2, v5

    .line 172
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result v5

    add-float/2addr v2, v5

    .line 173
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    .line 174
    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v6, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 175
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v6

    iput v6, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 178
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v5, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getFullyClosedTranslation()F

    move-result v5

    .line 178
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 180
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseZHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 185
    iget p1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getFullyClosedTranslation()F

    move-result v2

    sub-float/2addr p1, v2

    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCutoutHeight:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    div-float/2addr p1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 187
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 188
    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$102(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F

    .line 189
    iput v4, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 190
    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 191
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getSpeedBumpIndex()I

    move-result p1

    if-nez p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    iput-boolean p1, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 192
    iput-boolean v4, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    .line 193
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p1

    iput p1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 194
    iget p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 195
    iget v2, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 197
    :cond_1
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$202(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z

    .line 198
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeExpanded()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isQsCustomizerShowing()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :cond_3
    :goto_1
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    goto :goto_2

    .line 201
    :cond_4
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    const/16 p0, 0x40

    .line 202
    iput p0, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 203
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$202(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z

    :goto_2
    return-void
.end method
