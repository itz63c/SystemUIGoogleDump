.class public final Lcom/android/systemui/privacy/PrivacyItemController;
.super Ljava/lang/Object;
.source "PrivacyItemController.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/privacy/PrivacyItemController$Companion;,
        Lcom/android/systemui/privacy/PrivacyItemController$Callback;,
        Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;,
        Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyItemController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyItemController.kt\ncom/android/systemui/privacy/PrivacyItemController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,392:1\n734#2:393\n825#2,2:394\n1571#2,9:396\n1819#2:405\n1820#2:407\n1580#2:408\n1819#2,2:409\n1819#2,2:411\n1#3:406\n*E\n*S KotlinDebug\n*F\n+ 1 PrivacyItemController.kt\ncom/android/systemui/privacy/PrivacyItemController\n*L\n276#1:393\n276#1,2:394\n280#1,9:396\n280#1:405\n280#1:407\n280#1:408\n364#1,2:409\n369#1,2:411\n280#1:406\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/privacy/PrivacyItemController$Companion;

.field private static final OPS:[I

.field private static final OPS_LOCATION:[I

.field private static final OPS_MIC_CAMERA:[I

.field private static final intentFilter:Landroid/content/IntentFilter;


# instance fields
.field private allIndicatorsAvailable:Z

.field private final appOpsController:Lcom/android/systemui/appops/AppOpsController;

.field private final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/privacy/PrivacyItemController$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cb:Lcom/android/systemui/privacy/PrivacyItemController$cb$1;

.field private currentUserIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

.field private final devicePropertiesChangedListener:Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;

.field private holdIndicatorsCancelled:Ljava/lang/Runnable;

.field private holdingIndicators:Z

.field private final internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

.field private listening:Z

.field private locationAvailable:Z

.field private final logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

.field private micCameraAvailable:Z

.field private final notifyChanges:Ljava/lang/Runnable;

.field private privacyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation
.end field

.field private final stopHoldingAndNotifyChanges:Ljava/lang/Runnable;

.field private final updateListAndNotifyChanges:Ljava/lang/Runnable;

.field private final userTracker:Lcom/android/systemui/settings/UserTracker;

.field private userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/privacy/PrivacyItemController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/privacy/PrivacyItemController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/privacy/PrivacyItemController;->Companion:Lcom/android/systemui/privacy/PrivacyItemController$Companion;

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 58
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/privacy/PrivacyItemController;->OPS_MIC_CAMERA:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 62
    fill-array-data v1, :array_1

    .line 61
    sput-object v1, Lcom/android/systemui/privacy/PrivacyItemController;->OPS_LOCATION:[I

    .line 64
    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyItemController$Companion;->getOPS_MIC_CAMERA()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyItemController$Companion;->getOPS_LOCATION()[I

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt;->plus([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/privacy/PrivacyItemController;->OPS:[I

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    sput-object v0, Lcom/android/systemui/privacy/PrivacyItemController;->intentFilter:Landroid/content/IntentFilter;

    return-void

    nop

    :array_0
    .array-data 4
        0x1a
        0x65
        0x1b
        0x64
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/systemui/appops/AppOpsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/dump/DumpManager;)V
    .locals 1

    const-string v0, "appOpsController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceConfigProxy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userTracker"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    .line 49
    iput-object p3, p0, Lcom/android/systemui/privacy/PrivacyItemController;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 50
    iput-object p4, p0, Lcom/android/systemui/privacy/PrivacyItemController;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 51
    iput-object p5, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 52
    iput-object p6, p0, Lcom/android/systemui/privacy/PrivacyItemController;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 82
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    .line 98
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    .line 100
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    .line 101
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    .line 105
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$notifyChanges$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$notifyChanges$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->notifyChanges:Ljava/lang/Runnable;

    .line 110
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->updateListAndNotifyChanges:Ljava/lang/Runnable;

    .line 115
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$stopHoldingAndNotifyChanges$1;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/privacy/PrivacyItemController$stopHoldingAndNotifyChanges$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->stopHoldingAndNotifyChanges:Ljava/lang/Runnable;

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->isAllIndicatorsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->allIndicatorsAvailable:Z

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->isMicCameraEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->micCameraAvailable:Z

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->isLocationEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->locationAvailable:Z

    .line 127
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->devicePropertiesChangedListener:Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;

    .line 155
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$cb$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$cb$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->cb:Lcom/android/systemui/privacy/PrivacyItemController$cb$1;

    .line 176
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$userTrackerCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$userTrackerCallback$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    return-void
.end method

.method public static final synthetic access$getCallbacks$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getCurrentUserIds$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getInternalUiExecutor$p(Lcom/android/systemui/privacy/PrivacyItemController;)Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/android/systemui/privacy/PrivacyItemController;)Lcom/android/systemui/privacy/logging/PrivacyLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    return-object p0
.end method

.method public static final synthetic access$getNotifyChanges$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->notifyChanges:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getOPS$cp()[I
    .locals 1

    sget-object v0, Lcom/android/systemui/privacy/PrivacyItemController;->OPS:[I

    return-object v0
.end method

.method public static final synthetic access$getOPS_LOCATION$cp()[I
    .locals 1

    sget-object v0, Lcom/android/systemui/privacy/PrivacyItemController;->OPS_LOCATION:[I

    return-object v0
.end method

.method public static final synthetic access$getOPS_MIC_CAMERA$cp()[I
    .locals 1

    sget-object v0, Lcom/android/systemui/privacy/PrivacyItemController;->OPS_MIC_CAMERA:[I

    return-object v0
.end method

.method public static final synthetic access$getStopHoldingAndNotifyChanges$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->stopHoldingAndNotifyChanges:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getUpdateListAndNotifyChanges$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->updateListAndNotifyChanges:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getUserTracker$p(Lcom/android/systemui/privacy/PrivacyItemController;)Lcom/android/systemui/settings/UserTracker;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    return-object p0
.end method

.method public static final synthetic access$setAllIndicatorsAvailable$p(Lcom/android/systemui/privacy/PrivacyItemController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->allIndicatorsAvailable:Z

    return-void
.end method

.method public static final synthetic access$setCurrentUserIds$p(Lcom/android/systemui/privacy/PrivacyItemController;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setListeningState(Lcom/android/systemui/privacy/PrivacyItemController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->setListeningState()V

    return-void
.end method

.method public static final synthetic access$setMicCameraAvailable$p(Lcom/android/systemui/privacy/PrivacyItemController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->micCameraAvailable:Z

    return-void
.end method

.method public static final synthetic access$update(Lcom/android/systemui/privacy/PrivacyItemController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/privacy/PrivacyItemController;->update(Z)V

    return-void
.end method

.method public static final synthetic access$updatePrivacyList(Lcom/android/systemui/privacy/PrivacyItemController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/privacy/PrivacyItemController;->updatePrivacyList(Z)V

    return-void
.end method

.method private final addCallback(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/privacy/PrivacyItemController$Callback;",
            ">;)V"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-nez v0, :cond_0

    .line 242
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->updateListeningState()V

    goto :goto_0

    .line 245
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    new-instance v1, Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;-><init>(Lcom/android/systemui/privacy/PrivacyItemController$Callback;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getUserTrackerCallback$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final isAllIndicatorsEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private final isLocationEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private final isMicCameraEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private final processNewList(Ljava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;Z)V"
        }
    .end annotation

    .line 292
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 295
    iget-boolean p2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->holdingIndicators:Z

    if-eqz p2, :cond_1

    .line 296
    iget-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->holdIndicatorsCancelled:Ljava/lang/Runnable;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 297
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    invoke-virtual {p2}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->cancelIndicatorsHold()V

    .line 298
    iput-boolean v1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->holdingIndicators:Z

    .line 300
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 301
    sget-object v6, Lcom/android/systemui/privacy/PrivacyItemController$processNewList$1;->INSTANCE:Lcom/android/systemui/privacy/PrivacyItemController$processNewList$1;

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const-string v1, ", "

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-virtual {p2, v0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logUpdatedPrivacyItemsList(Ljava/lang/String;)V

    .line 302
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    goto :goto_1

    .line 303
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->holdingIndicators:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 305
    iget-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    invoke-virtual {p2}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->finishIndicatorsHold()V

    .line 306
    iget-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    const-string v0, ""

    invoke-virtual {p2, v0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logUpdatedPrivacyItemsList(Ljava/lang/String;)V

    .line 307
    iput-boolean v1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->holdingIndicators:Z

    .line 308
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    .line 311
    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_5

    .line 314
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->startIndicatorsHold(J)V

    .line 315
    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->setHoldTimer()V

    :cond_5
    :goto_1
    return-void
.end method

.method private final registerReceiver()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/settings/UserTracker;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private final removeCallback(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/privacy/PrivacyItemController$Callback;",
            ">;)V"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/privacy/PrivacyItemController$removeCallback$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/privacy/PrivacyItemController$removeCallback$1;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 253
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 254
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->updateListeningState()V

    :cond_0
    return-void
.end method

.method private final setHoldTimer()V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->holdIndicatorsCancelled:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->holdingIndicators:Z

    .line 197
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/privacy/PrivacyItemController$setHoldTimer$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$setHoldTimer$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    const-wide/16 v2, 0x1388

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->holdIndicatorsCancelled:Ljava/lang/Runnable;

    return-void
.end method

.method private final setListeningState()V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 223
    iget-boolean v2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->allIndicatorsAvailable:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->micCameraAvailable:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->locationAvailable:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    and-int/2addr v0, v2

    .line 224
    iget-boolean v2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-ne v2, v0, :cond_2

    return-void

    .line 225
    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    sget-object v2, Lcom/android/systemui/privacy/PrivacyItemController;->Companion:Lcom/android/systemui/privacy/PrivacyItemController$Companion;

    invoke-virtual {v2}, Lcom/android/systemui/privacy/PrivacyItemController$Companion;->getOPS()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/privacy/PrivacyItemController;->cb:Lcom/android/systemui/privacy/PrivacyItemController$cb$1;

    invoke-interface {v0, v2, v3}, Lcom/android/systemui/appops/AppOpsController;->addCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->registerReceiver()V

    .line 229
    invoke-direct {p0, v1}, Lcom/android/systemui/privacy/PrivacyItemController;->update(Z)V

    goto :goto_2

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    sget-object v1, Lcom/android/systemui/privacy/PrivacyItemController;->Companion:Lcom/android/systemui/privacy/PrivacyItemController$Companion;

    invoke-virtual {v1}, Lcom/android/systemui/privacy/PrivacyItemController$Companion;->getOPS()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->cb:Lcom/android/systemui/privacy/PrivacyItemController$cb$1;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/appops/AppOpsController;->removeCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V

    .line 232
    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->unregisterListener()V

    .line 235
    invoke-direct {p0, v3}, Lcom/android/systemui/privacy/PrivacyItemController;->update(Z)V

    :goto_2
    return-void
.end method

.method private final toPrivacyItem(Lcom/android/systemui/appops/AppOpItem;)Lcom/android/systemui/privacy/PrivacyItem;
    .locals 3

    .line 321
    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getCode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    const/16 v2, 0x65

    if-eq v0, v2, :cond_1

    return-object v1

    .line 327
    :cond_0
    sget-object v0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    goto :goto_0

    .line 323
    :cond_1
    sget-object v0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    goto :goto_0

    .line 325
    :cond_2
    sget-object v0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    .line 330
    :goto_0
    sget-object v2, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    if-ne v0, v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->allIndicatorsAvailable:Z

    if-nez v2, :cond_3

    iget-boolean p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->locationAvailable:Z

    if-nez p0, :cond_3

    return-object v1

    .line 333
    :cond_3
    new-instance p0, Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appOpItem.packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getUid()I

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/privacy/PrivacyApplication;-><init>(Ljava/lang/String;I)V

    .line 334
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItem;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/privacy/PrivacyItem;-><init>(Lcom/android/systemui/privacy/PrivacyType;Lcom/android/systemui/privacy/PrivacyApplication;)V

    return-object p1
.end method

.method private final unregisterListener()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    invoke-interface {v0, p0}, Lcom/android/systemui/settings/UserTracker;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    return-void
.end method

.method private final update(Z)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/privacy/PrivacyItemController$update$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$update$1;-><init>(ZLcom/android/systemui/privacy/PrivacyItemController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final updatePrivacyList(Z)V
    .locals 7

    .line 267
    iget-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 268
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    .line 269
    iget-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->holdingIndicators:Z

    if-eqz p1, :cond_1

    .line 270
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->holdIndicatorsCancelled:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 271
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    invoke-virtual {p1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->cancelIndicatorsHold()V

    .line 272
    iput-boolean v1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->holdingIndicators:Z

    :cond_1
    return-void

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    const/4 v2, -0x1

    invoke-interface {v0, v2}, Lcom/android/systemui/appops/AppOpsController;->getActiveAppOpsForUser(I)Ljava/util/List;

    move-result-object v0

    const-string v2, "appOpsController.getActiveAppOpsForUser(UserHandle.USER_ALL)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/appops/AppOpItem;

    .line 277
    iget-object v5, p0, Lcom/android/systemui/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    invoke-virtual {v4}, Lcom/android/systemui/appops/AppOpItem;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 278
    invoke-virtual {v4}, Lcom/android/systemui/appops/AppOpItem;->getCode()I

    move-result v5

    const/16 v6, 0x64

    if-eq v5, v6, :cond_5

    .line 279
    invoke-virtual {v4}, Lcom/android/systemui/appops/AppOpItem;->getCode()I

    move-result v4

    const/16 v5, 0x65

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    move v4, v1

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_3

    .line 277
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1571
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1819
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1579
    check-cast v2, Lcom/android/systemui/appops/AppOpItem;

    const-string v3, "it"

    .line 280
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/privacy/PrivacyItemController;->toPrivacyItem(Lcom/android/systemui/appops/AppOpItem;)Lcom/android/systemui/privacy/PrivacyItem;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1579
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 280
    :cond_8
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 281
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/privacy/PrivacyItemController;->processNewList(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic updatePrivacyList$default(Lcom/android/systemui/privacy/PrivacyItemController;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 266
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/privacy/PrivacyItemController;->updatePrivacyList(Z)V

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "PrivacyItemController state:"

    .line 360
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    iget-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p3, "  Listening: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    const-string p3, "  Current user ids: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  Privacy Items:"

    .line 363
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object p1

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const-string v0, "    "

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/privacy/PrivacyItem;

    .line 365
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p3}, Lcom/android/systemui/privacy/PrivacyItem;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "  Callbacks:"

    .line 368
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 370
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    if-nez p1, :cond_1

    goto :goto_1

    .line 371
    :cond_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final getAllIndicatorsAvailable()Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->allIndicatorsAvailable:Z

    return p0
.end method

.method public final getLocationAvailable()Z
    .locals 0

    .line 124
    iget-boolean p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->locationAvailable:Z

    return p0
.end method

.method public final getMicCameraAvailable()Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->micCameraAvailable:Z

    return p0
.end method

.method public final declared-synchronized getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final removeCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/privacy/PrivacyItemController;->removeCallback(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public final setLocationAvailable(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->locationAvailable:Z

    return-void
.end method
