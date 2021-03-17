.class public Lcom/android/systemui/statusbar/NotificationMediaManager;
.super Ljava/lang/Object;
.source "NotificationMediaManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;,
        Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;
    }
.end annotation


# static fields
.field private static final PAUSED_MEDIA_STATES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

.field private mBackdropBack:Landroid/widget/ImageView;

.field private mBackdropFront:Landroid/widget/ImageView;

.field private mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mContext:Landroid/content/Context;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field protected final mHideBackdropFront:Ljava/lang/Runnable;

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

.field private final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mMediaArtworkProcessor:Lcom/android/systemui/statusbar/MediaArtworkProcessor;

.field private mMediaController:Landroid/media/session/MediaController;

.field private final mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

.field private final mMediaListener:Landroid/media/session/MediaController$Callback;

.field private final mMediaListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaMetadata:Landroid/media/MediaMetadata;

.field private mMediaNotificationKey:Ljava/lang/String;

.field private final mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field private final mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field private mNotificationShadeWindowController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;"
        }
    .end annotation
.end field

.field protected mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private final mProcessArtworkTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/AsyncTask<",
            "***>;>;"
        }
    .end annotation
.end field

.field private final mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mShowCompactMediaSeekbar:Z

.field private final mStatusBarLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mUsingNotifPipeline:Z


# direct methods
.method public static synthetic $r8$lambda$6RVuqp-zmoNq3d9pyr8dvoFINDc(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->lambda$getMediaIcon$1(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QqZkfu7Pbq_sgQxmovlVCtAFisg(Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->lambda$getMediaIcon$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xDOu5eUWFbKr72ZDuuD7f2ij5k8(Lcom/android/systemui/statusbar/NotificationMediaManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->lambda$finishUpdateMediaMetaData$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->PAUSED_MEDIA_STATES:Ljava/util/HashSet;

    const/4 v1, 0x0

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/MediaArtworkProcessor;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/media/MediaDataManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            "Lcom/android/systemui/statusbar/MediaArtworkProcessor;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            "Lcom/android/systemui/statusbar/notification/collection/NotifCollection;",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            "Lcom/android/systemui/media/MediaDataManager;",
            ")V"
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 102
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 103
    const-class v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 104
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 139
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mProcessArtworkTasks:Ljava/util/Set;

    .line 151
    new-instance v0, Lcom/android/systemui/statusbar/NotificationMediaManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$1;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 167
    new-instance v1, Lcom/android/systemui/statusbar/NotificationMediaManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$2;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListener:Landroid/media/session/MediaController$Callback;

    .line 839
    new-instance v1, Lcom/android/systemui/statusbar/NotificationMediaManager$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$8;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mHideBackdropFront:Ljava/lang/Runnable;

    .line 210
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mContext:Landroid/content/Context;

    .line 211
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaArtworkProcessor:Lcom/android/systemui/statusbar/MediaArtworkProcessor;

    .line 212
    iput-object p6, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 213
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListeners:Ljava/util/ArrayList;

    const-string p5, "media_session"

    .line 216
    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/media/session/MediaSessionManager;

    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 219
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mStatusBarLazy:Ldagger/Lazy;

    .line 220
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mNotificationShadeWindowController:Ldagger/Lazy;

    .line 221
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 222
    iput-object p10, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 223
    iput-object p12, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    .line 224
    iput-object p7, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 225
    iput-object p8, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 227
    invoke-virtual {p9}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewNotifPipelineRenderingEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->setupNEM()V

    const/4 p2, 0x0

    .line 229
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mUsingNotifPipeline:Z

    goto :goto_0

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->setupNotifPipeline()V

    const/4 p2, 0x1

    .line 232
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mUsingNotifPipeline:Z

    :goto_0
    const-string p2, "systemui"

    const-string p3, "compact_media_notification_seekbar_enabled"

    .line 236
    invoke-static {p2, p3}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "true"

    .line 235
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mShowCompactMediaSeekbar:Z

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 239
    invoke-virtual {p11, p2, p0, v0}, Lcom/android/systemui/util/DeviceConfigProxy;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/NotificationMediaManager;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mShowCompactMediaSeekbar:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/NotificationMediaManager;I)Z
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlaybackActive(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/NotificationMediaManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/NotificationMediaManager;)Landroid/widget/ImageView;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/NotificationMediaManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->processArtwork(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/NotificationMediaManager;Landroid/os/AsyncTask;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->removeTask(Landroid/os/AsyncTask;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/NotificationMediaManager;ZZLandroid/graphics/Bitmap;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/NotificationMediaManager;->finishUpdateMediaMetaData(ZZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/NotificationMediaManager;)Lcom/android/systemui/statusbar/MediaArtworkProcessor;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaArtworkProcessor:Lcom/android/systemui/statusbar/MediaArtworkProcessor;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/NotificationMediaManager;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/NotificationMediaManager;ZZ)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->dispatchUpdateMediaMetaData(ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/NotificationMediaManager;)Lcom/android/systemui/media/MediaDataManager;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->removeEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/NotificationMediaManager;)Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getDismissedByUserStats(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/NotificationMediaManager;)Lcom/android/systemui/statusbar/notification/collection/NotifCollection;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    return-object p0
.end method

.method private clearCurrentMediaNotificationSession()V
    .locals 3

    .line 616
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaArtworkProcessor:Lcom/android/systemui/statusbar/MediaArtworkProcessor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->clearCache()V

    const/4 v0, 0x0

    .line 617
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 618
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_0

    .line 623
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 625
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    return-void
.end method

.method private dispatchUpdateMediaMetaData(ZZ)V
    .locals 3

    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    if-eqz v0, :cond_0

    .line 561
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationPresenter;->updateMediaMetaData(ZZ)V

    .line 563
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I

    move-result p1

    .line 564
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListeners:Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    .line 565
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 566
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    invoke-interface {v1, v2, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;->onPrimaryMetadataOrStateChanged(Landroid/media/MediaMetadata;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findPlayingMediaNotification(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)Z"
        }
    .end annotation

    .line 478
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 479
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isMediaNotification()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 481
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.mediaSession"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaSession$Token;

    if-eqz v3, :cond_0

    .line 484
    new-instance v4, Landroid/media/session/MediaController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    const/4 v3, 0x3

    .line 486
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I

    move-result v5

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    move-object v4, v1

    :goto_0
    if-nez v1, :cond_4

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-eqz v0, :cond_4

    .line 506
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 507
    invoke-virtual {v0, v2, v3}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 509
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    .line 511
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 513
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 514
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v4, v2

    move-object v1, v6

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    .line 528
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    invoke-direct {p0, p1, v4}, Lcom/android/systemui/statusbar/NotificationMediaManager;->sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 530
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->clearCurrentMediaNotificationSession()V

    .line 531
    iput-object v4, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    .line 532
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v4, p1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 533
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    .line 543
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 544
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    :cond_6
    return p1
.end method

.method private finishUpdateMediaMetaData(ZZLandroid/graphics/Bitmap;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 691
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const/4 p3, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v3, p3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v1, :cond_3

    .line 697
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v0

    :goto_2
    if-eqz v4, :cond_3

    .line 699
    new-instance v1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    .line 700
    invoke-virtual {v5}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 703
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v4

    if-ne v4, p3, :cond_3

    move v4, p3

    goto :goto_3

    :cond_3
    move v4, v2

    .line 707
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mNotificationShadeWindowController:Ldagger/Lazy;

    .line 708
    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 709
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->isOccluded()Z

    move-result v6

    if-eqz v1, :cond_4

    move v7, p3

    goto :goto_4

    :cond_4
    move v7, v2

    .line 712
    :goto_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v8, v3}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->setHasMediaArtwork(Z)V

    .line 713
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-eqz v3, :cond_5

    .line 714
    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/ScrimController;->setHasBackdrop(Z)V

    :cond_5
    const/4 v3, 0x2

    const/4 v8, 0x0

    if-nez v7, :cond_6

    goto/16 :goto_7

    .line 717
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 718
    invoke-interface {v7}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v7

    if-nez v7, :cond_7

    if-eqz v4, :cond_c

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    if-eqz v4, :cond_c

    .line 719
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v4

    if-eq v4, v3, :cond_c

    if-nez v6, :cond_c

    .line 723
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_a

    .line 724
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p2, :cond_8

    .line 726
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 727
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_5

    .line 729
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 730
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_5
    if-eqz v5, :cond_9

    .line 733
    invoke-interface {v5, p3}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setBackdropShowing(Z)V

    :cond_9
    move p1, p3

    :cond_a
    if-eqz p1, :cond_14

    .line 741
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 742
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    .line 743
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    .line 744
    invoke-virtual {p2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 745
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 746
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 747
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 749
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 758
    :goto_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 761
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_14

    .line 768
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xfa

    .line 769
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 770
    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mHideBackdropFront:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_9

    .line 776
    :cond_c
    :goto_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_14

    .line 780
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result p1

    if-eqz p1, :cond_d

    sget-object p1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 781
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getAnimateChange()Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_8

    :cond_d
    move p3, v2

    .line 782
    :goto_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isBypassFadingAnimation()Z

    move-result p1

    .line 783
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v1

    if-eq v1, v3, :cond_f

    :cond_e
    if-eqz p3, :cond_10

    :cond_f
    if-eqz p1, :cond_11

    :cond_10
    if-eqz v6, :cond_12

    .line 789
    :cond_11
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 790
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v5, :cond_14

    .line 792
    invoke-interface {v5, v2}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setBackdropShowing(Z)V

    goto :goto_9

    :cond_12
    if-eqz v5, :cond_13

    .line 796
    invoke-interface {v5, v2}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setBackdropShowing(Z)V

    .line 798
    :cond_13
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 799
    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    .line 800
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x12c

    .line 801
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x0

    .line 802
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/NotificationMediaManager-$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    .line 803
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 809
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 810
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 812
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getShortenedFadingAwayDuration()J

    move-result-wide p2

    .line 811
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 814
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getKeyguardFadingAwayDelay()J

    move-result-wide p2

    .line 813
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 815
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 816
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_14
    :goto_9
    return-void
.end method

.method private getDismissedByUserStats(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;
    .locals 5

    .line 359
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mUsingNotifPipeline:Z

    if-eqz v0, :cond_0

    .line 360
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getShadeListCount()I

    move-result p0

    goto :goto_0

    .line 362
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsCount()I

    move-result p0

    .line 364
    :goto_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    const/4 v1, 0x3

    .line 368
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v3

    .line 372
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object p1

    const/4 v4, 0x1

    .line 367
    invoke-static {v2, v3, p0, v4, p1}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p0

    invoke-direct {v0, v1, v4, p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(IILcom/android/internal/statusbar/NotificationVisibility;)V

    return-object v0
.end method

.method private getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 607
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 609
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isPlaybackActive(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPlayingState(I)Z
    .locals 1

    .line 386
    sget-object v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->PAUSED_MEDIA_STATES:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$finishUpdateMediaMetaData$2()V
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 805
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 806
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 807
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mHideBackdropFront:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getMediaIcon$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 419
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getMediaIcon$1(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 421
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    return-object p0
.end method

.method private processArtwork(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaArtworkProcessor:Lcom/android/systemui/statusbar/MediaArtworkProcessor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->processArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private removeEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 376
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->onNotificationRemoved(Ljava/lang/String;)V

    .line 377
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaDataManager;->onNotificationRemoved(Ljava/lang/String;)V

    return-void
.end method

.method private removeTask(Landroid/os/AsyncTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask<",
            "***>;)V"
        }
    .end annotation

    .line 857
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mProcessArtworkTasks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 602
    :cond_1
    invoke-virtual {p1, p2}, Landroid/media/session/MediaController;->controlsSameSession(Landroid/media/session/MediaController;)Z

    move-result p0

    return p0
.end method

.method private setupNEM()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationMediaManager$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$5;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationMediaManager$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$6;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationMediaManager$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$7;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaDataManager;->addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)V

    return-void
.end method

.method private setupNotifPipeline()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationMediaManager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$3;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationMediaManager$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$4;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaDataManager;->addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;)V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    .line 440
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I

    move-result p0

    .line 439
    invoke-interface {p1, v0, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;->onPrimaryMetadataOrStateChanged(Landroid/media/MediaMetadata;I)V

    return-void
.end method

.method public clearCurrentMediaNotification()V
    .locals 1

    const/4 v0, 0x0

    .line 555
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    .line 556
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->clearCurrentMediaNotificationSession()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "    mMediaSessionManager="

    .line 572
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 573
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "    mMediaNotificationKey="

    .line 574
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 575
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    mMediaController="

    .line 576
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 577
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 578
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p1, :cond_0

    .line 579
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " state="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 581
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "    mMediaMetadata="

    .line 582
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 583
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 584
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz p1, :cond_1

    .line 585
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " title="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string p3, "android.media.metadata.TITLE"

    invoke-virtual {p0, p3}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 587
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public findAndUpdateMediaNotifications()V
    .locals 3

    .line 449
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mUsingNotifPipeline:Z

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object v0

    .line 452
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->findPlayingMediaNotification(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    monitor-enter v0

    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getAllNotifs()Ljava/util/Collection;

    move-result-object v1

    .line 456
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->findPlayingMediaNotification(Ljava/util/Collection;)Z

    move-result v1

    .line 457
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 460
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const-string v2, "NotificationMediaManager - metaDataChanged"

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications(Ljava/lang/String;)V

    :cond_1
    move v0, v1

    :goto_0
    const/4 v1, 0x1

    .line 464
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->dispatchUpdateMediaMetaData(ZZ)V

    return-void

    :catchall_0
    move-exception p0

    .line 457
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getMediaIcon()Landroid/graphics/drawable/Icon;
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 416
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mUsingNotifPipeline:Z

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/statusbar/NotificationMediaManager-$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    .line 419
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 420
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/statusbar/NotificationMediaManager-$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/statusbar/NotificationMediaManager-$$ExternalSyntheticLambda2;

    .line 421
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/statusbar/NotificationMediaManager-$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/statusbar/NotificationMediaManager-$$ExternalSyntheticLambda1;

    .line 422
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 423
    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Icon;

    return-object p0

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    monitor-enter v0

    .line 426
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    .line 427
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 428
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 432
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 429
    :cond_3
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 433
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMediaMetadata()Landroid/media/MediaMetadata;
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object p0
.end method

.method public getMediaNotificationKey()Ljava/lang/String;
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    return-object p0
.end method

.method public getShowCompactMediaSeekbar()Z
    .locals 0

    .line 409
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mShowCompactMediaSeekbar:Z

    return p0
.end method

.method public onNotificationRemoved(Ljava/lang/String;)V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->clearCurrentMediaNotification()V

    const/4 p1, 0x1

    .line 396
    invoke-direct {p0, p1, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->dispatchUpdateMediaMetaData(ZZ)V

    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;)V
    .locals 0

    .line 444
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBiometricUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    .line 833
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    return-void
.end method

.method public setup(Lcom/android/systemui/statusbar/BackDropView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 826
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    .line 827
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    .line 828
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 829
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    return-void
.end method

.method public updateMediaMetaData(ZZ)V
    .locals 6

    const-string v0, "StatusBar#updateMediaMetaData"

    .line 632
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    if-nez v0, :cond_0

    .line 639
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 644
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 645
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isLaunchTransitionFadingAway()Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v0, :cond_2

    goto :goto_4

    .line 651
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 662
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "android.media.metadata.ART"

    .line 663
    invoke-virtual {v0, v4}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "android.media.metadata.ALBUM_ART"

    .line 665
    invoke-virtual {v0, v4}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v3

    :cond_4
    :goto_1
    if-eqz p1, :cond_6

    .line 672
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mProcessArtworkTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/AsyncTask;

    .line 673
    invoke-virtual {v5, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_2

    .line 675
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mProcessArtworkTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_6
    if-eqz v4, :cond_7

    .line 677
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 678
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mProcessArtworkTasks:Ljava/util/Set;

    new-instance v3, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;ZZ)V

    new-array p0, v2, [Landroid/graphics/Bitmap;

    aput-object v4, p0, v1

    .line 679
    invoke-virtual {v3, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    .line 678
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 681
    :cond_7
    invoke-direct {p0, p1, p2, v3}, Lcom/android/systemui/statusbar/NotificationMediaManager;->finishUpdateMediaMetaData(ZZLandroid/graphics/Bitmap;)V

    .line 684
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 646
    :cond_8
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 647
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
