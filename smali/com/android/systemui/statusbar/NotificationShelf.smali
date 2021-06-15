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


# instance fields
.field private mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field private mAnimationsEnabled:Z

.field private mClipRect:Landroid/graphics/Rect;

.field private mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mController:Lcom/android/systemui/statusbar/NotificationShelfController;

.field private mCornerAnimationDistance:F

.field private mCutoutHeight:I

.field private mFirstElementRoundness:F

.field private mGapHeight:I

.field private mHasItemsInStableShelf:Z

.field private mHiddenShelfIconSize:F

.field private mHideBackground:Z

.field private mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field private mIconAppearTopPadding:I

.field private mIconSize:I

.field private mIndexOfFirstViewInShelf:I

.field private mInteractive:Z

.field private mMaxLayoutHeight:I

.field private mNoAnimationsInThisFrame:Z

.field private mNotGoneIndex:I

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

    const-string v0, "debug.icon_scroll_animations"

    const/4 v1, 0x1

    .line 57
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    .line 58
    sget v0, Lcom/android/systemui/R$id;->continuous_clipping_tag:I

    sput v0, Lcom/android/systemui/statusbar/NotificationShelf;->TAG_CONTINUOUS_CLIPPING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    .line 84
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 87
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIndexOfFirstViewInShelf:I

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .line 53
    sget v0, Lcom/android/systemui/statusbar/NotificationShelf;->TAG_CONTINUOUS_CLIPPING:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconClipAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/NotificationShelf;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/NotificationShelf;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setHasItemsInStableShelf(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/NotificationShelf;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object p0
.end method

.method private calculateIconTransformationStart(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)F
    .locals 1

    .line 597
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfTransformationTarget()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    .line 599
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    return p0

    .line 601
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getRelativeTopPadding(Landroid/view/View;)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    .line 604
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

    .line 413
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getTransientViewCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getTransientView(I)Landroid/view/View;

    move-result-object v1

    .line 415
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v2, :cond_0

    .line 416
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 417
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

.method private getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .locals 0

    .line 694
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object p0

    return-object p0
.end method

.method private initDimens()V
    .locals 4

    .line 123
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    sget v1, Lcom/android/systemui/R$dimen;->notification_icon_appear_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    .line 125
    sget v1, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    .line 126
    sget v1, Lcom/android/systemui/R$dimen;->notification_divider_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    .line 128
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 129
    sget v2, Lcom/android/systemui/R$dimen;->notification_shelf_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 130
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    sget v1, Lcom/android/systemui/R$dimen;->shelf_icon_container_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 133
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 134
    sget v1, Lcom/android/systemui/R$dimen;->scroll_fast_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    .line 135
    sget v1, Lcom/android/systemui/R$bool;->config_showNotificationShelf:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    const v1, 0x1050273

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconSize:I

    .line 137
    sget v1, Lcom/android/systemui/R$dimen;->hidden_shelf_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHiddenShelfIconSize:F

    .line 138
    sget v1, Lcom/android/systemui/R$dimen;->qs_notification_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mGapHeight:I

    .line 139
    sget v1, Lcom/android/systemui/R$dimen;->notification_corner_animation_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCornerAnimationDistance:F

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setInNotificationIconShelf(Z)V

    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 144
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private isTargetClipped(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 4

    .line 638
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfTransformationTarget()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 643
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    .line 644
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getContentTranslation()F

    move-result v3

    add-float/2addr v2, v3

    .line 645
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getRelativeTopPadding(Landroid/view/View;)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v2, p1

    .line 646
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v2, p1

    .line 647
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

    .line 423
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mFirstElementRoundness:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 424
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mFirstElementRoundness:F

    :cond_0
    return-void
.end method

.method private setHasItemsInStableShelf(Z)V
    .locals 1

    .line 765
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-eq v0, p1, :cond_0

    .line 766
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    .line 767
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    :cond_0
    return-void
.end method

.method private setHideBackground(Z)V
    .locals 1

    .line 707
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eq v0, p1, :cond_0

    .line 708
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    .line 709
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->updateOutline()V

    :cond_0
    return-void
.end method

.method private setIconTransformationAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableView;F)V
    .locals 7

    .line 651
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v0, :cond_0

    return-void

    .line 654
    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 655
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v1

    .line 656
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 660
    :cond_1
    iput p2, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 661
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDrawingAppearAnimation()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    const/4 v6, 0x0

    if-nez v3, :cond_6

    if-eqz v0, :cond_3

    .line 664
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isLowPriority()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 665
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->hasMaxNumDot()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    cmpl-float v0, p2, v6

    if-nez v0, :cond_4

    .line 666
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 667
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v0

    if-nez v0, :cond_6

    .line 668
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 669
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseZHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v5

    goto :goto_2

    :cond_6
    :goto_1
    move v0, v4

    :goto_2
    iput-boolean v0, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-eqz v0, :cond_7

    move p2, v6

    .line 671
    :cond_7
    iput p2, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 675
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result p2

    iput p2, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 677
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isTransformingIntoShelf()Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_3

    :cond_8
    move v4, v5

    :goto_3
    if-eqz v4, :cond_9

    const/high16 p2, 0x3f800000    # 1.0f

    .line 679
    iput p2, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 680
    iput p2, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 681
    iput-boolean v5, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 683
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    move-result p0

    .line 684
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContrastedStaticDrawableColor(I)I

    move-result p0

    .line 685
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isShowingIcon()Z

    move-result p2

    if-eqz p2, :cond_a

    if-eqz p0, :cond_a

    .line 686
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getOriginalIconColor()I

    move-result p1

    .line 687
    iget p2, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    invoke-static {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result p0

    .line 690
    :cond_a
    iput p0, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    return-void
.end method

.method private updateContinuousClipping(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 6

    .line 446
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    .line 447
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

    .line 448
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

    .line 450
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 451
    new-instance v2, Lcom/android/systemui/statusbar/NotificationShelf$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/systemui/statusbar/NotificationShelf$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 467
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 468
    new-instance p1, Lcom/android/systemui/statusbar/NotificationShelf$2;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationShelf$2;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 483
    invoke-virtual {v0, v4, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private updateIconClipAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 4

    .line 429
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    .line 430
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 434
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p1

    .line 435
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

    .line 436
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result p0

    if-nez p0, :cond_1

    sub-float/2addr v0, v1

    float-to-int p0, v0

    .line 438
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v1, p0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 439
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 441
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private updateIconPositioning(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FZZZ)V
    .locals 8

    .line 610
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    .line 611
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, p2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_2

    .line 615
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->isTargetClipped(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_2

    :cond_3
    move v2, v6

    :goto_2
    cmpl-float v7, p2, v2

    if-nez v7, :cond_6

    if-nez p3, :cond_4

    if-eqz p4, :cond_5

    :cond_4
    if-nez p5, :cond_5

    move v7, v4

    goto :goto_3

    :cond_5
    move v7, v3

    .line 618
    :goto_3
    iput-boolean v7, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    :cond_6
    if-nez p5, :cond_8

    if-nez p3, :cond_7

    if-eqz p4, :cond_8

    .line 621
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 622
    :cond_7
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    .line 623
    iput-boolean v4, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    .line 626
    :cond_8
    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHiddenAtAll()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result p3

    if-nez p3, :cond_a

    .line 627
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result p2

    if-eqz p2, :cond_9

    move p2, v5

    goto :goto_4

    :cond_9
    move p2, v6

    goto :goto_4

    .line 630
    :cond_a
    iget p3, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    cmpl-float p3, p3, v2

    if-eqz p3, :cond_b

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNoAnimationsInThisFrame:Z

    if-nez p3, :cond_b

    move v3, v4

    :cond_b
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    .line 633
    :goto_4
    iput v2, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 634
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationShelf;->setIconTransformationAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableView;F)V

    return-void
.end method

.method private updateInteractiveness()V
    .locals 2

    .line 791
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

    .line 792
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 793
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 794
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

    .line 493
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 494
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

    .line 495
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozingAndNotPulsing(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 497
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

    .line 500
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    move-result v2

    :goto_1
    cmpl-float p3, v0, p2

    if-lez p3, :cond_6

    if-nez v2, :cond_6

    .line 502
    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 503
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeExpanded()Z

    move-result p3

    if-nez p3, :cond_4

    if-nez v1, :cond_6

    :cond_4
    sub-float p2, v0, p2

    float-to-int p2, p2

    if-eqz v1, :cond_5

    .line 506
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 509
    :cond_5
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    goto :goto_2

    .line 511
    :cond_6
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    :goto_2
    if-eqz v2, :cond_7

    .line 514
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

    .line 731
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 732
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    .line 733
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 734
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    aget v1, v2, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    return-void
.end method

.method private updateShelfTransformation(ILcom/android/systemui/statusbar/notification/row/ExpandableView;ZZZ)F
    .locals 11

    move-object v0, p0

    .line 536
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    .line 537
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v2

    iget v3, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    add-int/2addr v2, v3

    move-object v3, p2

    .line 538
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/NotificationShelf;->calculateIconTransformationStart(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)F

    move-result v4

    int-to-float v5, v2

    add-float/2addr v5, v1

    sub-float/2addr v5, v4

    .line 544
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    .line 542
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    if-eqz p5, :cond_0

    .line 547
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 550
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 548
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :cond_0
    int-to-float v2, v2

    add-float v6, v1, v2

    .line 556
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v7

    .line 557
    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result v8

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v8

    if-nez v8, :cond_2

    .line 559
    iget v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mIndexOfFirstViewInShelf:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    move v2, p1

    if-lt v2, v1, :cond_6

    :cond_1
    move v2, v10

    move v9, v2

    goto :goto_1

    :cond_2
    cmpl-float v6, v6, v7

    if-ltz v6, :cond_6

    .line 563
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 564
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isUnlockHintRunning()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_3
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 565
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeExpanded()Z

    move-result v6

    if-nez v6, :cond_4

    .line 566
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    move-result v6

    if-nez v6, :cond_6

    :cond_4
    cmpg-float v6, v1, v7

    if-gez v6, :cond_1

    sub-float v6, v7, v1

    div-float v2, v6, v2

    .line 570
    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v2, v10, v2

    if-eqz p5, :cond_5

    sub-float/2addr v4, v1

    div-float/2addr v6, v4

    goto :goto_0

    :cond_5
    sub-float/2addr v7, v4

    div-float v6, v7, v5

    .line 580
    :goto_0
    invoke-static {v6, v9, v10}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    sub-float/2addr v10, v1

    move v9, v2

    move v2, v10

    goto :goto_1

    :cond_6
    move v2, v9

    :goto_1
    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    .line 588
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconPositioning(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FZZZ)V

    return v9
.end method


# virtual methods
.method public bind(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 119
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    return-void
.end method

.method public createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 2

    .line 165
    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/NotificationShelf$1;)V

    return-object v0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object p0
.end method

.method public getNotGoneIndex()I
    .locals 0

    .line 761
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    return p0
.end method

.method public getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 0

    .line 160
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

.method public needsClippingToShelf()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected needsOutline()Z
    .locals 1

    .line 715
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

    .line 739
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 746
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 747
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 748
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

    .line 150
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 98
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onFinishInflate()V

    .line 99
    sget v0, Lcom/android/systemui/R$id;->content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipToActualHeight(Z)V

    .line 104
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 105
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setIsStaticLayout(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setBottomRoundness(FZ)Z

    .line 108
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setTopRoundness(FZ)Z

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setFirstInSection(Z)V

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 818
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 819
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    if-eqz v0, :cond_0

    .line 820
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 821
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    .line 824
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$string;->accessibility_overflow_action:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 825
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 721
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onLayout(ZIIII)V

    .line 722
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateRelativeOffset()V

    .line 725
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 726
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    neg-int p3, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    const/4 p5, 0x0

    invoke-virtual {p2, p5, p3, p4, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 727
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 832
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateRelativeOffset()V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 786
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    .line 787
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0

    .line 804
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    if-nez p1, :cond_0

    .line 807
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 0

    .line 780
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 781
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public setController(Lcom/android/systemui/statusbar/NotificationShelfController;)V
    .locals 0

    .line 841
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mController:Lcom/android/systemui/statusbar/NotificationShelfController;

    return-void
.end method

.method public setFakeShadowIntensity(FFII)V
    .locals 1

    .line 523
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 526
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setFakeShadowIntensity(FFII)V

    return-void
.end method

.method public setIndexOfFirstViewInShelf(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 1

    .line 845
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIndexOfFirstViewInShelf:I

    return-void
.end method

.method public setMaxLayoutHeight(I)V
    .locals 0

    .line 754
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    return-void
.end method

.method public updateAppearance()V
    .locals 29

    move-object/from16 v6, p0

    .line 230
    iget-boolean v0, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 234
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v7

    .line 236
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v8

    const/4 v9, -0x1

    .line 237
    iput v9, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 242
    iget-boolean v0, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$100(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    .line 248
    :goto_0
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getCurrentScrollVelocity()F

    move-result v0

    .line 249
    iget v1, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 250
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 251
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpandingVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v13, 0x1

    .line 252
    :goto_2
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 253
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPanelTracking()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v14, 0x1

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    .line 254
    :goto_3
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseZHeight()I

    move-result v15

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 260
    :goto_4
    iget-object v5, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildCount()I

    move-result v5

    const/16 v9, 0x8

    const/high16 v20, 0x3f800000    # 1.0f

    if-ge v4, v5, :cond_1f

    .line 261
    iget-object v5, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildAt(I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v5

    .line 262
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->needsClippingToShelf()Z

    move-result v21

    if-eqz v21, :cond_1e

    move/from16 v21, v0

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-ne v0, v9, :cond_5

    move/from16 v26, v1

    move/from16 v25, v2

    move/from16 v27, v4

    move-object/from16 v24, v8

    move/from16 v28, v13

    move/from16 v4, v17

    move/from16 v8, v21

    const/4 v0, 0x0

    const/4 v9, 0x0

    move/from16 v21, v15

    move v15, v3

    goto/16 :goto_16

    .line 266
    :cond_5
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getFinalTranslationZ(Landroid/view/View;)F

    move-result v0

    int-to-float v9, v15

    cmpl-float v0, v0, v9

    if-gtz v0, :cond_7

    .line 267
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v9, 0x1

    :goto_6
    if-ne v5, v8, :cond_8

    const/16 v22, 0x1

    goto :goto_7

    :cond_8
    const/16 v22, 0x0

    .line 269
    :goto_7
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v23

    move-object/from16 v24, v8

    move/from16 v8, v21

    move-object/from16 v0, p0

    move/from16 v21, v15

    move v15, v1

    move v1, v4

    move/from16 v25, v2

    move-object v2, v5

    move/from16 v26, v15

    move v15, v3

    move v3, v13

    move/from16 v27, v4

    move v4, v14

    move-object/from16 v19, v5

    move/from16 v28, v13

    const/4 v13, 0x0

    move/from16 v5, v22

    .line 271
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationShelf;->updateShelfTransformation(ILcom/android/systemui/statusbar/notification/row/ExpandableView;ZZZ)F

    move-result v0

    .line 274
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackY()F

    move-result v1

    iget-object v2, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 275
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackHeight()F

    move-result v2

    add-float/2addr v1, v2

    if-eqz v22, :cond_9

    .line 277
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_9
    if-nez v9, :cond_b

    if-eqz v12, :cond_a

    goto :goto_8

    .line 280
    :cond_a
    iget v1, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    int-to-float v1, v1

    sub-float v1, v7, v1

    :cond_b
    :goto_8
    move-object/from16 v2, v19

    .line 282
    invoke-direct {v6, v2, v1, v8}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FI)I

    move-result v1

    .line 283
    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 287
    instance-of v1, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_14

    .line 288
    move-object v5, v2

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    add-float v16, v16, v0

    .line 290
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    move-result v1

    cmpl-float v4, v23, v7

    if-ltz v4, :cond_d

    .line 291
    iget v4, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v15, -0x1

    if-ne v4, v15, :cond_c

    .line 292
    iput v8, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 293
    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setTintColor(I)V

    move/from16 v4, v17

    .line 294
    invoke-virtual {v6, v11, v4}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(IF)V

    goto :goto_a

    :cond_c
    move/from16 v4, v17

    goto :goto_9

    :cond_d
    move/from16 v4, v17

    const/4 v15, -0x1

    .line 296
    :goto_9
    iget v13, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    if-ne v13, v15, :cond_e

    move/from16 v17, v0

    goto :goto_b

    :cond_e
    :goto_a
    move/from16 v17, v4

    move v10, v11

    :goto_b
    if-eqz v22, :cond_10

    .line 301
    iget-object v4, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mController:Lcom/android/systemui/statusbar/NotificationShelfController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationShelfController;->canModifyColorOfNotifications()Z

    move-result v4

    if-eqz v4, :cond_10

    if-nez v18, :cond_f

    move v4, v1

    goto :goto_c

    :cond_f
    move/from16 v4, v18

    .line 305
    :goto_c
    invoke-virtual {v5, v4, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(IF)V

    move v11, v4

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_d

    :cond_10
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 308
    invoke-virtual {v5, v4, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(IF)V

    move v11, v1

    :goto_d
    if-nez v8, :cond_11

    if-nez v9, :cond_12

    .line 311
    :cond_11
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAboveShelf(Z)V

    :cond_12
    if-nez v8, :cond_13

    .line 314
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v4

    .line 315
    invoke-direct {v6, v4}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 319
    iget v4, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    cmpl-float v4, v4, v20

    if-nez v4, :cond_13

    .line 321
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v9

    sub-float/2addr v4, v9

    float-to-int v4, v4

    .line 322
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCurrentTopRoundness()F

    move-result v5

    goto :goto_e

    :cond_13
    move/from16 v5, v25

    move/from16 v4, v26

    :goto_e
    add-int/lit8 v8, v8, 0x1

    move/from16 v18, v11

    move v11, v10

    move v10, v1

    move v1, v4

    goto :goto_f

    :cond_14
    move v0, v13

    move/from16 v4, v17

    move/from16 v5, v25

    move/from16 v1, v26

    .line 330
    :goto_f
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v4

    int-to-float v4, v4

    add-float v4, v23, v4

    .line 331
    iget v9, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mCornerAnimationDistance:F

    iget-object v13, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 332
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpansionFraction()F

    move-result v13

    mul-float/2addr v9, v13

    sub-float v13, v7, v9

    .line 335
    instance-of v15, v2, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    if-eqz v15, :cond_1c

    .line 336
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    cmpg-float v15, v23, v7

    if-gez v15, :cond_1c

    .line 339
    iget-object v15, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 340
    invoke-virtual {v15, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isViewAffectedBySwipe(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v15

    if-nez v15, :cond_1c

    iget-object v15, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 341
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulsing()Z

    move-result v15

    if-nez v15, :cond_1c

    iget-object v15, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 342
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v15

    if-nez v15, :cond_1c

    cmpl-float v15, v4, v13

    if-ltz v15, :cond_16

    sub-float/2addr v4, v13

    div-float/2addr v4, v9

    .line 346
    invoke-static {v4}, Landroid/util/MathUtils;->saturate(F)F

    move-result v4

    .line 348
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isLastInSection()Z

    move-result v15

    if-eqz v15, :cond_15

    move/from16 v4, v20

    goto :goto_10

    :cond_15
    mul-float v4, v4, v20

    :goto_10
    const/4 v15, 0x0

    .line 349
    invoke-virtual {v2, v4, v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setBottomRoundness(FZ)Z

    goto :goto_12

    :cond_16
    const/4 v15, 0x0

    cmpg-float v4, v4, v13

    if-gez v4, :cond_18

    .line 354
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isLastInSection()Z

    move-result v4

    if-eqz v4, :cond_17

    move/from16 v4, v20

    goto :goto_11

    :cond_17
    move v4, v0

    :goto_11
    invoke-virtual {v2, v4, v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setBottomRoundness(FZ)Z

    :cond_18
    :goto_12
    cmpl-float v4, v23, v13

    if-ltz v4, :cond_1a

    sub-float v23, v23, v13

    div-float v23, v23, v9

    .line 359
    invoke-static/range {v23 .. v23}, Landroid/util/MathUtils;->saturate(F)F

    move-result v4

    .line 361
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isFirstInSection()Z

    move-result v9

    if-eqz v9, :cond_19

    goto :goto_13

    :cond_19
    mul-float v20, v20, v4

    :goto_13
    move/from16 v4, v20

    const/4 v9, 0x0

    .line 362
    invoke-virtual {v2, v4, v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setTopRoundness(FZ)Z

    goto :goto_15

    :cond_1a
    const/4 v9, 0x0

    cmpg-float v4, v23, v13

    if-gez v4, :cond_1d

    .line 367
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isFirstInSection()Z

    move-result v4

    if-eqz v4, :cond_1b

    move/from16 v4, v20

    goto :goto_14

    :cond_1b
    move v4, v0

    :goto_14
    invoke-virtual {v2, v4, v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setTopRoundness(FZ)Z

    goto :goto_15

    :cond_1c
    const/4 v9, 0x0

    :cond_1d
    :goto_15
    move v2, v5

    goto :goto_17

    :cond_1e
    move/from16 v26, v1

    move/from16 v25, v2

    move/from16 v27, v4

    move-object/from16 v24, v8

    move/from16 v28, v13

    move/from16 v21, v15

    move/from16 v4, v17

    const/4 v9, 0x0

    move v8, v0

    move v15, v3

    const/4 v0, 0x0

    :goto_16
    move/from16 v17, v4

    move v3, v15

    move/from16 v2, v25

    move/from16 v1, v26

    :goto_17
    add-int/lit8 v4, v27, 0x1

    move v0, v8

    move/from16 v15, v21

    move-object/from16 v8, v24

    move/from16 v13, v28

    const/4 v9, -0x1

    goto/16 :goto_4

    :cond_1f
    move v8, v0

    move/from16 v26, v1

    move/from16 v25, v2

    move v15, v3

    const/4 v1, 0x0

    .line 374
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->clipTransientViews()V

    .line 376
    invoke-virtual {v6, v15}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setClipTopAmount(I)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-nez v0, :cond_21

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    if-ge v15, v0, :cond_21

    iget-boolean v0, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-eqz v0, :cond_21

    cmpg-float v0, v16, v20

    if-gez v0, :cond_20

    goto :goto_18

    :cond_20
    move v10, v1

    goto :goto_19

    :cond_21
    :goto_18
    const/4 v10, 0x1

    :goto_19
    if-eqz v10, :cond_22

    const/4 v4, 0x4

    goto :goto_1a

    :cond_22
    move v4, v1

    .line 384
    :goto_1a
    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move/from16 v11, v26

    .line 385
    invoke-virtual {v6, v11}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setBackgroundTop(I)V

    move/from16 v2, v25

    .line 386
    invoke-direct {v6, v2}, Lcom/android/systemui/statusbar/NotificationShelf;->setFirstElementRoundness(F)V

    .line 387
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v2, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getSpeedBumpIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setSpeedBumpIndex(I)V

    .line 388
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconTranslations()V

    .line 389
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    move v11, v1

    .line 390
    :goto_1b
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildCount()I

    move-result v0

    if-ge v11, v0, :cond_25

    .line 391
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildAt(I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    .line 392
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_24

    .line 393
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v9, :cond_23

    goto :goto_1c

    .line 396
    :cond_23
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 397
    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateContinuousClipping(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_24
    :goto_1c
    add-int/lit8 v11, v11, 0x1

    goto :goto_1b

    .line 400
    :cond_25
    invoke-direct {v6, v10}, Lcom/android/systemui/statusbar/NotificationShelf;->setHideBackground(Z)V

    .line 401
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    .line 402
    iput v8, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    :cond_26
    return-void
.end method

.method public updateState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 6

    .line 171
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    .line 173
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 174
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    .line 175
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 178
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseZHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 179
    iput v3, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 181
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpansionFraction()F

    move-result v2

    .line 182
    invoke-static {v2}, Lcom/android/systemui/animation/Interpolators;->getNotificationScrimAlpha(F)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 185
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getHideAmount()F

    move-result v5

    sub-float/2addr v2, v5

    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 187
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getSpeedBumpIndex()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 188
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    .line 189
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 190
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$102(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z

    .line 191
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$202(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 192
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 193
    iget v2, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeExpanded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 197
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isQsCustomizerShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez v0, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 200
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 203
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p0, :cond_5

    if-lez v0, :cond_5

    .line 208
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-eqz p0, :cond_5

    .line 211
    iput-boolean v4, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 215
    :cond_5
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackY()F

    move-result p0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackHeight()F

    move-result p1

    add-float/2addr p0, p1

    .line 216
    iget p1, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float p1, p1

    sub-float/2addr p0, p1

    iput p0, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    goto :goto_2

    .line 218
    :cond_6
    iput-boolean v4, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    const/16 p0, 0x40

    .line 219
    iput p0, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 220
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$102(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z

    :goto_2
    return-void
.end method
