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

.field private final mSuppressedBubbles:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/LocusId;",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

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

.field private mSuppressionListener:Lcom/android/wm/shell/bubbles/Bubbles$SuppressionChangedListener;

.field private mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

.field private final mVisibleLocusIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/LocusId;",
            ">;"
        }
    .end annotation
.end field


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

    .line 67
    sget-object v0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda5;

    .line 68
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleData;->BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleLogger;Lcom/android/wm/shell/bubbles/BubblePositioner;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    .line 138
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mVisibleLocusIds:Landroid/util/ArraySet;

    .line 150
    sget-object v0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda0;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    .line 174
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mContext:Landroid/content/Context;

    .line 175
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    .line 176
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 177
    iput-object p4, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 178
    new-instance p2, Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-direct {p2, p1, p3}, Lcom/android/wm/shell/bubbles/BubbleOverflow;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    .line 179
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 180
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    .line 181
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    .line 182
    new-instance p4, Lcom/android/wm/shell/bubbles/BubbleData$Update;

    const/4 v0, 0x0

    invoke-direct {p4, p2, p3, v0}, Lcom/android/wm/shell/bubbles/BubbleData$Update;-><init>(Ljava/util/List;Ljava/util/List;Lcom/android/wm/shell/bubbles/BubbleData$1;)V

    iput-object p4, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/wm/shell/R$integer;->bubbles_max_rendered:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxBubbles:I

    .line 184
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

    .line 658
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData$Update;->anythingChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData$Listener;->applyUpdate(Lcom/android/wm/shell/bubbles/BubbleData$Update;)V

    .line 661
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

    .line 447
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 448
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object p1, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 450
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

    .line 451
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->isExpanded()Z

    move-result p1

    if-nez p1, :cond_1

    .line 452
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

    .line 502
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->indexForKey(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 507
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

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-ne p2, v0, :cond_3

    .line 516
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 521
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->stopInflation()V

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleLogger;->logOverflowRemove(Lcom/android/wm/shell/bubbles/Bubble;I)V

    .line 524
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 525
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbleRemoved(Lcom/android/wm/shell/bubbles/Bubble;I)V

    .line 526
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;

    :cond_3
    return-void

    .line 530
    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 531
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->stopInflation()V

    .line 532
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 533
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

    .line 536
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->setShowingOverflow(Z)V

    .line 537
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-direct {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    .line 539
    invoke-direct {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpandedInternal(Z)V

    const/4 v1, 0x0

    .line 542
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 545
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_8

    .line 547
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 549
    :cond_8
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 550
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    invoke-virtual {v1, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbleRemoved(Lcom/android/wm/shell/bubbles/Bubble;I)V

    .line 551
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_9

    .line 552
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iget-boolean v3, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->repackAll()Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 555
    :cond_9
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->overflowBubble(ILcom/android/wm/shell/bubbles/Bubble;)V

    .line 558
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 560
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 561
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 562
    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 564
    :cond_a
    invoke-direct {p0, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->maybeSendDeleteIntent(ILcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method private doUpdate(Lcom/android/wm/shell/bubbles/Bubble;Z)V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object p1, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 473
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 474
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 475
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 476
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 477
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput-boolean p2, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 478
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    :cond_1
    return-void
.end method

.method private getBubbleInStackWithLocusId(Landroid/content/LocusId;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 870
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 871
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/bubbles/Bubble;

    .line 872
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/Bubble;->getLocusId()Landroid/content/LocusId;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/LocusId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private indexForKey(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 820
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 821
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 822
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

    .line 410
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 411
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->hasMetadataShortcutId()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    .line 416
    :cond_0
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->hasMetadataShortcutId()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 418
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
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

    .line 424
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissBubbleWithKey(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic lambda$removeBubblesWithPackageName$2(Ljava/lang/String;Lcom/android/wm/shell/bubbles/Bubble;)Z
    .locals 0

    .line 434
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$removeBubblesWithPackageName$3(ILcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    .line 437
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissBubbleWithKey(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$trim$4(Lcom/android/wm/shell/bubbles/Bubble;)Z
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/bubbles/Bubble;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$trim$5(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 1

    .line 464
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

    .line 810
    :cond_0
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 813
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 815
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

    .line 485
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 486
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

    .line 487
    invoke-interface {p2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 492
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

    .line 493
    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private repackAll()Z
    .locals 4

    .line 792
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 795
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 797
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/bubbles/BubbleData;->BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    .line 798
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 799
    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 800
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 803
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 804
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x1

    return p0
.end method

.method private setExpandedInternal(Z)V
    .locals 4

    .line 733
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 737
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "Bubbles"

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    if-nez v1, :cond_1

    const-string p0, "Attempt to expand stack when empty!"

    .line 738
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 741
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-nez v1, :cond_2

    const-string p0, "Attempt to expand stack without selected bubble!"

    .line 742
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 745
    :cond_2
    instance-of v2, v1, Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v2, :cond_3

    .line 746
    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/bubbles/Bubble;->markAsAccessedAt(J)V

    .line 748
    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iget-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->repackAll()Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    goto :goto_1

    .line 749
    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 752
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iget-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->repackAll()Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 755
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 757
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 758
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-direct {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    goto :goto_0

    .line 760
    :cond_5
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-direct {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 763
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_7

    .line 765
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 767
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    check-cast v3, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 768
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    check-cast v3, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 769
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-boolean v0, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 773
    :cond_7
    :goto_1
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 774
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expanded:Z

    .line 775
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expandedChanged:Z

    return-void
.end method

.method private setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 4

    .line 673
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

    .line 677
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

    .line 678
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 679
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    .line 680
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 682
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

    .line 686
    :cond_2
    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    .line 687
    move-object v1, p1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/bubbles/Bubble;->markAsAccessedAt(J)V

    .line 689
    :cond_3
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 690
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 691
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectionChanged:Z

    return-void
.end method

.method private static sortKey(Lcom/android/wm/shell/bubbles/Bubble;)J
    .locals 2

    .line 779
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->getLastActivity()J

    move-result-wide v0

    return-wide v0
.end method

.method private trim()V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxBubbles:I

    if-le v0, v1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda9;

    .line 460
    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/bubbles/BubbleData;)V

    .line 462
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 463
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/BubbleData;)V

    .line 464
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method addSummaryToSuppress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 369
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearOverflow()V
    .locals 2

    .line 651
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    goto :goto_0

    .line 654
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public dismissAll(I)V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 602
    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpandedInternal(Z)V

    const/4 v1, 0x0

    .line 603
    invoke-direct {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 604
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 605
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    goto :goto_0

    .line 607
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public dismissBubbleWithKey(Ljava/lang/String;I)V
    .locals 0

    .line 358
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    .line 359
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "selected: "

    .line 923
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 924
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_0

    .line 925
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 924
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "expanded: "

    .line 927
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 928
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "stack bubble count:    "

    .line 930
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 932
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

    .line 933
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/wm/shell/bubbles/Bubble;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "overflow bubble count:    "

    .line 936
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 937
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 938
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

    .line 939
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/wm/shell/bubbles/Bubble;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p1, "summaryKeys: "

    .line 942
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 943
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 944
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

    .line 945
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

    .line 232
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

    .line 848
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v0

    if-nez v0, :cond_0

    .line 850
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

    .line 858
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 859
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 860
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

    .line 881
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 882
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 883
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

    .line 834
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;Lcom/android/wm/shell/bubbles/Bubble;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 4

    if-eqz p2, :cond_0

    .line 270
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v1

    if-nez v1, :cond_3

    .line 274
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 277
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/bubbles/Bubble;

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_4

    .line 283
    new-instance p2, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressionListener:Lcom/android/wm/shell/bubbles/Bubbles$SuppressionChangedListener;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mCancelledListener:Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMainExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p2, p1, v1, v2, v3}, Lcom/android/wm/shell/bubbles/Bubble;-><init>(Lcom/android/wm/shell/bubbles/BubbleEntry;Lcom/android/wm/shell/bubbles/Bubbles$SuppressionChangedListener;Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    :cond_3
    :goto_1
    move-object p2, v1

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 292
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/bubbles/Bubble;->setEntry(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    .line 294
    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public getOverflow()Lcom/android/wm/shell/bubbles/BubbleOverflow;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    return-object p0
.end method

.method public getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/4 v0, 0x0

    .line 892
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 893
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 894
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

    .line 842
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedBubble()Lcom/android/wm/shell/bubbles/BubbleViewProvider;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    return-object p0
.end method

.method getSummaryKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public hasAnyBubbleWithKey(Ljava/lang/String;)Z
    .locals 1

    .line 210
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

    .line 214
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

    .line 198
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasOverflowBubbleWithKey(Ljava/lang/String;)Z
    .locals 0

    .line 218
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

    .line 202
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isExpanded()Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    return p0
.end method

.method isShowingOverflow()Z
    .locals 1

    .line 256
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

    .line 394
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;ILjava/lang/String;IIFF)V
    .locals 8

    if-nez p1, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    move-object v1, p3

    move v2, p2

    move v3, p4

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/bubbles/BubbleLogger;->logStackUiChanged(Ljava/lang/String;IIFF)V

    goto :goto_0

    .line 714
    :cond_0
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Overflow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    .line 716
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mCurrentUserId:I

    invoke-virtual {p1, p3, p0}, Lcom/android/wm/shell/bubbles/BubbleLogger;->logShowOverflow(Ljava/lang/String;I)V

    goto :goto_0

    .line 719
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

    .line 307
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v0

    .line 309
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->isVisuallyInterruptive()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    or-int/2addr p2, v1

    if-nez v0, :cond_0

    .line 313
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressFlyout(Z)V

    .line 314
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->doAdd(Lcom/android/wm/shell/bubbles/Bubble;)V

    .line 315
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->trim()V

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressFlyout(Z)V

    xor-int/2addr p2, v2

    .line 320
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->doUpdate(Lcom/android/wm/shell/bubbles/Bubble;Z)V

    .line 323
    :goto_0
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->shouldAutoExpand()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 324
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setShouldAutoExpand(Z)V

    .line 325
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 326
    iget-boolean p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-nez p2, :cond_1

    .line 327
    invoke-direct {p0, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpandedInternal(Z)V

    .line 331
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

    .line 332
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    move-result p3

    if-nez p3, :cond_4

    :cond_3
    move v0, v2

    .line 333
    :cond_4
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressNotification(Z)V

    xor-int/2addr p2, v2

    .line 334
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/Bubble;->setShowDot(Z)V

    .line 336
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getLocusId()Landroid/content/LocusId;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 338
    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 339
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->isSuppressed()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->isSuppressable()Z

    move-result v0

    if-nez v0, :cond_6

    .line 340
    :cond_5
    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object p1, p2, Lcom/android/wm/shell/bubbles/BubbleData$Update;->unsuppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    goto :goto_2

    :cond_6
    if-nez p3, :cond_8

    .line 342
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->isSuppressed()Z

    move-result p3

    if-nez p3, :cond_7

    .line 343
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->isSuppressable()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mVisibleLocusIds:Landroid/util/ArraySet;

    invoke-virtual {p3, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 344
    :cond_7
    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object p1, p2, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 348
    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public onLocusVisibilityChanged(ILandroid/content/LocusId;Z)V
    .locals 4

    .line 620
    invoke-direct {p0, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithLocusId(Landroid/content/LocusId;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v0

    if-eqz p3, :cond_1

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/Bubble;->getTaskId()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 623
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mVisibleLocusIds:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 625
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mVisibleLocusIds:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 630
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    if-eqz p3, :cond_4

    if-nez v1, :cond_4

    .line 631
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/Bubble;->isSuppressable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 632
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/Bubble;->getTaskId()I

    move-result v1

    if-eq p1, v1, :cond_4

    .line 633
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressBubble(Z)V

    .line 635
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 636
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    goto :goto_2

    :cond_4
    if-nez p3, :cond_6

    .line 638
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz p1, :cond_5

    .line 640
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressBubble(Z)V

    .line 641
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object p1, p2, Lcom/android/wm/shell/bubbles/BubbleData$Update;->unsuppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 643
    :cond_5
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    :cond_6
    :goto_2
    return-void
.end method

.method overflowBubble(ILcom/android/wm/shell/bubbles/Bubble;)V
    .locals 2

    .line 568
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

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    invoke-virtual {v0, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleLogger;->logOverflowAdd(Lcom/android/wm/shell/bubbles/Bubble;I)V

    .line 578
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 579
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 580
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object p2, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 581
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/Bubble;->stopInflation()V

    .line 582
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxOverflowBubbles:I

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    .line 584
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 588
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbleRemoved(Lcom/android/wm/shell/bubbles/Bubble;I)V

    .line 589
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    sget-object v1, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_MAX_REACHED:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    invoke-virtual {v0, p2, v1}, Lcom/android/wm/shell/bubbles/BubbleLogger;->log(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 590
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 591
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

    .line 404
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 405
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 406
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 409
    :cond_0
    new-instance p2, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda8;

    invoke-direct {p2, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 423
    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p3}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/BubbleData;I)V

    .line 426
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p3, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 428
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    move-result-object p3

    .line 427
    invoke-direct {p0, p3, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public removeBubblesWithPackageName(Ljava/lang/String;I)V
    .locals 1

    .line 433
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    .line 436
    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/bubbles/BubbleData;I)V

    .line 439
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2, v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 440
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2, v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method removeSuppressedSummary(Ljava/lang/String;)V
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setCurrentUserId(I)V
    .locals 0

    .line 695
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mCurrentUserId:I

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpandedInternal(Z)V

    .line 240
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public setListener(Lcom/android/wm/shell/bubbles/BubbleData$Listener;)V
    .locals 0

    .line 907
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    return-void
.end method

.method public setMaxOverflowBubbles(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 916
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxOverflowBubbles:I

    return-void
.end method

.method public setPendingIntentCancelledListener(Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mCancelledListener:Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;

    return-void
.end method

.method public setSelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 0

    .line 247
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 248
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method setShowingOverflow(Z)V
    .locals 0

    .line 252
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    return-void
.end method

.method public setSuppressionChangedListener(Lcom/android/wm/shell/bubbles/Bubbles$SuppressionChangedListener;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressionListener:Lcom/android/wm/shell/bubbles/Bubbles$SuppressionChangedListener;

    return-void
.end method

.method setTimeSource(Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 903
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

    return-void
.end method
