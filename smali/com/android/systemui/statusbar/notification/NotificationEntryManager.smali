.class public Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
.super Ljava/lang/Object;
.source "NotificationEntryManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mActiveNotifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllNotifications:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

.field private final mFgsFeatureController:Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;

.field private final mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

.field private final mInflationCallback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

.field private final mKeyguardEnvironment:Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;

.field private mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private final mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

.field private final mLogger:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;

.field private final mNotifCollectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

.field private final mNotificationEntryListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryListener;",
            ">;"
        }
    .end annotation
.end field

.field final mNotificationLifetimeExtenders:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationLifetimeExtender;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationRowBinderLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPendingNotifications:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private final mRankingManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadOnlyAllNotifications:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadOnlyNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteInputManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mRetainedNotifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/NotificationLifetimeExtender;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSortedAndFiltered:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public static synthetic $r8$lambda$cGNXmoyPaDp3HkDlUCUKwCIaCU0(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->lambda$addNotificationLifetimeExtender$0(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NotificationEntryMgr"

    const/4 v1, 0x3

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;Lcom/android/systemui/statusbar/FeatureFlags;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/util/leak/LeakDetector;Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;Lcom/android/internal/statusbar/IStatusBarService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;",
            "Lcom/android/systemui/util/leak/LeakDetector;",
            "Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ")V"
        }
    .end annotation

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mAllNotifications:Ljava/util/Set;

    .line 112
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mReadOnlyAllNotifications:Ljava/util/Set;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    .line 121
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mActiveNotifications:Landroid/util/ArrayMap;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mSortedAndFiltered:Ljava/util/ArrayList;

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mReadOnlyNotifications:Ljava/util/List;

    .line 128
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotifCollectionListeners:Ljava/util/List;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationLifetimeExtenders:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRemoveInterceptors:Ljava/util/List;

    .line 347
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mInflationCallback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    .line 379
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$2;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotifListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    .line 212
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;

    .line 213
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    .line 214
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRankingManager:Ldagger/Lazy;

    .line 215
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mKeyguardEnvironment:Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;

    .line 216
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    .line 217
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationRowBinderLazy:Ldagger/Lazy;

    .line 218
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRemoteInputManagerLazy:Ldagger/Lazy;

    .line 219
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    .line 220
    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mFgsFeatureController:Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;

    .line 221
    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-void
.end method

.method private abortExistingInflation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 314
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()V

    .line 315
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotifCollectionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    .line 317
    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;->onEntryCleanUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;

    const-string v1, "pending"

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;->logInflationAborted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()V

    .line 324
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;

    const-string v0, "active"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;->logInflationAborted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Ljava/util/List;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addActiveNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Landroid/util/ArrayMap;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mActiveNotifications:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private addActiveNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 418
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mActiveNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 422
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRankingManager:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object p1

    const-string v0, "addEntryInternalInternal"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/lang/String;)V

    return-void
.end method

.method private addNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .line 606
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 607
    sget-boolean v1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNotification key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationEntryMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "addNotificationInternal"

    .line 611
    invoke-direct {p0, p2, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/lang/String;)V

    .line 613
    new-instance v4, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v4}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 614
    invoke-virtual {p2, v0, v4}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 616
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p2, :cond_1

    .line 618
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setSbn(Landroid/service/notification/StatusBarNotification;)V

    .line 619
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setRanking(Landroid/service/notification/NotificationListenerService$Ranking;)V

    goto :goto_1

    .line 621
    :cond_1
    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mFgsFeatureController:Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;

    .line 624
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;->isForegroundServiceDismissalEnabled()Z

    move-result v5

    .line 625
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;-><init>(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;ZJ)V

    .line 626
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mAllNotifications:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 627
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {v1, p2}, Lcom/android/systemui/util/leak/LeakDetector;->trackInstance(Ljava/lang/Object;)V

    .line 629
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotifCollectionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    .line 630
    invoke-interface {v2, p2}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;->onEntryInit(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    .line 634
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotifCollectionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    .line 635
    invoke-interface {v2, p2, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;->onEntryBind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V

    goto :goto_2

    .line 639
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewNotifPipelineRenderingEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    .line 640
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationRowBinderLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mInflationCallback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    invoke-interface {p1, p2, v1}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;->inflateViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V

    .line 643
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;->logNotifAdded(Ljava/lang/String;)V

    .line 645
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 646
    invoke-interface {v0, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onPendingEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_3

    .line 648
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotifCollectionListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    .line 649
    invoke-interface {v0, p2}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;->onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_4

    .line 651
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotifCollectionListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    .line 652
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;->onRankingApplied()V

    goto :goto_5

    :cond_7
    return-void
.end method

.method private cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 833
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 835
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->setShouldManageLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    :cond_0
    return-void
.end method

.method private dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 926
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 927
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] key="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " icon="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getStatusBarIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    .line 929
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 930
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "      pkg="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " id="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " importance="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object p4

    invoke-virtual {p4}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 930
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 933
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "      notification="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private extendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V
    .locals 2

    .line 824
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    const/4 v1, 0x0

    .line 826
    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->setShouldManageLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 828
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 829
    invoke-interface {p2, p1, p0}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->setShouldManageLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    return-void
.end method

.method private handleGroupSummaryRemoved(Ljava/lang/String;)V
    .locals 7

    .line 572
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 573
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowExists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 574
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 579
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getAttachedNotifChildren()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    .line 583
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 584
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 585
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x40

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v1

    .line 587
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRemoteInputManagerLazy:Ldagger/Lazy;

    .line 588
    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->shouldKeepForRemoteInputHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRemoteInputManagerLazy:Ldagger/Lazy;

    .line 589
    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->shouldKeepForSmartReplyHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v6, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v6, v5

    :goto_3
    if-nez v4, :cond_6

    if-eqz v6, :cond_5

    goto :goto_4

    .line 595
    :cond_5
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setKeepInParent(Z)V

    .line 598
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->removeRow()V

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V
    .locals 7

    .line 336
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v0, p0

    .line 335
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotificationInternal(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/internal/statusbar/NotificationVisibility;ZLcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;I)V

    .line 342
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 343
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onInflationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$addNotificationLifetimeExtender$0(Ljava/lang/String;)V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    return-void
.end method

.method private obtainVisibility(Ljava/lang/String;)Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mActiveNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 305
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mActiveNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 307
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object p0

    const/4 v2, 0x1

    .line 308
    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p0

    return-object p0
.end method

.method private removeNotificationInternal(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/internal/statusbar/NotificationVisibility;ZLcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;I)V
    .locals 6

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRemoveInterceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;

    .line 465
    invoke-interface {v2, p1, v0, p6}, Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;->onNotificationRemoveRequested(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;->logRemovalIntercepted(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "removeNotification"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 476
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p2, :cond_d

    .line 478
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationLifetimeExtenders:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    .line 479
    invoke-interface {p4, p2}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->shouldExtendLifetimeForPendingNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p5

    if-eqz p5, :cond_2

    .line 480
    invoke-direct {p0, p2, p4}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->extendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V

    .line 482
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    const-string p6, "pending"

    invoke-virtual {p5, p1, p4, p6}, Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;->logLifetimeExtended(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    goto :goto_0

    :cond_3
    if-nez v3, :cond_d

    .line 487
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->abortExistingInflation(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mAllNotifications:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 489
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {p0, p2}, Lcom/android/systemui/util/leak/LeakDetector;->trackGarbage(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 495
    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result v4

    if-nez p4, :cond_6

    if-nez v4, :cond_6

    .line 497
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationLifetimeExtenders:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_5
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    .line 498
    invoke-interface {v4, v0}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->shouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 499
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 500
    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->extendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V

    .line 502
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    const-string v4, "active"

    invoke-virtual {p2, p1, p4, v4}, Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;->logLifetimeExtended(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move p2, v2

    goto :goto_1

    :cond_6
    move p2, v3

    :goto_1
    if-nez p2, :cond_d

    .line 510
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->abortExistingInflation(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mAllNotifications:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 514
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 516
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowExists()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 517
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->removeRow()V

    .line 521
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->handleGroupSummaryRemoved(Ljava/lang/String;)V

    .line 522
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeVisibleNotification(Ljava/lang/String;)V

    const-string p1, "removeNotificationInternal"

    .line 523
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications(Ljava/lang/String;)V

    if-eqz p5, :cond_8

    goto :goto_2

    :cond_8
    move v2, v3

    .line 526
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;->logNotifRemoved(Ljava/lang/String;Z)V

    if-eqz v2, :cond_9

    if-eqz p3, :cond_9

    .line 528
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-direct {p0, p1, p5}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->sendNotificationRemovalToServer(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    .line 530
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 531
    invoke-interface {p2, v0, p3, v2, p6}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/NotificationVisibility;ZI)V

    goto :goto_3

    .line 533
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotifCollectionListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    .line 535
    invoke-interface {p2, v0, v3}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;->onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    goto :goto_4

    .line 537
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotifCollectionListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    .line 538
    invoke-interface {p2, v0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;->onEntryCleanUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_5

    .line 540
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/leak/LeakDetector;->trackGarbage(Ljava/lang/Object;)V

    :cond_d
    :goto_6
    return-void
.end method

.method private removeVisibleNotification(Ljava/lang/String;)V
    .locals 1

    .line 849
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 851
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mActiveNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez p1, :cond_0

    return-void

    .line 854
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private sendNotificationRemovalToServer(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V
    .locals 7

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 550
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 552
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    iget v4, p2, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;->dismissalSurface:I

    iget v5, p2, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;->dismissalSentiment:I

    iget-object v6, p2, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;->notificationVisibility:Lcom/android/internal/statusbar/NotificationVisibility;

    .line 549
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private updateNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .line 666
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->DEBUG:Z

    const-string v1, "NotificationEntryMgr"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNotification("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "updateNotification"

    .line 669
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->abortExistingInflation(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 677
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    const-string/jumbo v2, "updateNotificationInternal"

    .line 679
    invoke-direct {p0, p2, v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/lang/String;)V

    .line 680
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    .line 681
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setSbn(Landroid/service/notification/StatusBarNotification;)V

    .line 682
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotifCollectionListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    .line 683
    invoke-interface {v4, v0, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;->onEntryBind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    .line 685
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    invoke-virtual {v3, v0, p2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V

    .line 687
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;->logNotifUpdated(Ljava/lang/String;)V

    .line 688
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 689
    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onPreEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_1

    .line 691
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotifCollectionListeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    .line 692
    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;->onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_2

    .line 695
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewNotifPipelineRenderingEnabled()Z

    move-result p2

    if-nez p2, :cond_5

    .line 696
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationRowBinderLazy:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mInflationCallback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    invoke-interface {p2, v0, v3}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;->inflateViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V

    .line 699
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications(Ljava/lang/String;)V

    .line 701
    sget-boolean p2, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->DEBUG:Z

    if-eqz p2, :cond_7

    .line 703
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mKeyguardEnvironment:Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;

    .line 704
    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    .line 705
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification is "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    const-string p1, ""

    goto :goto_3

    :cond_6
    const-string p1, "not "

    :goto_3
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "for you"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 709
    invoke-interface {p2, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onPostEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_4

    .line 711
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotifCollectionListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    .line 712
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;->onRankingApplied()V

    goto :goto_5

    :cond_9
    return-void
.end method

.method private updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/lang/String;)V
    .locals 2

    .line 894
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 895
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mSortedAndFiltered:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRankingManager:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mActiveNotifications:Landroid/util/ArrayMap;

    .line 896
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    .line 895
    invoke-virtual {v1, p1, p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private updateRankingOfPendingNotifications(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 782
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 783
    new-instance v1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 784
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 785
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setRanking(Landroid/service/notification/NotificationListenerService$Ranking;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addActiveNotificationForTest(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mActiveNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    const-string p1, "addVisibleNotification"

    .line 435
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->reapplyFilterAndSort(Ljava/lang/String;)V

    return-void
.end method

.method public addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V
    .locals 0

    .line 969
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotifCollectionListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .line 658
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 660
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationLifetimeExtenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;->setCallback(Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;)V

    return-void
.end method

.method public addNotificationLifetimeExtenders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/NotificationLifetimeExtender;",
            ">;)V"
        }
    .end annotation

    .line 258
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    .line 259
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addNotificationRemoveInterceptor(Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;)V
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRemoveInterceptors:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public attach(Lcom/android/systemui/statusbar/NotificationListener;)V
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotifListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/NotificationListener;->addNotificationHandler(Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string p1, "NotificationEntryManager state:"

    .line 158
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mAllNotifications="

    .line 159
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mAllNotifications:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const-string p3, "null"

    if-nez p1, :cond_0

    .line 161
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mAllNotifications:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v2, "  "

    .line 165
    invoke-direct {p0, p2, v2, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string p1, "  mPendingNotifications="

    .line 169
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 171
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 173
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 174
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_3
    const-string p1, "  Remove interceptors registered:"

    .line 177
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRemoveInterceptors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const-string v0, "    "

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string p1, "  Lifetime extenders registered:"

    .line 181
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationLifetimeExtenders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    const-string p1, "  Lifetime-extended notifications:"

    .line 185
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p0, "    None"

    .line 187
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 190
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRetainedNotifications:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 191
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " retained by "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationLifetimeExtender;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    :goto_7
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6

    const-string v0, "NotificationEntryManager"

    .line 901
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 903
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active notifications: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 907
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 908
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mActiveNotifications:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 911
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mActiveNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 912
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 913
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inactive notifications: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v2, v3, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_1
    if-ge v1, v3, :cond_2

    .line 916
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mActiveNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 917
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 918
    invoke-direct {p0, p1, p2, v2, v4}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 922
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 808
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mActiveNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method public getActiveNotificationsCount()I
    .locals 0

    .line 957
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mReadOnlyNotifications:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getActiveNotificationsForCurrentUser()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 859
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 860
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 862
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mActiveNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 864
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mActiveNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 865
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 866
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mKeyguardEnvironment:Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;

    invoke-interface {v5, v4}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 869
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAllNotifs()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 952
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mReadOnlyAllNotifications:Ljava/util/Set;

    return-object p0
.end method

.method public getPendingNotificationsIterator()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 796
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getPendingOrActiveNotif(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0

    .line 819
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mActiveNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method public getVisibleNotifications()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 943
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mReadOnlyNotifications:Ljava/util/List;

    return-object p0
.end method

.method public hasActiveNotifications()Z
    .locals 0

    .line 964
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mReadOnlyNotifications:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onChangeAllowed()V
    .locals 1

    const-string v0, "reordering is now allowed"

    .line 272
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications(Ljava/lang/String;)V

    return-void
.end method

.method public performRemoveNotification(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;I)V
    .locals 7

    .line 288
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;->notificationVisibility:Lcom/android/internal/statusbar/NotificationVisibility;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    .line 287
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotificationInternal(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/internal/statusbar/NotificationVisibility;ZLcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;I)V

    return-void
.end method

.method public reapplyFilterAndSort(Ljava/lang/String;)V
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mRankingManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/lang/String;)V

    return-void
.end method

.method protected removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 443
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->obtainVisibility(Ljava/lang/String;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    .line 440
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotificationInternal(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/internal/statusbar/NotificationVisibility;ZLcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;I)V

    return-void
.end method

.method public removeNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    return-void
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .line 718
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 720
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 11

    .line 736
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 737
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getVisibleNotifications()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 738
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 741
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 742
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 743
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 745
    invoke-static {v4}, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->extractFromNotificationEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/NotificationUiAdjustment;

    move-result-object v5

    .line 746
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "updateNotificationRanking"

    .line 751
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/lang/String;)V

    .line 752
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateRankingOfPendingNotifications(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 755
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 756
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationRowBinderLazy:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;

    .line 759
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/Integer;

    .line 760
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/android/systemui/statusbar/NotificationUiAdjustment;

    .line 761
    invoke-static {v6}, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->extractFromNotificationEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/NotificationUiAdjustment;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mInflationCallback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    .line 757
    invoke-interface/range {v5 .. v10}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;->onNotificationRankingUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Integer;Lcom/android/systemui/statusbar/NotificationUiAdjustment;Lcom/android/systemui/statusbar/NotificationUiAdjustment;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V

    goto :goto_1

    .line 765
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications(Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotificationEntryListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 768
    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onNotificationRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_2

    .line 770
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotifCollectionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    .line 771
    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;->onRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_3

    .line 773
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotifCollectionListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    .line 774
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;->onRankingApplied()V

    goto :goto_4

    :cond_4
    return-void
.end method

.method public updateNotifications(Ljava/lang/String;)V
    .locals 1

    .line 729
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->reapplyFilterAndSort(Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewNotifPipelineRenderingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/NotificationPresenter;->updateNotificationViews(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
