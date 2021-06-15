.class public Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;
.super Ljava/lang/Object;
.source "PeopleSpaceWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$TileConversationListener;
    }
.end annotation


# static fields
.field public static mListeners:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/people/widget/PeopleTileKey;",
            "Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$TileConversationListener;",
            ">;"
        }
    .end annotation
.end field

.field public static mTiles:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/people/PeopleSpaceTile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field protected final mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBgExecutor:Ljava/util/concurrent/Executor;

.field private mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mContext:Landroid/content/Context;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mIPeopleManager:Landroid/app/people/IPeopleManager;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private final mListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

.field private final mLock:Ljava/lang/Object;

.field private mManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

.field private mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mNotificationKeyToWidgetIdsMatchedByUri:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPeopleManager:Landroid/app/people/PeopleManager;

.field private mRegisteredReceivers:Z

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field public mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$0p-eKaBQpy3hIMult0wXJFraPc8(Landroid/service/notification/ConversationChannelWrapper;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->lambda$getRecentTiles$6(Landroid/service/notification/ConversationChannelWrapper;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DEkZzghaUpbqLt2u1L8RCOPei2w(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->lambda$updateWidgetsWithNotificationChanged$0(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FgVCZaAMaVyOQACeJH-ez2JaI2Y(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Ljava/lang/Integer;Ljava/util/Optional;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->lambda$updateWidgetIdsBasedOnNotifications$2(Ljava/lang/Integer;Ljava/util/Optional;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JnzomIBGRsg_4w7OM_qZiYsaMmI(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/Optional;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->lambda$updateWidgetIdsBasedOnNotifications$1(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$V73ce-kDik_7Nqj8RcFEnzLANUA(Landroid/service/notification/ConversationChannelWrapper;)Landroid/content/pm/ShortcutInfo;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->lambda$getPriorityTiles$5(Landroid/service/notification/ConversationChannelWrapper;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YoQb0qnsUjIyHHtFfxdQo-7fzUg(Landroid/app/people/ConversationChannel;)Landroid/content/pm/ShortcutInfo;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->lambda$getRecentTiles$8(Landroid/app/people/ConversationChannel;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ba7gMvF_1oufIo_HI7z0Gn9ZRY0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->lambda$getGroupedConversationNotifications$3(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$subjDlbGiB8Hm2TChEtsYmTgRA0(Landroid/service/notification/ConversationChannelWrapper;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->lambda$getPriorityTiles$4(Landroid/service/notification/ConversationChannelWrapper;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tZDTNzAf6DbJtgAIM8eNRHSOE5g(Landroid/service/notification/ConversationChannelWrapper;)Landroid/content/pm/ShortcutInfo;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->lambda$getRecentTiles$7(Landroid/service/notification/ConversationChannelWrapper;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListeners:Ljava/util/Map;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mTiles:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/app/people/IPeopleManager;Landroid/app/people/PeopleManager;Landroid/content/pm/LauncherApps;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Landroid/app/INotificationManager;Landroid/app/NotificationManager;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    .line 124
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationKeyToWidgetIdsMatchedByUri:Ljava/util/Map;

    .line 688
    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    .line 999
    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 213
    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 214
    iput-object p3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    .line 215
    iput-object p4, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPeopleManager:Landroid/app/people/PeopleManager;

    .line 216
    iput-object p5, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 217
    iput-object p6, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 218
    iput-object p7, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 219
    iput-object p8, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUserManager:Landroid/os/UserManager;

    .line 220
    iput-object p9, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mINotificationManager:Landroid/app/INotificationManager;

    .line 221
    iput-object p10, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 222
    iput-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 223
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 224
    iput-object p11, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/LauncherApps;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Landroid/app/NotificationManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    .line 124
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationKeyToWidgetIdsMatchedByUri:Ljava/util/Map;

    .line 688
    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    .line 999
    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "PeopleSpaceWidgetMgr"

    const-string v1, "constructor"

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 150
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    const-string v0, "people"

    .line 152
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/app/people/IPeopleManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/people/IPeopleManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    .line 153
    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 154
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 155
    const-class p2, Landroid/app/people/PeopleManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/people/PeopleManager;

    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPeopleManager:Landroid/app/people/PeopleManager;

    .line 156
    iput-object p3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 157
    iput-object p4, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p1, "notification"

    .line 159
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 158
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mINotificationManager:Landroid/app/INotificationManager;

    .line 160
    iput-object p5, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUserManager:Landroid/os/UserManager;

    .line 161
    iput-object p6, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 162
    iput-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 163
    iput-object p7, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 164
    iput-object p8, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)Landroid/content/Context;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)Landroid/appwidget/AppWidgetManager;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method private fetchMatchingUriWidgetIds(Landroid/service/notification/StatusBarNotification;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 601
    invoke-static {p1}, Lcom/android/systemui/people/NotificationHelper;->shouldMatchNotificationByUri(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PeopleSpaceWidgetMgr"

    if-nez v0, :cond_0

    const-string p0, "Should not supplement conversation"

    .line 602
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 607
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/people/NotificationHelper;->getContactUri(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "No contact uri"

    .line 609
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 614
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 615
    invoke-interface {p0, p1, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 616
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "No tiles for contact"

    .line 617
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    return-object v0
.end method

.method private getKeyFromStorageByWidgetId(I)Lcom/android/systemui/people/widget/PeopleTileKey;
    .locals 4

    .line 826
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 828
    new-instance p1, Lcom/android/systemui/people/widget/PeopleTileKey;

    const-string v0, "shortcut_id"

    const-string v1, ""

    .line 829
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "user_id"

    const/4 v3, -0x1

    .line 830
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "package_name"

    .line 831
    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v2, p0}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p1
.end method

.method private getMatchingUriWidgetIds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            "Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 579
    sget-object v0, Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;->POSTED:Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 580
    invoke-direct {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->fetchMatchingUriWidgetIds(Landroid/service/notification/StatusBarNotification;)Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 581
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 582
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationKeyToWidgetIdsMatchedByUri:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 588
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationKeyToWidgetIdsMatchedByUri:Ljava/util/Map;

    .line 589
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_1

    .line 590
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    return-object p0

    .line 594
    :cond_1
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method private getNotificationPolicyState()I
    .locals 7

    .line 1081
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 1082
    iget v1, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 1083
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v1

    .line 1086
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getCurrentInterruptionFilter()I

    move-result p0

    const/4 v2, 0x1

    const-string v3, "PeopleSpaceWidgetMgr"

    if-eq p0, v2, :cond_9

    const-string v4, "Visual effects not suppressed."

    const/4 v5, 0x2

    if-eq p0, v5, :cond_0

    goto :goto_1

    .line 1091
    :cond_0
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowConversations()Z

    move-result p0

    if-eqz p0, :cond_3

    if-nez v1, :cond_1

    .line 1094
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1097
    :cond_1
    iget p0, v0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    if-ne p0, v2, :cond_2

    const-string p0, "All conversations allowed"

    .line 1098
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    if-ne p0, v5, :cond_3

    const-string p0, "Important conversations allowed"

    .line 1103
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    .line 1107
    :goto_0
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowMessages()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1108
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowMessagesFrom()I

    move-result v0

    if-eq v0, v2, :cond_5

    if-eq v0, v5, :cond_4

    const-string p0, "All messages allowed"

    .line 1119
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    const-string v0, "Starred contacts allowed"

    .line 1114
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 p0, p0, 0x8

    return p0

    :cond_5
    const-string v0, "All contacts allowed"

    .line 1110
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 p0, p0, 0x10

    return p0

    :cond_6
    if-eqz p0, :cond_7

    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Return block state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_7
    :goto_1
    if-nez v1, :cond_8

    .line 1133
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_8
    const-string p0, "Block conversations"

    .line 1136
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_9
    const-string p0, "All interruptions allowed"

    .line 1088
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private getPackageSuspended(Landroid/app/people/PeopleSpaceTile;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1066
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1067
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->isPackageSuspended(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1068
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package suspended: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PeopleSpaceWidgetMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private getUserQuieted(Landroid/app/people/PeopleSpaceTile;)Z
    .locals 1

    .line 1074
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUserManager:Landroid/os/UserManager;

    .line 1075
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    .line 1074
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1076
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Work profile quiet: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PeopleSpaceWidgetMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private static synthetic lambda$getGroupedConversationNotifications$3(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 485
    invoke-static {p0}, Lcom/android/systemui/people/NotificationHelper;->isValid(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-static {p0}, Lcom/android/systemui/people/NotificationHelper;->isMissedCallOrHasContent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getPriorityTiles$4(Landroid/service/notification/ConversationChannelWrapper;)Z
    .locals 1

    .line 935
    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 936
    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getPriorityTiles$5(Landroid/service/notification/ConversationChannelWrapper;)Landroid/content/pm/ShortcutInfo;
    .locals 0

    .line 937
    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getRecentTiles$6(Landroid/service/notification/ConversationChannelWrapper;)Z
    .locals 1

    .line 952
    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 953
    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p0

    if-nez p0, :cond_0

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

.method private static synthetic lambda$getRecentTiles$7(Landroid/service/notification/ConversationChannelWrapper;)Landroid/content/pm/ShortcutInfo;
    .locals 0

    .line 954
    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getRecentTiles$8(Landroid/app/people/ConversationChannel;)Landroid/content/pm/ShortcutInfo;
    .locals 0

    .line 960
    invoke-virtual {p0}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateWidgetIdsBasedOnNotifications$1(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/Optional;
    .locals 0

    .line 446
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getAugmentedTileForExistingWidget(ILjava/util/Map;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateWidgetIdsBasedOnNotifications$2(Ljava/lang/Integer;Ljava/util/Optional;)V
    .locals 0

    .line 447
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateAppWidgetOptionsAndViewOptional(ILjava/util/Optional;)V

    return-void
.end method

.method private synthetic lambda$updateWidgetsWithNotificationChanged$0(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;)V
    .locals 0

    .line 396
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateWidgetsWithNotificationChangedInBackground(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;)V

    return-void
.end method

.method private uncacheConversationShortcut(Lcom/android/systemui/people/widget/PeopleTileKey;)V
    .locals 4

    const-string v0, "PeopleSpaceWidgetMgr"

    .line 894
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uncaching shortcut for PeopleTile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 896
    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 897
    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->getUserId()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v3, 0x2

    .line 895
    invoke-virtual {p0, v1, v2, p1, v3}, Landroid/content/pm/LauncherApps;->uncacheShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 900
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception uncaching shortcut:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private unregisterConversationListener(Lcom/android/systemui/people/widget/PeopleTileKey;I)V
    .locals 5

    .line 877
    sget-object v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListeners:Ljava/util/Map;

    monitor-enter v0

    .line 878
    :try_start_0
    sget-object v1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$TileConversationListener;

    if-nez v1, :cond_0

    const-string p0, "PeopleSpaceWidgetMgr"

    const-string p1, "Cannot find listener to unregister"

    .line 880
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    monitor-exit v0

    return-void

    :cond_0
    const-string v2, "PeopleSpaceWidgetMgr"

    .line 884
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregister listener for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " with "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    sget-object p2, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListeners:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPeopleManager:Landroid/app/people/PeopleManager;

    invoke-virtual {p0, v1}, Landroid/app/people/PeopleManager;->unregisterConversationListener(Landroid/app/people/PeopleManager$ConversationListener;)V

    return-void

    :catchall_0
    move-exception p0

    .line 887
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private updateAppWidgetViews(ILandroid/app/people/PeopleSpaceTile;Landroid/os/Bundle;)V
    .locals 7

    .line 271
    invoke-direct {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getKeyFromStorageByWidgetId(I)Lcom/android/systemui/people/widget/PeopleTileKey;

    move-result-object v5

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Widget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PeopleSpaceWidgetMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {v5}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Cannot update invalid widget"

    .line 274
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 277
    :cond_0
    new-instance v6, Lcom/android/systemui/people/PeopleTileViewHelper;

    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    move-object v0, v6

    move-object v2, p2

    move v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/people/PeopleTileViewHelper;-><init>(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;ILandroid/os/Bundle;Lcom/android/systemui/people/widget/PeopleTileKey;)V

    .line 278
    invoke-virtual {v6}, Lcom/android/systemui/people/PeopleTileViewHelper;->getViews()Landroid/widget/RemoteViews;

    move-result-object p2

    .line 281
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method private updateStorageAndViewWithConversationData(Landroid/app/people/ConversationChannel;I)V
    .locals 6

    .line 649
    invoke-virtual {p0, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileForExistingWidget(I)Landroid/app/people/PeopleSpaceTile;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "PeopleSpaceWidgetMgr"

    const-string p1, "Could not find stored tile to add conversation to"

    .line 651
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 654
    :cond_0
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->toBuilder()Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v0

    .line 655
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 657
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_2

    .line 658
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v2

    aget-object v2, v2, v4

    .line 659
    invoke-virtual {v2}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v3, v2

    .line 661
    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 663
    invoke-virtual {v0, v2}, Landroid/app/people/PeopleSpaceTile$Builder;->setUserName(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 665
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroid/app/people/PeopleSpaceTile;->convertDrawableToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 668
    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setUserIcon(Landroid/graphics/drawable/Icon;)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 671
    :cond_4
    invoke-virtual {v0, v3}, Landroid/app/people/PeopleSpaceTile$Builder;->setContactUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v1

    .line 672
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getStatuses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/people/PeopleSpaceTile$Builder;->setStatuses(Ljava/util/List;)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v1

    .line 673
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getLastEventTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/people/PeopleSpaceTile$Builder;->setLastInteractionTimestamp(J)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v1

    .line 674
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getParentNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 675
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getParentNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v4, 0x1

    .line 674
    :cond_5
    invoke-virtual {v1, v4}, Landroid/app/people/PeopleSpaceTile$Builder;->setIsImportantConversation(Z)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 676
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateAppWidgetOptionsAndView(ILandroid/app/people/PeopleSpaceTile;)V

    return-void
.end method

.method private updateWidgetIdsBasedOnNotifications(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 432
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const-string v1, "PeopleSpaceWidgetMgr"

    if-eqz v0, :cond_0

    const-string p0, "No widgets to update, returning."

    .line 433
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    const-string v0, "Fetching grouped notifications"

    .line 437
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getGroupedConversationNotifications()Ljava/util/Map;

    move-result-object v0

    .line 442
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v2, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda6;

    .line 443
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 445
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Ljava/util/Map;)V

    .line 444
    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    .line 447
    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 449
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception updating widgets: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateWidgetsWithNotificationChangedInBackground(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;)V
    .locals 5

    .line 402
    :try_start_0
    new-instance v0, Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 403
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 404
    invoke-virtual {v0}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "PeopleSpaceWidgetMgr"

    .line 405
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Sbn doesn\'t contain valid PeopleTileKey: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 411
    array-length v1, v1

    if-nez v1, :cond_1

    const-string p0, "PeopleSpaceWidgetMgr"

    const-string p1, "No app widget ids returned"

    .line 412
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getMatchingKeyWidgetIds(Lcom/android/systemui/people/widget/PeopleTileKey;)Ljava/util/Set;

    move-result-object v0

    .line 417
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getMatchingUriWidgetIds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;)Ljava/util/Set;

    move-result-object p1

    const-string p2, "PeopleSpaceWidgetMgr"

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Widgets by key to be updated:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "PeopleSpaceWidgetMgr"

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Widgets by URI to be updated:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 423
    invoke-direct {p0, v0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateWidgetIdsBasedOnNotifications(Ljava/util/Set;)V

    .line 424
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "PeopleSpaceWidgetMgr"

    .line 426
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Throwing exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateWithCurrentState(Landroid/app/people/PeopleSpaceTile;Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile;
    .locals 3

    .line 1034
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->toBuilder()Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 1036
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_4
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_5
    const-string v2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_6
    const-string v2, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x4

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1054
    invoke-direct {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getUserQuieted(Landroid/app/people/PeopleSpaceTile;)Z

    move-result p2

    goto :goto_1

    .line 1048
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getUserQuieted(Landroid/app/people/PeopleSpaceTile;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/people/PeopleSpaceTile$Builder;->setIsUserQuieted(Z)Landroid/app/people/PeopleSpaceTile$Builder;

    goto :goto_2

    .line 1043
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getPackageSuspended(Landroid/app/people/PeopleSpaceTile;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/people/PeopleSpaceTile$Builder;->setIsPackageSuspended(Z)Landroid/app/people/PeopleSpaceTile$Builder;

    goto :goto_2

    .line 1039
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getNotificationPolicyState()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationPolicyState(I)Landroid/app/people/PeopleSpaceTile$Builder;

    goto :goto_2

    .line 1054
    :goto_1
    invoke-virtual {v0, p2}, Landroid/app/people/PeopleSpaceTile$Builder;->setIsUserQuieted(Z)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p2

    .line 1055
    invoke-direct {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getPackageSuspended(Landroid/app/people/PeopleSpaceTile;)Z

    move-result v1

    .line 1054
    invoke-virtual {p2, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setIsPackageSuspended(Z)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object p2

    .line 1056
    invoke-direct {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getNotificationPolicyState()I

    move-result p0

    .line 1055
    invoke-virtual {p2, p0}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationPolicyState(I)Landroid/app/people/PeopleSpaceTile$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    :goto_2
    :pswitch_3
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 1059
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package no longer found for tile: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PeopleSpaceWidgetMgr"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x49d08e2b -> :sswitch_7
        -0x3bb3e592 -> :sswitch_6
        -0x33813a72 -> :sswitch_5
        -0x122164c -> :sswitch_4
        0x2f94f923 -> :sswitch_3
        0x31af1c32 -> :sswitch_2
        0x4cef8b35 -> :sswitch_1
        0x7d95a11b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addNewWidget(ILcom/android/systemui/people/widget/PeopleTileKey;)V
    .locals 5

    const-string v0, "PeopleSpaceWidgetMgr"

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNewWidget called with key for appWidgetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileFromPersistentStorage(Lcom/android/systemui/people/widget/PeopleTileKey;I)Landroid/app/people/PeopleSpaceTile;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 765
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->augmentTileFromNotificationEntryManager(Landroid/app/people/PeopleSpaceTile;Ljava/util/Optional;)Landroid/app/people/PeopleSpaceTile;

    move-result-object v0

    .line 768
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 769
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getKeyFromStorageByWidgetId(I)Lcom/android/systemui/people/widget/PeopleTileKey;

    move-result-object v2

    .line 770
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 772
    invoke-virtual {v2}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PeopleSpaceWidgetMgr"

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove previous storage for widget: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 774
    invoke-virtual {p0, v1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->deleteWidgets([I)V

    goto :goto_0

    .line 777
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/people/PeopleSpaceUtils$PeopleSpaceWidgetEvent;->PEOPLE_SPACE_WIDGET_ADDED:Lcom/android/systemui/people/PeopleSpaceUtils$PeopleSpaceWidgetEvent;

    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 781
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    const-string v1, "PeopleSpaceWidgetMgr"

    .line 782
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add storage for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 784
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getContactUri()Landroid/net/Uri;

    move-result-object v3

    .line 783
    invoke-static {v1, p2, p1, v3}, Lcom/android/systemui/people/PeopleSpaceUtils;->setSharedPreferencesStorageForTile(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleTileKey;ILandroid/net/Uri;)V

    .line 785
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "PeopleSpaceWidgetMgr"

    .line 786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ensure listener is registered for widget: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->registerConversationListenerIfNeeded(ILcom/android/systemui/people/widget/PeopleTileKey;)V

    :try_start_2
    const-string v1, "PeopleSpaceWidgetMgr"

    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching shortcut for PeopleTile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 791
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 792
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x2

    .line 790
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/content/pm/LauncherApps;->cacheShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v1, "PeopleSpaceWidgetMgr"

    .line 794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caching shortcut:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateAppWidgetOptionsAndView(ILandroid/app/people/PeopleSpaceTile;)V

    return-void

    :catchall_0
    move-exception p0

    .line 785
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 770
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public attach(Lcom/android/systemui/statusbar/NotificationListener;)V
    .locals 2

    const-string v0, "PeopleSpaceWidgetMgr"

    const-string v1, "attach"

    .line 684
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/NotificationListener;->addNotificationHandler(Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;)V

    return-void
.end method

.method public augmentTileFromNotificationEntryManager(Landroid/app/people/PeopleSpaceTile;Ljava/util/Optional;)Landroid/app/people/PeopleSpaceTile;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/people/PeopleSpaceTile;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/app/people/PeopleSpaceTile;"
        }
    .end annotation

    .line 458
    new-instance v2, Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-direct {v2, p1}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Landroid/app/people/PeopleSpaceTile;)V

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Augmenting tile from NotificationEntryManager widget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v2}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PeopleSpaceWidgetMgr"

    .line 460
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getGroupedConversationNotifications()Ljava/util/Map;

    move-result-object v4

    .line 466
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 469
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->augmentTileFromNotifications(Landroid/app/people/PeopleSpaceTile;Lcom/android/systemui/people/widget/PeopleTileKey;Ljava/lang/String;Ljava/util/Map;Ljava/util/Optional;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0
.end method

.method public augmentTileFromNotifications(Landroid/app/people/PeopleSpaceTile;Lcom/android/systemui/people/widget/PeopleTileKey;Ljava/lang/String;Ljava/util/Map;Ljava/util/Optional;)Landroid/app/people/PeopleSpaceTile;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/people/PeopleSpaceTile;",
            "Lcom/android/systemui/people/widget/PeopleTileKey;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/people/widget/PeopleTileKey;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;>;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/app/people/PeopleSpaceTile;"
        }
    .end annotation

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Augmenting tile from notifications. Tile key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PeopleSpaceWidgetMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 504
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.READ_CONTACTS"

    .line 503
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 506
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0, p3, p4}, Lcom/android/systemui/people/PeopleSpaceUtils;->getNotificationsByUri(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 509
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 511
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number of notifications matched by contact URI: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 511
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_1
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    if-nez p3, :cond_2

    .line 519
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 521
    :cond_2
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 522
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No existing notifications for tile: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-static {p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->removeNotificationFields(Landroid/app/people/PeopleSpaceTile;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0

    .line 527
    :cond_3
    invoke-interface {p3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 528
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Total notifications matching tile: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-static {p3}, Lcom/android/systemui/people/PeopleSpaceUtils;->getMessagesCount(Ljava/util/Set;)I

    move-result v6

    .line 531
    invoke-static {p3}, Lcom/android/systemui/people/NotificationHelper;->getHighestPriorityNotification(Ljava/util/Set;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v5

    .line 533
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Augmenting tile from notification, key: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/people/PeopleSpaceUtils;->augmentTileFromNotification(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;Lcom/android/systemui/people/widget/PeopleTileKey;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILjava/util/Optional;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0
.end method

.method public deleteWidgets([I)V
    .locals 11

    .line 837
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    const-string v4, "PeopleSpaceWidgetMgr"

    .line 838
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Widget removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v4, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v5, Lcom/android/systemui/people/PeopleSpaceUtils$PeopleSpaceWidgetEvent;->PEOPLE_SPACE_WIDGET_DELETED:Lcom/android/systemui/people/PeopleSpaceUtils$PeopleSpaceWidgetEvent;

    invoke-interface {v4, v5}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 844
    iget-object v4, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 845
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 847
    new-instance v6, Lcom/android/systemui/people/widget/PeopleTileKey;

    const-string v7, "shortcut_id"

    const/4 v8, 0x0

    .line 848
    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "user_id"

    const/4 v10, -0x1

    .line 849
    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "package_name"

    .line 850
    invoke-interface {v5, v10, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v9, v5}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 851
    invoke-virtual {v6}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid()Z

    move-result v5

    if-nez v5, :cond_0

    const-string p0, "PeopleSpaceWidgetMgr"

    .line 852
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not delete "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    monitor-exit v4

    return-void

    .line 855
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    iget-object v7, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 856
    invoke-virtual {v6}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 857
    iget-object v7, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 858
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 859
    iget-object v8, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 860
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v3, v7}, Lcom/android/systemui/people/PeopleSpaceUtils;->removeSharedPreferencesStorageForTile(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleTileKey;ILjava/lang/String;)V

    .line 862
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "PeopleSpaceWidgetMgr"

    .line 864
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stored widget IDs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 866
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string v4, "PeopleSpaceWidgetMgr"

    const-string v5, "Remove caching and listener"

    .line 867
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-direct {p0, v6, v3}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->unregisterConversationListener(Lcom/android/systemui/people/widget/PeopleTileKey;I)V

    .line 869
    invoke-direct {p0, v6}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->uncacheConversationShortcut(Lcom/android/systemui/people/widget/PeopleTileKey;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    .line 862
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 858
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_2
    return-void
.end method

.method public getAugmentedTileForExistingWidget(ILjava/util/Map;)Ljava/util/Optional;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Lcom/android/systemui/people/widget/PeopleTileKey;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;>;)",
            "Ljava/util/Optional<",
            "Landroid/app/people/PeopleSpaceTile;",
            ">;"
        }
    .end annotation

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Augmenting tile for existing widget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PeopleSpaceWidgetMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileForExistingWidget(I)Landroid/app/people/PeopleSpaceTile;

    move-result-object v3

    if-nez v3, :cond_0

    .line 546
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Widget: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Null tile for existing widget, skipping update."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 553
    new-instance v4, Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-direct {v4, v3}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Landroid/app/people/PeopleSpaceTile;)V

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing widget: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Tile key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    move-object v2, p0

    move-object v6, p2

    .line 556
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->augmentTileFromNotifications(Landroid/app/people/PeopleSpaceTile;Lcom/android/systemui/people/widget/PeopleTileKey;Ljava/lang/String;Ljava/util/Map;Ljava/util/Optional;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    .line 555
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getGroupedConversationNotifications()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/systemui/people/widget/PeopleTileKey;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;>;"
        }
    .end annotation

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 475
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getVisibleNotifications()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 476
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 477
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getPendingNotificationsIterator()Ljava/lang/Iterable;

    move-result-object p0

    .line 478
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 479
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 481
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number of total notifications: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PeopleSpaceWidgetMgr"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda10;

    .line 485
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda7;

    .line 489
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v2

    .line 487
    invoke-static {v0, v2}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of grouped conversation notifications keys: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getMatchingKeyWidgetIds(Lcom/android/systemui/people/widget/PeopleTileKey;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/people/widget/PeopleTileKey;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 562
    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 565
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPreview(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)Landroid/widget/RemoteViews;
    .locals 7

    const-string v0, "PeopleSpaceWidgetMgr"

    const/4 v1, 0x0

    .line 979
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    .line 980
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 979
    invoke-interface {v2, p3, p2, p1}, Landroid/app/people/IPeopleManager;->getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    move-result-object p2

    .line 981
    iget-object p3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-static {p2, p3}, Lcom/android/systemui/people/PeopleSpaceUtils;->getTile(Landroid/app/people/ConversationChannel;Landroid/content/pm/LauncherApps;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    const-string p0, "No tile was returned"

    .line 987
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 992
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p3

    .line 991
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->augmentTileFromNotificationEntryManager(Landroid/app/people/PeopleSpaceTile;Ljava/util/Optional;)Landroid/app/people/PeopleSpaceTile;

    move-result-object v3

    .line 994
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Returning tile preview for shortcutId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    new-instance p1, Lcom/android/systemui/people/PeopleTileViewHelper;

    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v6, Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-direct {v6, v3}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Landroid/app/people/PeopleSpaceTile;)V

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/people/PeopleTileViewHelper;-><init>(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;ILandroid/os/Bundle;Lcom/android/systemui/people/widget/PeopleTileKey;)V

    .line 996
    invoke-virtual {p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getViews()Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 983
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception getting tiles: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getPriorityTiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/people/PeopleSpaceTile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 931
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mINotificationManager:Landroid/app/INotificationManager;

    const/4 v1, 0x1

    .line 932
    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 934
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda9;

    .line 935
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda4;

    .line 937
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 938
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUserManager:Landroid/os/UserManager;

    invoke-static {v1, v2, p0, v0}, Lcom/android/systemui/people/PeopleSpaceUtils;->getSortedTiles(Landroid/app/people/IPeopleManager;Landroid/content/pm/LauncherApps;Landroid/os/UserManager;Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getRecentTiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/people/PeopleSpaceTile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "PeopleSpaceWidgetMgr"

    const-string v1, "Add recent conversations"

    .line 948
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mINotificationManager:Landroid/app/INotificationManager;

    const/4 v1, 0x0

    .line 950
    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 951
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda8;

    .line 952
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda5;

    .line 954
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 956
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    .line 957
    invoke-interface {v1}, Landroid/app/people/IPeopleManager;->getRecentConversations()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 959
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda3;

    .line 960
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 962
    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 964
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mUserManager:Landroid/os/UserManager;

    .line 965
    invoke-static {v1, v2, p0, v0}, Lcom/android/systemui/people/PeopleSpaceUtils;->getSortedTiles(Landroid/app/people/IPeopleManager;Landroid/content/pm/LauncherApps;Landroid/os/UserManager;Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTileForExistingWidget(I)Landroid/app/people/PeopleSpaceTile;
    .locals 6

    .line 313
    sget-object v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mTiles:Ljava/util/Map;

    monitor-enter v0

    .line 314
    :try_start_0
    sget-object v1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mTiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/people/PeopleSpaceTile;

    .line 315
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const-string p0, "PeopleSpaceWidgetMgr"

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "People Tile is cached for widget: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const-string v0, "PeopleSpaceWidgetMgr"

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetching key from sharedPreferences: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 324
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 323
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 326
    new-instance v1, Lcom/android/systemui/people/widget/PeopleTileKey;

    const-string v2, "shortcut_id"

    const-string v3, ""

    .line 327
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    const/4 v4, -0x1

    .line 328
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "package_name"

    const-string v5, ""

    .line 329
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 331
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileFromPersistentStorage(Lcom/android/systemui/people/widget/PeopleTileKey;I)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 315
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getTileFromPersistentStorage(Lcom/android/systemui/people/widget/PeopleTileKey;I)Landroid/app/people/PeopleSpaceTile;
    .locals 5

    .line 340
    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PeopleSpaceWidgetMgr"

    if-nez v0, :cond_0

    .line 341
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PeopleTileKey invalid: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 351
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieving Tile from storage: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    .line 353
    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->getUserId()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/systemui/people/widget/PeopleTileKey;->getShortcutId()Ljava/lang/String;

    move-result-object p1

    .line 352
    invoke-interface {v0, v3, v4, p1}, Landroid/app/people/IPeopleManager;->getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "Could not retrieve conversation from storage"

    .line 355
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 360
    :cond_2
    new-instance v0, Landroid/app/people/PeopleSpaceTile$Builder;

    iget-object v3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-direct {v0, p1, v3}, Landroid/app/people/PeopleSpaceTile$Builder;-><init>(Landroid/app/people/ConversationChannel;Landroid/content/pm/LauncherApps;)V

    .line 367
    iget-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 368
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/people/PeopleSpaceTile;->getContactUri()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_3

    .line 369
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restore contact uri from storage: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/people/PeopleSpaceTile$Builder;->setContactUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 374
    :cond_3
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p1

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateWithCurrentState(Landroid/app/people/PeopleSpaceTile;Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 376
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to retrieve conversation for tile: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    :goto_0
    const-string p0, "System services are null"

    .line 346
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public init()V
    .locals 6

    .line 169
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mRegisteredReceivers:Z

    if-nez v1, :cond_0

    .line 171
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    .line 172
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 173
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    .line 174
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 175
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGES_SUSPENDED"

    .line 176
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 177
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 178
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 179
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_UNLOCKED"

    .line 180
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    const/4 v1, 0x1

    .line 183
    iput-boolean v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mRegisteredReceivers:Z

    .line 185
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onAppWidgetOptionsChanged(ILandroid/os/Bundle;)V
    .locals 3

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppWidgetOptionsChanged called for widget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PeopleSpaceWidgetMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-static {p2}, Lcom/android/systemui/people/widget/AppWidgetOptionsHelper;->getPeopleTileKeyFromBundle(Landroid/os/Bundle;)Lcom/android/systemui/people/widget/PeopleTileKey;

    move-result-object p2

    .line 746
    invoke-virtual {p2}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PeopleTileKey was present in Options, shortcutId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-virtual {p2}, Lcom/android/systemui/people/widget/PeopleTileKey;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 748
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-static {v0, p1}, Lcom/android/systemui/people/widget/AppWidgetOptionsHelper;->removePeopleTileKey(Landroid/appwidget/AppWidgetManager;I)V

    .line 752
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->addNewWidget(ILcom/android/systemui/people/widget/PeopleTileKey;)V

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v0, 0x0

    aput p1, p2, v0

    .line 755
    invoke-virtual {p0, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateWidgets([I)V

    return-void
.end method

.method public registerConversationListenerIfNeeded(ILcom/android/systemui/people/widget/PeopleTileKey;)V
    .locals 6

    .line 802
    invoke-virtual {p2}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "PeopleSpaceWidgetMgr"

    .line 803
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not register listener for widget: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 806
    :cond_0
    new-instance v4, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$TileConversationListener;

    invoke-direct {v4, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$TileConversationListener;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    .line 807
    sget-object v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListeners:Ljava/util/Map;

    monitor-enter v0

    .line 808
    :try_start_0
    sget-object v1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "PeopleSpaceWidgetMgr"

    const-string p1, "Already registered listener"

    .line 809
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    monitor-exit v0

    return-void

    :cond_1
    const-string v1, "PeopleSpaceWidgetMgr"

    .line 812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register listener for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    sget-object p1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mListeners:Ljava/util/Map;

    invoke-interface {p1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mPeopleManager:Landroid/app/people/PeopleManager;

    invoke-virtual {p2}, Lcom/android/systemui/people/widget/PeopleTileKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 816
    invoke-virtual {p2}, Lcom/android/systemui/people/widget/PeopleTileKey;->getUserId()I

    move-result v2

    .line 817
    invoke-virtual {p2}, Lcom/android/systemui/people/widget/PeopleTileKey;->getShortcutId()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 818
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 815
    invoke-virtual/range {v0 .. v5}, Landroid/app/people/PeopleManager;->registerConversationListener(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/PeopleManager$ConversationListener;Ljava/util/concurrent/Executor;)V

    return-void

    :catchall_0
    move-exception p0

    .line 814
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public requestPinAppWidget(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Z
    .locals 4

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting pin widget, shortcutId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PeopleSpaceWidgetMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 912
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 911
    invoke-virtual {p0, v0, v2, v3, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getPreview(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)Landroid/widget/RemoteViews;

    move-result-object p2

    if-nez p2, :cond_0

    .line 914
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skipping pinning widget: no tile for shortcutId: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 917
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "appWidgetPreview"

    .line 918
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 920
    iget-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 921
    invoke-static {p2, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetPinnedReceiver;->getPendingIntent(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 923
    new-instance p2, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;

    invoke-direct {p2, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 924
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p0, p2, v0, p1}, Landroid/appwidget/AppWidgetManager;->requestPinAppWidget(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result p0

    return p0
.end method

.method public updateAppWidgetOptionsAndView(ILandroid/app/people/PeopleSpaceTile;)V
    .locals 3

    if-nez p2, :cond_0

    const-string p0, "PeopleSpaceWidgetMgr"

    const-string p1, "Requested to store null tile"

    .line 295
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 298
    :cond_0
    sget-object v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mTiles:Ljava/util/Map;

    monitor-enter v0

    .line 299
    :try_start_0
    sget-object v1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mTiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 302
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateAppWidgetViews(ILandroid/app/people/PeopleSpaceTile;Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception p0

    .line 300
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateAppWidgetOptionsAndViewOptional(ILjava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Optional<",
            "Landroid/app/people/PeopleSpaceTile;",
            ">;)V"
        }
    .end annotation

    .line 287
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateAppWidgetOptionsAndView(ILandroid/app/people/PeopleSpaceTile;)V

    :cond_0
    return-void
.end method

.method public updateSingleConversationWidgets([I)V
    .locals 7

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 253
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    .line 254
    invoke-virtual {p0, v3}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileForExistingWidget(I)Landroid/app/people/PeopleSpaceTile;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v5, "PeopleSpaceWidgetMgr"

    const-string v6, "Matching conversation not found for shortcut ID"

    .line 256
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateAppWidgetOptionsAndView(ILandroid/app/people/PeopleSpaceTile;)V

    .line 259
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 261
    new-instance v5, Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-direct {v5, v4}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Landroid/app/people/PeopleSpaceTile;)V

    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->registerConversationListenerIfNeeded(ILcom/android/systemui/people/widget/PeopleTileKey;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-static {v1, p0, v0, p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->getDataFromContactsOnBackgroundThread(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Ljava/util/Map;[I)V

    return-void
.end method

.method public updateWidgets([I)V
    .locals 3

    :try_start_0
    const-string v0, "PeopleSpaceWidgetMgr"

    const-string/jumbo v1, "updateWidgets called"

    .line 232
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    array-length v0, p1

    if-nez v0, :cond_0

    const-string p0, "PeopleSpaceWidgetMgr"

    const-string p1, "no widgets to update"

    .line 234
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "PeopleSpaceWidgetMgr"

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " widgets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateSingleConversationWidgets([I)V

    .line 241
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "PeopleSpaceWidgetMgr"

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method updateWidgetsOnStateChange(Ljava/lang/String;)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1012
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1017
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1018
    :try_start_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v0, v3

    .line 1019
    invoke-virtual {p0, v4}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileForExistingWidget(I)Landroid/app/people/PeopleSpaceTile;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v6, "PeopleSpaceWidgetMgr"

    const-string v7, "Matching conversation not found for shortcut ID"

    .line 1021
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1023
    :cond_1
    invoke-direct {p0, v5, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateWithCurrentState(Landroid/app/people/PeopleSpaceTile;Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile;

    move-result-object v5

    .line 1025
    :goto_1
    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateAppWidgetOptionsAndView(ILandroid/app/people/PeopleSpaceTile;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1027
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateWidgetsWithConversationChanged(Landroid/app/people/ConversationChannel;)V
    .locals 7

    .line 627
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 628
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 629
    :try_start_0
    new-instance v2, Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 630
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v4

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 631
    invoke-virtual {p0, v2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getMatchingKeyWidgetIds(Lcom/android/systemui/people/widget/PeopleTileKey;)Ljava/util/Set;

    move-result-object v2

    .line 632
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "PeopleSpaceWidgetMgr"

    .line 634
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Conversation update for widget "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 634
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 638
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateStorageAndViewWithConversationData(Landroid/app/people/ConversationChannel;I)V

    goto :goto_0

    .line 641
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateWidgetsWithNotificationChanged(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;)V
    .locals 3

    const-string v0, "PeopleSpaceWidgetMgr"

    const-string/jumbo v1, "updateWidgetsWithNotificationChanged called"

    .line 388
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    sget-object v1, Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;->POSTED:Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;

    if-ne p2, v1, :cond_0

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification posted, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 392
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification removed, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
