.class public Lcom/android/systemui/appops/AppOpsControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "AppOpsControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/appops/AppOpsController;
.implements Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;
.implements Landroid/app/AppOpsManager$OnOpNotedListener;
.implements Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/appops/AppOpsControllerImpl$H;
    }
.end annotation


# static fields
.field protected static final OPS:[I


# instance fields
.field private final mActiveItems:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mActiveItems"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/appops/AppOpItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

.field private mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/appops/AppOpsController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacksByCode:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Lcom/android/systemui/appops/AppOpsController$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCameraDisabled:Z

.field private final mDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mFlagsCache:Lcom/android/systemui/appops/PermissionFlagsCache;

.field private mLastLocationProviderPackageUpdate:J

.field private mListening:Z

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mLocationProviderPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMicMuted:Z

.field private final mNotedItems:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotedItems"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/appops/AppOpItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mRecordingsByUid:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mActiveItems"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;


# direct methods
.method public static synthetic $r8$lambda$D_3b3F8lH_XnAWBGg8J56QkIqyo(Lcom/android/systemui/appops/AppOpsControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/appops/AppOpsControllerImpl;->lambda$setListening$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$GiO16G02VhvraMuIa07FO-1FDlk(Lcom/android/systemui/appops/AppOpsControllerImpl;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/appops/AppOpsControllerImpl;->lambda$onSensorBlockedChanged$2(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$wxZ9nVuJ6nZ2-M8FJ3w80hwdnE4(Lcom/android/systemui/appops/AppOpsControllerImpl;IILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/appops/AppOpsControllerImpl;->lambda$notifySuscribers$1(IILjava/lang/String;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 108
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS:[I

    return-void

    :array_0
    .array-data 4
        0x2a
        0x1a
        0x65
        0x18
        0x1b
        0x64
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/appops/PermissionFlagsCache;Landroid/media/AudioManager;Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 3

    .line 128
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacks:Ljava/util/List;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    .line 104
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mRecordingsByUid:Landroid/util/SparseArray;

    .line 559
    new-instance v0, Lcom/android/systemui/appops/AppOpsControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/appops/AppOpsControllerImpl$1;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    .line 129
    iput-object p7, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const-string p7, "appops"

    .line 130
    invoke-virtual {p1, p7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/app/AppOpsManager;

    iput-object p7, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAppOps:Landroid/app/AppOpsManager;

    .line 131
    iput-object p4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mFlagsCache:Lcom/android/systemui/appops/PermissionFlagsCache;

    .line 132
    new-instance p4, Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    invoke-direct {p4, p0, p2}, Lcom/android/systemui/appops/AppOpsControllerImpl$H;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    .line 133
    sget-object p2, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS:[I

    array-length p2, p2

    const/4 p4, 0x0

    move p7, p4

    :goto_0
    if-ge p7, p2, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS:[I

    aget v1, v1, p7

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p7, p7, 0x1

    goto :goto_0

    .line 137
    :cond_0
    iput-object p5, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 138
    iput-object p6, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 139
    invoke-virtual {p5}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result p2

    const/4 p5, 0x1

    if-nez p2, :cond_1

    .line 140
    invoke-interface {p6, p5}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->isSensorBlocked(I)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    move p4, p5

    :cond_2
    iput-boolean p4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mMicMuted:Z

    const/4 p2, 0x2

    .line 141
    invoke-interface {p6, p2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->isSensorBlocked(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCameraDisabled:Z

    .line 142
    const-class p2, Landroid/location/LocationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/LocationManager;

    iput-object p2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mLocationManager:Landroid/location/LocationManager;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p1, "AppOpsControllerImpl"

    .line 144
    invoke-virtual {p3, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/appops/AppOpsControllerImpl;)Ljava/util/List;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/appops/AppOpsControllerImpl;)Landroid/util/SparseArray;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mRecordingsByUid:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/appops/AppOpsControllerImpl;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/appops/AppOpsControllerImpl;->updateSensorDisabledStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/appops/AppOpsControllerImpl;IILjava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->removeNoted(IILjava/lang/String;)V

    return-void
.end method

.method private addNoted(IILjava/lang/String;)Z
    .locals 8

    .line 291
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    monitor-enter v0

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItemLocked(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;

    move-result-object v1

    if-nez v1, :cond_0

    .line 294
    new-instance v1, Lcom/android/systemui/appops/AppOpItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, v1

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/appops/AppOpItem;-><init>(IILjava/lang/String;J)V

    .line 295
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 299
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    iget-object p2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 302
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    const-wide/16 p2, 0x1388

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl$H;->scheduleRemoval(Lcom/android/systemui/appops/AppOpItem;J)V

    return p1

    :catchall_0
    move-exception p0

    .line 299
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private getAppOpItemLocked(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/appops/AppOpItem;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/appops/AppOpItem;"
        }
    .end annotation

    .line 237
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 239
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/appops/AppOpItem;

    .line 240
    invoke-virtual {v1}, Lcom/android/systemui/appops/AppOpItem;->getCode()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/appops/AppOpItem;->getUid()I

    move-result v2

    if-ne v2, p3, :cond_0

    .line 241
    invoke-virtual {v1}, Lcom/android/systemui/appops/AppOpItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isAnyRecordingPausedLocked(I)Z
    .locals 4

    .line 520
    iget-boolean v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mMicMuted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 523
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mRecordingsByUid:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    if-nez p0, :cond_1

    return p1

    .line 525
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v2, p1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 527
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioRecordingConfiguration;

    .line 528
    invoke-virtual {v3}, Landroid/media/AudioRecordingConfiguration;->isClientSilenced()Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method private isLocationProvider(Ljava/lang/String;)Z
    .locals 6

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 351
    iget-wide v2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mLastLocationProviderPackageUpdate:J

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 352
    iput-wide v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mLastLocationProviderPackageUpdate:J

    .line 353
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "fused"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviderPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mLocationProviderPackages:Ljava/util/List;

    .line 357
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mLocationProviderPackages:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isUserSensitive(IILjava/lang/String;)Z
    .locals 1

    .line 317
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 321
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mFlagsCache:Lcom/android/systemui/appops/PermissionFlagsCache;

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/systemui/appops/PermissionFlagsCache;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isUserVisible(IILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x18

    if-eq p1, v1, :cond_4

    const/16 v1, 0x2a

    if-eq p1, v1, :cond_4

    const/16 v1, 0x65

    if-eq p1, v1, :cond_4

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1a

    if-ne p1, v1, :cond_1

    .line 390
    invoke-direct {p0, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->isLocationProvider(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 391
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->shouldShowAppPredictor(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return v0

    .line 395
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->isUserSensitive(IILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method private isUserVisible(Lcom/android/systemui/appops/AppOpItem;)Z
    .locals 2

    .line 336
    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/appops/AppOpsControllerImpl;->isUserVisible(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$notifySuscribers$1(IILjava/lang/String;Z)V
    .locals 0

    .line 450
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/appops/AppOpsControllerImpl;->notifySuscribersWorker(IILjava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$onSensorBlockedChanged$2(IZ)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 593
    iput-boolean p2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCameraDisabled:Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 595
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mMicMuted:Z

    .line 597
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/appops/AppOpsControllerImpl;->updateSensorDisabledStatus()V

    return-void
.end method

.method private synthetic lambda$setListening$0()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 166
    invoke-virtual {p0}, Landroid/media/AudioManager;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object p0

    .line 165
    invoke-virtual {v0, p0}, Landroid/media/AudioManager$AudioRecordingCallback;->onRecordingConfigChanged(Ljava/util/List;)V

    return-void
.end method

.method private notifySuscribers(IILjava/lang/String;Z)V
    .locals 8

    .line 450
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    new-instance v7, Lcom/android/systemui/appops/AppOpsControllerImpl-$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/appops/AppOpsControllerImpl-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl;IILjava/lang/String;Z)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifySuscribersWorker(IILjava/lang/String;Z)V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->isUserVisible(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appops/AppOpsController$Callback;

    .line 497
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/systemui/appops/AppOpsController$Callback;->onActiveStateChanged(IILjava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeNoted(IILjava/lang/String;)V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    monitor-enter v0

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItemLocked(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;

    move-result-object v1

    if-nez v1, :cond_0

    .line 274
    monitor-exit v0

    return-void

    .line 275
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 277
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 280
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    monitor-enter v1

    .line 281
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItemLocked(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 282
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    .line 284
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/systemui/appops/AppOpsControllerImpl;->notifySuscribersWorker(IILjava/lang/String;Z)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 282
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 277
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private shouldShowAppPredictor(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "privacy"

    const-string v1, "permissions_hub_2_enabled"

    const/4 v2, 0x0

    .line 362
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 366
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "android.permission.MANAGE_APP_PREDICTIONS"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private updateActives(IILjava/lang/String;Z)Z
    .locals 10

    .line 249
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    monitor-enter v0

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItemLocked(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    if-eqz p4, :cond_3

    .line 252
    new-instance p4, Lcom/android/systemui/appops/AppOpItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v4, p4

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/appops/AppOpItem;-><init>(IILjava/lang/String;J)V

    const/16 p3, 0x1b

    if-ne p1, p3, :cond_0

    .line 254
    invoke-direct {p0, p2}, Lcom/android/systemui/appops/AppOpsControllerImpl;->isAnyRecordingPausedLocked(I)Z

    move-result p1

    invoke-virtual {p4, p1}, Lcom/android/systemui/appops/AppOpItem;->setDisabled(Z)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x1a

    if-ne p1, p2, :cond_1

    .line 256
    iget-boolean p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCameraDisabled:Z

    invoke-virtual {p4, p1}, Lcom/android/systemui/appops/AppOpItem;->setDisabled(Z)V

    .line 258
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-interface {p0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {p4}, Lcom/android/systemui/appops/AppOpItem;->isDisabled()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    monitor-exit v0

    return v2

    :cond_3
    if-eqz v1, :cond_4

    if-nez p4, :cond_4

    .line 262
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 264
    monitor-exit v0

    return v2

    .line 266
    :cond_4
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    .line 267
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private updateSensorDisabledStatus()V
    .locals 8

    .line 534
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    monitor-enter v0

    .line 535
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 537
    iget-object v4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/appops/AppOpItem;

    .line 540
    invoke-virtual {v4}, Lcom/android/systemui/appops/AppOpItem;->getCode()I

    move-result v5

    const/16 v6, 0x1b

    if-ne v5, v6, :cond_0

    .line 541
    invoke-virtual {v4}, Lcom/android/systemui/appops/AppOpItem;->getUid()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/appops/AppOpsControllerImpl;->isAnyRecordingPausedLocked(I)Z

    move-result v5

    goto :goto_1

    .line 542
    :cond_0
    invoke-virtual {v4}, Lcom/android/systemui/appops/AppOpItem;->getCode()I

    move-result v5

    const/16 v6, 0x1a

    if-ne v5, v6, :cond_1

    .line 543
    iget-boolean v5, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCameraDisabled:Z

    goto :goto_1

    :cond_1
    move v5, v2

    .line 546
    :goto_1
    invoke-virtual {v4}, Lcom/android/systemui/appops/AppOpItem;->isDisabled()Z

    move-result v6

    if-eq v6, v5, :cond_3

    .line 547
    invoke-virtual {v4, v5}, Lcom/android/systemui/appops/AppOpItem;->setDisabled(Z)V

    .line 549
    invoke-virtual {v4}, Lcom/android/systemui/appops/AppOpItem;->getCode()I

    move-result v5

    .line 550
    invoke-virtual {v4}, Lcom/android/systemui/appops/AppOpItem;->getUid()I

    move-result v6

    .line 551
    invoke-virtual {v4}, Lcom/android/systemui/appops/AppOpItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 552
    invoke-virtual {v4}, Lcom/android/systemui/appops/AppOpItem;->isDisabled()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 548
    :goto_2
    invoke-direct {p0, v5, v6, v7, v4}, Lcom/android/systemui/appops/AppOpsControllerImpl;->notifySuscribers(IILjava/lang/String;Z)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 556
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public addCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V
    .locals 6

    .line 200
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_1

    .line 202
    iget-object v4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    aget v5, p1, v1

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    iget-object v2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    aget v4, p1, v1

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 209
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->setListening(Z)V

    :cond_3
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p1, "AppOpsController state:"

    .line 504
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Listening: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mListening:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  Active Items:"

    .line 506
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    move p3, p1

    .line 507
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "    "

    if-ge p3, v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appops/AppOpItem;

    .line 509
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/appops/AppOpItem;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    const-string p3, "  Noted Items:"

    .line 511
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    :goto_1
    iget-object p3, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 513
    iget-object p3, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/appops/AppOpItem;

    .line 514
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/systemui/appops/AppOpItem;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getActiveAppOps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/appops/AppOpItem;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 407
    invoke-virtual {p0, v0}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getActiveAppOpsForUser(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getActiveAppOpsForUser(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/systemui/appops/AppOpItem;",
            ">;"
        }
    .end annotation

    .line 422
    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    monitor-enter v1

    .line 425
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v2, :cond_2

    .line 427
    iget-object v6, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/appops/AppOpItem;

    if-eq p1, v5, :cond_0

    .line 429
    invoke-virtual {v6}, Lcom/android/systemui/appops/AppOpItem;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 430
    :cond_0
    invoke-direct {p0, v6}, Lcom/android/systemui/appops/AppOpsControllerImpl;->isUserVisible(Lcom/android/systemui/appops/AppOpItem;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v6}, Lcom/android/systemui/appops/AppOpItem;->isDisabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 431
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 434
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 435
    iget-object v2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    monitor-enter v2

    .line 436
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v3, v1, :cond_5

    .line 438
    iget-object v4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/appops/AppOpItem;

    if-eq p1, v5, :cond_3

    .line 440
    invoke-virtual {v4}, Lcom/android/systemui/appops/AppOpItem;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_4

    .line 441
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/systemui/appops/AppOpsControllerImpl;->isUserVisible(Lcom/android/systemui/appops/AppOpItem;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 442
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 445
    :cond_5
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 434
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public onOpActiveChanged(IILjava/lang/String;Z)V
    .locals 2

    .line 459
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/appops/AppOpsControllerImpl;->updateActives(IILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    monitor-enter v0

    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItemLocked(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 465
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 470
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/appops/AppOpsControllerImpl;->notifySuscribers(IILjava/lang/String;Z)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 465
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onOpNoted(IILjava/lang/String;II)V
    .locals 1

    if-eqz p5, :cond_0

    return-void

    .line 482
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->addNoted(IILjava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    return-void

    .line 485
    :cond_1
    iget-object p4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    monitor-enter p4

    .line 486
    :try_start_0
    iget-object p5, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-direct {p0, p5, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItemLocked(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;

    move-result-object p5

    const/4 v0, 0x1

    if-eqz p5, :cond_2

    move p5, v0

    goto :goto_0

    :cond_2
    const/4 p5, 0x0

    .line 487
    :goto_0
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p5, :cond_3

    .line 489
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/appops/AppOpsControllerImpl;->notifySuscribers(IILjava/lang/String;Z)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 487
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 584
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 585
    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->isSensorBlocked(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mMicMuted:Z

    .line 586
    invoke-direct {p0}, Lcom/android/systemui/appops/AppOpsControllerImpl;->updateSensorDisabledStatus()V

    return-void
.end method

.method public onSensorBlockedChanged(IZ)V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    new-instance v1, Lcom/android/systemui/appops/AppOpsControllerImpl-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/appops/AppOpsControllerImpl-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V
    .locals 5

    .line 224
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 226
    iget-object v3, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    aget v4, p1, v2

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    iget-object v3, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    aget v4, p1, v2

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 231
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/appops/AppOpsControllerImpl;->setListening(Z)V

    :cond_2
    return-void
.end method

.method protected setBGHandler(Lcom/android/systemui/appops/AppOpsControllerImpl$H;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    return-void
.end method

.method protected setListening(Z)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 154
    iput-boolean p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mListening:Z

    if-eqz p1, :cond_2

    .line 156
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v0, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS:[I

    invoke-virtual {p1, v0, p0}, Landroid/app/AppOpsManager;->startWatchingActive([ILandroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 157
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0, p0}, Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 158
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    .line 159
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 161
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 162
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->isSensorBlocked(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mMicMuted:Z

    .line 163
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->isSensorBlocked(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCameraDisabled:Z

    .line 165
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    new-instance v0, Lcom/android/systemui/appops/AppOpsControllerImpl-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/appops/AppOpsControllerImpl-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.action.MICROPHONE_MUTE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V

    goto :goto_1

    .line 171
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, p0}, Landroid/app/AppOpsManager;->stopWatchingActive(Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 172
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, p0}, Landroid/app/AppOpsManager;->stopWatchingNoted(Landroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 173
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V

    .line 174
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 176
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 177
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p1, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    monitor-enter p1

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mRecordingsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 181
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    monitor-enter v0

    .line 183
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 184
    monitor-exit v0

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 181
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
