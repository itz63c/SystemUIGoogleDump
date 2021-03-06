.class public Lcom/android/wm/shell/bubbles/BubbleData;
.super Ljava/lang/Object;
.source "BubbleData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;,
        Lcom/android/wm/shell/bubbles/BubbleData$Listener;,
        Lcom/android/wm/shell/bubbles/BubbleData$Update;
    }
.end annotation


# static fields
.field private static final BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelledListener:Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mExpanded:Z

.field private mListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

.field private mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mMaxBubbles:I

.field private mMaxOverflowBubbles:I

.field private final mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

.field private final mOverflowBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingBubbles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private final mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field private mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

.field private mShowingOverflow:Z

.field private mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

.field private mSuppressedGroupKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSuppressionListener:Lcom/android/wm/shell/bubbles/Bubbles$NotificationSuppressionChangedListener;

.field private mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;


# direct methods
.method public static synthetic $r8$lambda$E0LBY4hIy4adTwCh5iLnGJAtzls(Lcom/android/wm/shell/bubbles/BubbleData;ILcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->lambda$removeBubblesWithInvalidShortcuts$1(ILcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KBm04qnsAhTKXcg5hpW3_Mdl0CQ(Lcom/android/wm/shell/bubbles/BubbleData;ILcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->lambda$removeBubblesWithPackageName$3(ILcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MOxsVxWvOqwB_QUx8yCtjRjLMcM(Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->lambda$trim$5(Lcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UfMCE2721IC-BVb46Myc2EMZZQ8(Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/bubbles/Bubble;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->lambda$trim$4(Lcom/android/wm/shell/bubbles/Bubble;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Wj8UVf3vB_m65FDx8BVzTOWfgX0(Lcom/android/wm/shell/bubbles/Bubble;)J
    .locals 2

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->sortKey(Lcom/android/wm/shell/bubbles/Bubble;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$Y3VjJ4oev-Pko7uX9vaAF1kCdvw(Ljava/lang/String;Ljava/util/Set;Lcom/android/wm/shell/bubbles/Bubble;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->lambda$removeBubblesWithInvalidShortcuts$0(Ljava/lang/String;Ljava/util/Set;Lcom/android/wm/shell/bubbles/Bubble;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$e5C16JWj5lXc9UYnBhW56tNmnRE(Ljava/lang/String;Lcom/android/wm/shell/bubbles/Bubble;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->lambda$removeBubblesWithPackageName$2(Ljava/lang/String;Lcom/android/wm/shell/bubbles/Bubble;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 64
    sget-object v0, Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda5;

    .line 65
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleData;->BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleLogger;Lcom/android/wm/shell/bubbles/BubblePositioner;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    sget-object v0, Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda0;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    .line 162
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mContext:Landroid/content/Context;

    .line 163
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    .line 164
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 165
    iput-object p4, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 166
    new-instance p2, Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-direct {p2, p1, p3}, Lcom/android/wm/shell/bubbles/BubbleOverflow;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    .line 167
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 168
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    .line 169
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    .line 170
    new-instance p4, Lcom/android/wm/shell/bubbles/BubbleData$Update;

    const/4 v0, 0x0

    invoke-direct {p4, p2, p3, v0}, Lcom/android/wm/shell/bubbles/BubbleData$Update;-><init>(Ljava/util/List;Ljava/util/List;Lcom/android/wm/shell/bubbles/BubbleData$1;)V

    iput-object p4, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/wm/shell/R$integer;->bubbles_max_rendered:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxBubbles:I

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$integer;->bubbles_max_overflow:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxOverflowBubbles:I

    return-void
.end method

.method private dispatchPendingChanges()V
    .locals 4

    .line 585
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData$Update;->anythingChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData$Listener;->applyUpdate(Lcom/android/wm/shell/bubbles/BubbleData$Update;)V

    .line 588
    :cond_0
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/wm/shell/bubbles/BubbleData$Update;-><init>(Ljava/util/List;Ljava/util/List;Lcom/android/wm/shell/bubbles/BubbleData$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    return-void
.end method

.method private doAdd(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 424
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object p1, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 426
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 427
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->isExpanded()Z

    move-result p1

    if-nez p1, :cond_1

    .line 428
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    :cond_1
    return-void
.end method

.method private doRemove(Ljava/lang/String;I)V
    .locals 5

    .line 478
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->indexForKey(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 483
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/16 v0, 0x9

    if-eq p2, v0, :cond_1

    const/4 v0, 0x7

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/16 v0, 0xc

    if-eq p2, v0, :cond_1

    const/16 v0, 0xd

    if-ne p2, v0, :cond_3

    .line 491
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 496
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->stopInflation()V

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleLogger;->logOverflowRemove(Lcom/android/wm/shell/bubbles/Bubble;I)V

    .line 499
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 500
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbleRemoved(Lcom/android/wm/shell/bubbles/Bubble;I)V

    .line 501
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;

    :cond_3
    return-void

    .line 505
    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 506
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->stopInflation()V

    .line 507
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 508
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->hasOverflowBubbles()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showingInTaskbar()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 511
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->setShowingOverflow(Z)V

    .line 512
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-direct {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    .line 514
    invoke-direct {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpandedInternal(Z)V

    const/4 v1, 0x0

    .line 517
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 520
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_8

    .line 522
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 524
    :cond_8
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 525
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    invoke-virtual {v1, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbleRemoved(Lcom/android/wm/shell/bubbles/Bubble;I)V

    .line 526
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_9

    .line 527
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iget-boolean v3, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->repackAll()Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 530
    :cond_9
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->overflowBubble(ILcom/android/wm/shell/bubbles/Bubble;)V

    .line 533
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 535
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 536
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 537
    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 539
    :cond_a
    invoke-direct {p0, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->maybeSendDeleteIntent(ILcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method private doUpdate(Lcom/android/wm/shell/bubbles/Bubble;Z)V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object p1, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 449
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 450
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 451
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 452
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 453
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput-boolean p2, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 454
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    :cond_1
    return-void
.end method

.method private indexForKey(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 747
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 748
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 749
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static synthetic lambda$removeBubblesWithInvalidShortcuts$0(Ljava/lang/String;Ljava/util/Set;Lcom/android/wm/shell/bubbles/Bubble;)Z
    .locals 3

    .line 386
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 387
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->hasMetadataShortcutId()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    .line 392
    :cond_0
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->hasMetadataShortcutId()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 393
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method private synthetic lambda$removeBubblesWithInvalidShortcuts$1(ILcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    .line 400
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissBubbleWithKey(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic lambda$removeBubblesWithPackageName$2(Ljava/lang/String;Lcom/android/wm/shell/bubbles/Bubble;)Z
    .locals 0

    .line 410
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$removeBubblesWithPackageName$3(ILcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    .line 413
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissBubbleWithKey(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$trim$4(Lcom/android/wm/shell/bubbles/Bubble;)Z
    .locals 0

    .line 438
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/bubbles/Bubble;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$trim$5(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 1

    .line 440
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    return-void
.end method

.method private maybeSendDeleteIntent(ILcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    return-void

    .line 737
    :cond_0
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 740
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 742
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to send delete intent for bubble with key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bubbles"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;)V"
        }
    .end annotation

    .line 461
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 462
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    .line 463
    invoke-interface {p2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 468
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 469
    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private repackAll()Z
    .locals 4

    .line 719
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 722
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 724
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/bubbles/BubbleData;->BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    .line 725
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 726
    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 727
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 730
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 731
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x1

    return p0
.end method

.method private setExpandedInternal(Z)V
    .locals 4

    .line 660
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 664
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "Bubbles"

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    if-nez v1, :cond_1

    const-string p0, "Attempt to expand stack when empty!"

    .line 665
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 668
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-nez v1, :cond_2

    const-string p0, "Attempt to expand stack without selected bubble!"

    .line 669
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 672
    :cond_2
    instance-of v2, v1, Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v2, :cond_3

    .line 673
    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/bubbles/Bubble;->markAsAccessedAt(J)V

    .line 675
    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iget-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->repackAll()Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    goto :goto_1

    .line 676
    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 679
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iget-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->repackAll()Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 682
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 684
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 685
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-direct {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    goto :goto_0

    .line 687
    :cond_5
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-direct {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 690
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_7

    .line 692
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 694
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    check-cast v3, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 695
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    check-cast v3, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 696
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-boolean v0, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 700
    :cond_7
    :goto_1
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 701
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expanded:Z

    .line 702
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expandedChanged:Z

    return-void
.end method

.method private setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 4

    .line 600
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 604
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Overflow"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 605
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 606
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    .line 607
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot select bubble which doesn\'t exist! ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") bubbles="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bubbles"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 613
    :cond_2
    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    .line 614
    move-object v1, p1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/bubbles/Bubble;->markAsAccessedAt(J)V

    .line 616
    :cond_3
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 617
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 618
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectionChanged:Z

    return-void
.end method

.method private static sortKey(Lcom/android/wm/shell/bubbles/Bubble;)J
    .locals 2

    .line 706
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->getLastActivity()J

    move-result-wide v0

    return-wide v0
.end method

.method private trim()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxBubbles:I

    if-le v0, v1, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda9;

    .line 436
    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/bubbles/BubbleData;)V

    .line 438
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 439
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/BubbleData;)V

    .line 440
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method addSummaryToSuppress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dismissAll(I)V
    .locals 2

    .line 573
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 576
    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpandedInternal(Z)V

    const/4 v1, 0x0

    .line 577
    invoke-direct {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 578
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 579
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    goto :goto_0

    .line 581
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public dismissBubbleWithKey(Ljava/lang/String;I)V
    .locals 0

    .line 334
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    .line 335
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "selected: "

    .line 838
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_0

    .line 840
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 839
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "expanded: "

    .line 842
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 843
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "stack bubble count:    "

    .line 845
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 846
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 847
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 848
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/wm/shell/bubbles/Bubble;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "overflow bubble count:    "

    .line 851
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 853
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 854
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/wm/shell/bubbles/Bubble;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p1, "summaryKeys: "

    .line 857
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 858
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 859
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 860
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "   suppressing: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public getActiveBubbles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getAnyBubbleWithkey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 775
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v0

    if-nez v0, :cond_0

    .line 777
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/4 v0, 0x0

    .line 785
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 786
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 787
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getBubbleWithView(Landroid/view/View;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 3

    const/4 v0, 0x0

    .line 796
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 797
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 798
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBubbles()Ljava/util/List;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;"
        }
    .end annotation

    .line 761
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;Lcom/android/wm/shell/bubbles/Bubble;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 4

    if-eqz p2, :cond_0

    .line 258
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 259
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v1

    if-nez v1, :cond_3

    .line 262
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 265
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/bubbles/Bubble;

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_4

    .line 271
    new-instance p2, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressionListener:Lcom/android/wm/shell/bubbles/Bubbles$NotificationSuppressionChangedListener;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mCancelledListener:Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMainExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p2, p1, v1, v2, v3}, Lcom/android/wm/shell/bubbles/Bubble;-><init>(Lcom/android/wm/shell/bubbles/BubbleEntry;Lcom/android/wm/shell/bubbles/Bubbles$NotificationSuppressionChangedListener;Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    :cond_3
    :goto_1
    move-object p2, v1

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 280
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/bubbles/Bubble;->setEntry(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    .line 282
    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public getOverflow()Lcom/android/wm/shell/bubbles/BubbleOverflow;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    return-object p0
.end method

.method public getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/4 v0, 0x0

    .line 807
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 808
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 809
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOverflowBubbles()Ljava/util/List;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;"
        }
    .end annotation

    .line 769
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedBubble()Lcom/android/wm/shell/bubbles/BubbleViewProvider;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    return-object p0
.end method

.method getSummaryKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public hasAnyBubbleWithKey(Ljava/lang/String;)Z
    .locals 1

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

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

.method public hasBubbleInStackWithKey(Ljava/lang/String;)Z
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasBubbles()Z
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasOverflowBubbleWithKey(Ljava/lang/String;)Z
    .locals 0

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasOverflowBubbles()Z
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isExpanded()Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    return p0
.end method

.method isShowingOverflow()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showingInTaskbar()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSummarySuppressed(Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 370
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;ILjava/lang/String;IIFF)V
    .locals 8

    if-nez p1, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    move-object v1, p3

    move v2, p2

    move v3, p4

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/bubbles/BubbleLogger;->logStackUiChanged(Ljava/lang/String;IIFF)V

    goto :goto_0

    .line 641
    :cond_0
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Overflow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    .line 643
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mCurrentUserId:I

    invoke-virtual {p1, p3, p0}, Lcom/android/wm/shell/bubbles/BubbleLogger;->logShowOverflow(Ljava/lang/String;I)V

    goto :goto_0

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    move-object v1, p1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    move-object v2, p3

    move v3, p2

    move v4, p4

    move v5, p6

    move v6, p7

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/bubbles/BubbleLogger;->logBubbleUiChanged(Lcom/android/wm/shell/bubbles/Bubble;Ljava/lang/String;IIFFI)V

    :cond_2
    :goto_0
    return-void
.end method

.method notificationEntryUpdated(Lcom/android/wm/shell/bubbles/Bubble;ZZ)V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v0

    .line 297
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->isVisuallyInterruptive()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    or-int/2addr p2, v1

    if-nez v0, :cond_0

    .line 301
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressFlyout(Z)V

    .line 302
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->doAdd(Lcom/android/wm/shell/bubbles/Bubble;)V

    .line 303
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->trim()V

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressFlyout(Z)V

    xor-int/2addr p2, v2

    .line 308
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->doUpdate(Lcom/android/wm/shell/bubbles/Bubble;Z)V

    .line 311
    :goto_0
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->shouldAutoExpand()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 312
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setShouldAutoExpand(Z)V

    .line 313
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 314
    iget-boolean p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-nez p2, :cond_1

    .line 315
    invoke-direct {p0, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpandedInternal(Z)V

    .line 319
    :cond_1
    iget-boolean p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-ne p2, p1, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    if-nez p2, :cond_3

    if-eqz p3, :cond_3

    .line 320
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    move-result p3

    if-nez p3, :cond_4

    :cond_3
    move v0, v2

    .line 321
    :cond_4
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressNotification(Z)V

    xor-int/2addr p2, v2

    .line 322
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/Bubble;->setShowDot(Z)V

    .line 324
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method overflowBubble(ILcom/android/wm/shell/bubbles/Bubble;)V
    .locals 2

    .line 543
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->getPendingIntentCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    invoke-virtual {v0, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleLogger;->logOverflowAdd(Lcom/android/wm/shell/bubbles/Bubble;I)V

    .line 553
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 554
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object p2, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 555
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->stopInflation()V

    .line 556
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxOverflowBubbles:I

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    .line 558
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 562
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbleRemoved(Lcom/android/wm/shell/bubbles/Bubble;I)V

    .line 563
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    sget-object v1, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_MAX_REACHED:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    invoke-virtual {v0, p2, v1}, Lcom/android/wm/shell/bubbles/BubbleLogger;->log(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 564
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 565
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;

    :cond_1
    :goto_0
    return-void
.end method

.method public removeBubblesWithInvalidShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    .line 380
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 381
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 382
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 385
    :cond_0
    new-instance p2, Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda8;

    invoke-direct {p2, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 399
    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p3}, Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/BubbleData;I)V

    .line 402
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p3, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 404
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    move-result-object p3

    .line 403
    invoke-direct {p0, p3, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public removeBubblesWithPackageName(Ljava/lang/String;I)V
    .locals 1

    .line 409
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    .line 412
    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/bubbles/BubbleData;I)V

    .line 415
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2, v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 416
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2, v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method removeSuppressedSummary(Ljava/lang/String;)V
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setCurrentUserId(I)V
    .locals 0

    .line 622
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mCurrentUserId:I

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 227
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpandedInternal(Z)V

    .line 228
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public setListener(Lcom/android/wm/shell/bubbles/BubbleData$Listener;)V
    .locals 0

    .line 822
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    return-void
.end method

.method public setMaxOverflowBubbles(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 831
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxOverflowBubbles:I

    return-void
.end method

.method public setPendingIntentCancelledListener(Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mCancelledListener:Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;

    return-void
.end method

.method public setSelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 236
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method setShowingOverflow(Z)V
    .locals 0

    .line 240
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    return-void
.end method

.method public setSuppressionChangedListener(Lcom/android/wm/shell/bubbles/Bubbles$NotificationSuppressionChangedListener;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressionListener:Lcom/android/wm/shell/bubbles/Bubbles$NotificationSuppressionChangedListener;

    return-void
.end method

.method setTimeSource(Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 818
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

    return-void
.end method
