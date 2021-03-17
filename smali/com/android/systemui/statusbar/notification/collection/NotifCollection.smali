.class public Lcom/android/systemui/statusbar/notification/collection/NotifCollection;
.super Ljava/lang/Object;
.source "NotifCollection.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field private static final INITIALIZATION_FORGIVENESS_WINDOW:J


# instance fields
.field private mAmDispatchingToOtherCode:Z

.field private mAttached:Z

.field private mBuildListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CollectionReadyForBuildListener;

.field private final mClock:Lcom/android/systemui/util/time/SystemClock;

.field private final mDismissInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

.field private mEventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

.field private mInitializedTimestamp:J

.field private final mLifetimeExtenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

.field private final mNotifCollectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifHandler:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$BatchableNotificationHandler;

.field private final mNotificationSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadOnlyNotificationSet:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public static synthetic $r8$lambda$Fn1mjyWSB9lXBkhCorT8hZOGt1o(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->onEndLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rrIZhlbGlZq8xbIbL0o6SJauzvQ(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->onEndDismissInterception(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 814
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->INITIALIZATION_FORGIVENESS_WINDOW:J

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;Lcom/android/systemui/dump/LogBufferEulogizer;Lcom/android/systemui/dump/DumpManager;)V
    .locals 2

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotificationSet:Ljava/util/Map;

    .line 137
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mReadOnlyNotificationSet:Ljava/util/Collection;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotifCollectionListeners:Ljava/util/List;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLifetimeExtenders:Ljava/util/List;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mDismissInterceptors:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEventQueue:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAttached:Z

    const-wide/16 v0, 0x0

    .line 148
    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mInitializedTimestamp:J

    .line 751
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotifHandler:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$BatchableNotificationHandler;

    .line 158
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 159
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 160
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mClock:Lcom/android/systemui/util/time/SystemClock;

    .line 161
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    .line 162
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    .line 163
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

    const-string p1, "NotifCollection"

    .line 165
    invoke-virtual {p6, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Ljava/util/List;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->onNotificationGroupPosted(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->onNotificationsInitialized()V

    return-void
.end method

.method private applyRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4

    .line 483
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotificationSet:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 484
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->isCanceled(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 489
    new-instance v2, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v2}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 490
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 491
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setRanking(Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 496
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewNotifPipelineRenderingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 497
    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v2

    .line 498
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 500
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logRankingMissing(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_0

    .line 508
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEventQueue:Ljava/util/Queue;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/RankingAppliedEvent;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/RankingAppliedEvent;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private cancelDismissInterception(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    const/4 v0, 0x1

    .line 624
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAmDispatchingToOtherCode:Z

    .line 625
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;

    .line 626
    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;->cancelDismissInterception(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 628
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAmDispatchingToOtherCode:Z

    .line 629
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissInterceptors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    const/4 v0, 0x1

    .line 551
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAmDispatchingToOtherCode:Z

    .line 552
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mLifetimeExtenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

    .line 553
    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;->cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 555
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAmDispatchingToOtherCode:Z

    .line 556
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mLifetimeExtenders:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private cancelLocalDismissal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 587
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getDismissState()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->NOT_DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    if-eq v0, v1, :cond_1

    .line 588
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setDismissState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;)V

    .line 589
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotificationSet:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 591
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 592
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getDismissState()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->PARENT_DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    if-ne v1, v2, :cond_0

    .line 593
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->NOT_DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setDismissState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cannotBeLifetimeExtended(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3

    .line 678
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getDismissState()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->NOT_DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    .line 679
    :goto_0
    iget p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCancellationReason:I

    if-eq p1, v2, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move p1, v1

    goto :goto_2

    :cond_2
    :goto_1
    move p1, v2

    :goto_2
    if-nez p0, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method private checkForReentrantCall()V
    .locals 2

    .line 637
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAmDispatchingToOtherCode:Z

    if-nez v0, :cond_0

    return-void

    .line 638
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reentrant call detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/dump/LogBufferEulogizer;->record(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Ljava/lang/IllegalStateException;

    throw p0
.end method

.method private dispatchEventsAndRebuildList()V
    .locals 2

    const/4 v0, 0x1

    .line 512
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAmDispatchingToOtherCode:Z

    .line 513
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifEvent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotifCollectionListeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifEvent;->dispatchTo(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 516
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAmDispatchingToOtherCode:Z

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mBuildListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CollectionReadyForBuildListener;

    if-eqz v0, :cond_1

    .line 519
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mReadOnlyNotificationSet:Ljava/util/Collection;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CollectionReadyForBuildListener;->onBuildList(Ljava/util/Collection;)V

    :cond_1
    return-void
.end method

.method private static hasFlag(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z
    .locals 0

    .line 721
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->flags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCanceled(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 674
    iget p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCancellationReason:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDismissIntercepted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 633
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissInterceptors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLifetimeExtended(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 560
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mLifetimeExtenders:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private locallyDismissNotifications(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)V"
        }
    .end annotation

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 326
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 327
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 329
    sget-object v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setDismissState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;)V

    .line 330
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logNotifDismissed(Ljava/lang/String;)V

    .line 332
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->isCanceled(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 336
    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 337
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotificationSet:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 338
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->shouldAutoDismissChildren(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 339
    sget-object v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->PARENT_DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setDismissState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;)V

    .line 340
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logChildDismissed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 341
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->isCanceled(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 342
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 353
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logDismissOnAlreadyCanceledEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 354
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->tryRemoveNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    goto :goto_3

    :cond_4
    return-void
.end method

.method private onEndDismissInterception(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V
    .locals 2

    .line 604
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 605
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAttached:Z

    if-nez v0, :cond_0

    return-void

    .line 608
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->checkForReentrantCall()V

    .line 610
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 618
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->isDismissIntercepted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 619
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    :cond_1
    return-void

    .line 611
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

    new-instance p2, Ljava/lang/IllegalStateException;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 614
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    const/4 v0, 0x1

    aput-object p1, p3, v0

    const-string p1, "Cannot end dismiss interceptor for interceptor \"%s\" (%s)"

    .line 612
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0, p2}, Lcom/android/systemui/dump/LogBufferEulogizer;->record(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Ljava/lang/IllegalStateException;

    throw p0
.end method

.method private onEndLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 524
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 525
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAttached:Z

    if-nez v0, :cond_0

    return-void

    .line 528
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->checkForReentrantCall()V

    .line 530
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mLifetimeExtenders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    .line 539
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mLifetimeExtenders:Ljava/util/List;

    .line 541
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 538
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logLifetimeExtensionEnded(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;I)V

    .line 543
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->isLifetimeExtended(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 544
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->tryRemoveNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 545
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dispatchEventsAndRebuildList()V

    :cond_1
    return-void

    .line 531
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

    new-instance p2, Ljava/lang/IllegalStateException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 534
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "Cannot end lifetime extension for extender \"%s\" (%s)"

    .line 532
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0, p2}, Lcom/android/systemui/dump/LogBufferEulogizer;->record(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Ljava/lang/IllegalStateException;

    throw p0
.end method

.method private onNotificationGroupPosted(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;",
            ">;)V"
        }
    .end annotation

    .line 367
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logNotifGroupPosted(Ljava/lang/String;I)V

    .line 371
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;

    .line 372
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->postNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;)V

    goto :goto_0

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dispatchEventsAndRebuildList()V

    return-void
.end method

.method private onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    .line 359
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 361
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->requireRanking(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->postNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 362
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->applyRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 363
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dispatchEventsAndRebuildList()V

    return-void
.end method

.method private onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    .line 399
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEventQueue:Ljava/util/Queue;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/RankingUpdatedEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/RankingUpdatedEvent;-><init>(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->applyRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 402
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dispatchEventsAndRebuildList()V

    return-void
.end method

.method private onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 2

    .line 381
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logNotifRemoved(Ljava/lang/String;I)V

    .line 385
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotificationSet:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v0, :cond_0

    .line 388
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logNoNotificationToRemoveWithKey(Ljava/lang/String;)V

    return-void

    .line 392
    :cond_0
    iput p3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCancellationReason:I

    .line 393
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->tryRemoveNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 394
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->applyRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 395
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dispatchEventsAndRebuildList()V

    return-void
.end method

.method private onNotificationsInitialized()V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mInitializedTimestamp:J

    return-void
.end method

.method private postNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;)V
    .locals 3

    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotificationSet:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;-><init>(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;J)V

    .line 417
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEventQueue:Ljava/util/Queue;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/InitEntryEvent;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/InitEntryEvent;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEventQueue:Ljava/util/Queue;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;

    invoke-direct {v1, v0, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V

    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotificationSet:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logNotifPosted(Ljava/lang/String;)V

    .line 422
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEventQueue:Ljava/util/Queue;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/EntryAddedEvent;

    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/EntryAddedEvent;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 432
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->cancelLocalDismissal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 433
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 434
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->cancelDismissInterception(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    const/4 p2, -0x1

    .line 435
    iput p2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCancellationReason:I

    .line 437
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setSbn(Landroid/service/notification/StatusBarNotification;)V

    .line 438
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEventQueue:Ljava/util/Queue;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;

    invoke-direct {v1, v0, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V

    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logNotifUpdated(Ljava/lang/String;)V

    .line 441
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEventQueue:Ljava/util/Queue;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/EntryUpdatedEvent;

    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/EntryUpdatedEvent;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private static requireRanking(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;
    .locals 2

    .line 661
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 662
    invoke-virtual {p0, p1, v0}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 663
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ranking map doesn\'t contain key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static shouldAutoDismissChildren(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)Z
    .locals 1

    .line 696
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 697
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x40

    .line 698
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->hasFlag(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x1000

    .line 699
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->hasFlag(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getDismissState()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static shouldDismissOnClearAll(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z
    .locals 0

    .line 714
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->userIdMatches(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 715
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isClearable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1000

    .line 716
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->hasFlag(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getDismissState()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private tryRemoveNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3

    .line 452
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotificationSet:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_3

    .line 458
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->isCanceled(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 464
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->cannotBeLifetimeExtended(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    .line 467
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->updateLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 470
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->isLifetimeExtended(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logNotifReleased(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotificationSet:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->cancelDismissInterception(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 474
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEventQueue:Ljava/util/Queue;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/EntryRemovedEvent;

    iget v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCancellationReason:I

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/EntryRemovedEvent;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEventQueue:Ljava/util/Queue;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CleanUpEntryEvent;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CleanUpEntryEvent;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 459
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove notification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": has not been marked for removal"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0, v0}, Lcom/android/systemui/dump/LogBufferEulogizer;->record(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Ljava/lang/IllegalStateException;

    throw p0

    .line 453
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No notification to remove with key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0, v0}, Lcom/android/systemui/dump/LogBufferEulogizer;->record(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Ljava/lang/IllegalStateException;

    throw p0
.end method

.method private updateDismissInterceptors(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 576
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    .line 577
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAmDispatchingToOtherCode:Z

    .line 578
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mDismissInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;

    .line 579
    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;->shouldInterceptDismissal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 580
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissInterceptors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 583
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAmDispatchingToOtherCode:Z

    return-void
.end method

.method private updateLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 564
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mLifetimeExtenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    .line 565
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAmDispatchingToOtherCode:Z

    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLifetimeExtenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

    .line 567
    iget v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCancellationReason:I

    invoke-interface {v1, p1, v2}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;->shouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 568
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logLifetimeExtended(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;)V

    .line 569
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mLifetimeExtenders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 572
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAmDispatchingToOtherCode:Z

    return-void
.end method

.method private static userIdMatches(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 732
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 733
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    if-ne p0, p1, :cond_0

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


# virtual methods
.method addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V
    .locals 0

    .line 196
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 197
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotifCollectionListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addNotificationDismissInterceptor(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;)V
    .locals 2

    .line 213
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->checkForReentrantCall()V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mDismissInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mDismissInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;->setCallback(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor$OnEndDismissInterception;)V

    return-void

    .line 216
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interceptor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already added."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;)V
    .locals 2

    .line 202
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->checkForReentrantCall()V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLifetimeExtenders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLifetimeExtenders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;->setCallback(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender$OnEndLifetimeExtensionCallback;)V

    return-void

    .line 205
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Extender "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already added."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public attach(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;)V
    .locals 1

    .line 170
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 171
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAttached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAttached:Z

    .line 176
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotifHandler:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$BatchableNotificationHandler;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->setNotificationHandler(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$BatchableNotificationHandler;)V

    return-void

    .line 172
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "attach() called twice"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dismissAllNotifications(I)V
    .locals 4

    .line 288
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 289
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->checkForReentrantCall()V

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logDismissAll(I)V

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 298
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logRemoteExceptionOnClearAllNotifications(Landroid/os/RemoteException;)V

    .line 301
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->getAllNotifs()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 302
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 303
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 304
    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->shouldDismissOnClearAll(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 307
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->updateDismissInterceptors(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 308
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->isDismissIntercepted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logNotifClearAllDismissalIntercepted(Ljava/lang/String;)V

    .line 311
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 315
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->locallyDismissNotifications(Ljava/util/List;)V

    .line 316
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dispatchEventsAndRebuildList()V

    return-void
.end method

.method public dismissNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V
    .locals 1

    .line 281
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissNotifications(Ljava/util/List;)V

    return-void
.end method

.method public dismissNotifications(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;",
            ">;>;)V"
        }
    .end annotation

    .line 227
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->checkForReentrantCall()V

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 231
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 232
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 233
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    .line 235
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotificationSet:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_3

    .line 241
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getDismissState()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 245
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->updateDismissInterceptors(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 246
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->isDismissIntercepted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 247
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logNotifDismissedIntercepted(Ljava/lang/String;)V

    goto :goto_1

    .line 251
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->isCanceled(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 255
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 256
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 257
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v7

    .line 258
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    .line 259
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 260
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v10

    iget v11, v3, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;->dismissalSurface:I

    iget v12, v3, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;->dismissalSentiment:I

    iget-object v13, v3, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;->notificationVisibility:Lcom/android/internal/statusbar/NotificationVisibility;

    .line 255
    invoke-interface/range {v5 .. v13}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 266
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logRemoteExceptionOnNotificationClear(Ljava/lang/String;Landroid/os/RemoteException;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 237
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid entry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/systemui/dump/LogBufferEulogizer;->record(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Ljava/lang/IllegalStateException;

    throw p0

    .line 271
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->locallyDismissNotifications(Ljava/util/List;)V

    .line 272
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dispatchEventsAndRebuildList()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 738
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->getAllNotifs()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "\tNotifCollection unsorted/unfiltered notifications:"

    .line 740
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 741
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "\t\t None"

    .line 742
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    const-string p3, "\t\t"

    .line 745
    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/notification/collection/ListDumper;->dumpList(Ljava/util/List;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 744
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getAllNotifs()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 191
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mReadOnlyNotificationSet:Ljava/util/Collection;

    return-object p0
.end method

.method setBuildListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/CollectionReadyForBuildListener;)V
    .locals 0

    .line 184
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 185
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mBuildListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CollectionReadyForBuildListener;

    return-void
.end method
