.class public Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;
.super Ljava/lang/Object;
.source "WallpaperNotifier.java"


# static fields
.field private static final NOTIFYABLE_PACKAGES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOTIFYABLE_WALLPAPERS:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mShouldBroadcastNotifications:Z

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "com.breel.wallpapers.imprint"

    const-string v1, "com.breel.wallpapers18.tactile"

    const-string v2, "com.breel.wallpapers18.delight"

    const-string v3, "com.breel.wallpapers18.miniman"

    const-string v4, "com.google.pixel.livewallpaper.imprint"

    const-string v5, "com.google.pixel.livewallpaper.tactile"

    const-string v6, "com.google.pixel.livewallpaper.delight"

    const-string v7, "com.google.pixel.livewallpaper.miniman"

    .line 127
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->NOTIFYABLE_WALLPAPERS:[Ljava/lang/String;

    const-string v0, "com.breel.wallpapers"

    const-string v1, "com.breel.wallpapers18"

    const-string v2, "com.google.pixel.livewallpaper"

    .line 132
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->NOTIFYABLE_PACKAGES:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$2;-><init>(Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;)V

    iput-object v0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 92
    new-instance v0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$3;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$3;-><init>(Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;)V

    iput-object v0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    iput-object p1, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 61
    new-instance p1, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$1;

    invoke-direct {p1, p0, p3}, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier$1;-><init>(Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;)Lcom/android/systemui/settings/CurrentUserTracker;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mShouldBroadcastNotifications:Z

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mWallpaperPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->checkNotificationBroadcastSupport()V

    return-void
.end method

.method private checkNotificationBroadcastSupport()V
    .locals 5

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mShouldBroadcastNotifications:Z

    .line 103
    iget-object v1, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/WallpaperManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    if-nez v1, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 112
    :cond_1
    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 114
    sget-object v3, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->NOTIFYABLE_PACKAGES:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 117
    :cond_2
    iput-object v2, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mWallpaperPackage:Ljava/lang/String;

    .line 118
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 119
    sget-object v2, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->NOTIFYABLE_WALLPAPERS:[Ljava/lang/String;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_4

    aget-object v4, v2, v0

    .line 120
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mShouldBroadcastNotifications:Z

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public attach()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    invoke-direct {p0}, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->checkNotificationBroadcastSupport()V

    return-void
.end method
