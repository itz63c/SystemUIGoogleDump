.class public Lcom/google/android/systemui/dreamliner/DockObserver;
.super Landroid/content/BroadcastReceiver;
.source "DockObserver.java"

# interfaces
.implements Lcom/android/systemui/dock/DockManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;,
        Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeCallback;,
        Lcom/google/android/systemui/dreamliner/DockObserver$KeyExchangeCallback;,
        Lcom/google/android/systemui/dreamliner/DockObserver$GetInformationCallback;,
        Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback;,
        Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;,
        Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;,
        Lcom/google/android/systemui/dreamliner/DockObserver$KeyExchangeWithDock;,
        Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;,
        Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresent;
    }
.end annotation


# static fields
.field static final ACTION_ALIGN_STATE_CHANGE:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ALIGNMENT_CHANGE"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_CHALLENGE:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ACTION_CHALLENGE"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_DOCK_UI_ACTIVE:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ACTION_DOCK_UI_ACTIVE"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_DOCK_UI_IDLE:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ACTION_DOCK_UI_IDLE"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_GET_DOCK_INFO:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ACTION_GET_DOCK_INFO"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_KEY_EXCHANGE:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ACTION_KEY_EXCHANGE"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_REBIND_DOCK_SERVICE:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ACTION_REBIND_DOCK_SERVICE"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_START_DREAMLINER_CONTROL_SERVICE:Ljava/lang/String; = "com.google.android.apps.dreamliner.START"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final COMPONENTNAME_DREAMLINER_CONTROL_SERVICE:Ljava/lang/String; = "com.google.android.apps.dreamliner/.DreamlinerControlService"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final DEBUG:Z

.field static final EXTRA_ALIGN_STATE:Ljava/lang/String; = "align_state"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final EXTRA_CHALLENGE_DATA:Ljava/lang/String; = "challenge_data"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final EXTRA_CHALLENGE_DOCK_ID:Ljava/lang/String; = "challenge_dock_id"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final EXTRA_PUBLIC_KEY:Ljava/lang/String; = "public_key"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_SHOWING:Ljava/lang/String; = "showing"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final RESULT_NOT_FOUND:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final RESULT_OK:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static volatile mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static sIsDockingUiShowing:Z


# instance fields
.field private final mAlignmentStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/dock/DockManager$AlignmentStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/dock/DockManager$DockEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mContext:Landroid/content/Context;

.field private mDockAlignmentController:Lcom/google/android/systemui/dreamliner/DockAlignmentController;

.field mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mDockState:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mDreamlinerGear:Landroid/widget/ImageView;

.field final mDreamlinerReceiver:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mDreamlinerServiceConn:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

.field private final mInterruptSuppressor:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;

.field mLastAlignState:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mPhotoPreview:Landroid/widget/FrameLayout;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mWirelessCharger:Lcom/google/android/systemui/dreamliner/WirelessCharger;


# direct methods
.method public static synthetic $r8$lambda$0DiK3Rj89ujrATdW8grLJKFfv_g(Lcom/google/android/systemui/dreamliner/DockObserver;Lcom/android/systemui/dock/DockManager$DockEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->lambda$addListener$0(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DLObserver"

    const/4 v1, 0x3

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    const/4 v0, 0x0

    .line 138
    sput-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->sIsDockingUiShowing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/dreamliner/WirelessCharger;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 3

    .line 168
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 143
    new-instance v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;)V

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerReceiver:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    const/4 v0, -0x1

    .line 160
    iput v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mLastAlignState:I

    .line 822
    new-instance v0, Lcom/google/android/systemui/dreamliner/DockObserver$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$2;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;)V

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mInterruptSuppressor:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;

    .line 169
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mHandler:Landroid/os/Handler;

    .line 170
    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mContext:Landroid/content/Context;

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mClients:Ljava/util/List;

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mAlignmentStateListeners:Ljava/util/List;

    .line 173
    new-instance v1, Lcom/google/android/systemui/dreamliner/DockObserver$1;

    invoke-direct {v1, p0, p3, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$1;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 181
    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Lcom/google/android/systemui/dreamliner/WirelessCharger;

    .line 182
    iput-object p4, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 183
    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->getDockIntentFilter()Landroid/content/IntentFilter;

    move-result-object p3

    invoke-virtual {p1, p0, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    new-instance p1, Lcom/google/android/systemui/dreamliner/DockAlignmentController;

    invoke-direct {p1, p2, p0}, Lcom/google/android/systemui/dreamliner/DockAlignmentController;-><init>(Lcom/google/android/systemui/dreamliner/WirelessCharger;Lcom/google/android/systemui/dreamliner/DockObserver;)V

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockAlignmentController:Lcom/google/android/systemui/dreamliner/DockAlignmentController;

    .line 185
    invoke-interface {p5, v0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;->addSuppressor(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;)V

    .line 186
    iput-object p6, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->stopDreamlinerService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/systemui/dreamliner/DockObserver;)Lcom/google/android/systemui/dreamliner/WirelessCharger;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Lcom/google/android/systemui/dreamliner/WirelessCharger;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Intent;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->triggerKeyExchangeWithDock(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Intent;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->triggerChallengeWithDock(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->tryTurnScreenOff(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/systemui/dreamliner/DockObserver;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/dreamliner/DockObserver;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/google/android/systemui/dreamliner/DockObserver;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->onDockStateChanged(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/systemui/dreamliner/DockObserver;)Lcom/google/android/systemui/dreamliner/DockIndicationController;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Intent;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->handlePhotoAction(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/systemui/dreamliner/DockObserver;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->handlePhotoFailure()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->sendDockActiveIntent(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 53
    sput-boolean p0, Lcom/google/android/systemui/dreamliner/DockObserver;->sIsDockingUiShowing:Z

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;III)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/systemui/dreamliner/DockObserver;->startDreamlinerService(Landroid/content/Context;III)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/systemui/dreamliner/DockObserver;BLjava/util/ArrayList;)Landroid/os/Bundle;
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/dreamliner/DockObserver;->createKeyExchangeResponseBundle(BLjava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/systemui/dreamliner/DockObserver;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->createChallengeResponseBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Ljava/lang/Runnable;)V
    .locals 0

    .line 53
    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->sendDockIdleIntent(Landroid/content/Context;)V

    return-void
.end method

.method private assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 441
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DLObserver"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private convertArrayListToPrimitiveArray(Ljava/util/ArrayList;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 552
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    .line 556
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v0, p0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 558
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private createChallengeResponseBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 577
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 581
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->convertArrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p0

    .line 583
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "challenge_response"

    .line 584
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private createKeyExchangeResponseBundle(BLjava/util/ArrayList;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 564
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 568
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/systemui/dreamliner/DockObserver;->convertArrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p0

    .line 570
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "dock_id"

    .line 571
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string p1, "dock_public_key"

    .line 572
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private dispatchDockEvent(Lcom/android/systemui/dock/DockManager$DockEventListener;)V
    .locals 2

    .line 303
    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDockEvent mDockState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    invoke-interface {p1, p0}, Lcom/android/systemui/dock/DockManager$DockEventListener;->onEvent(I)V

    return-void
.end method

.method private final getBatteryStatus(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 308
    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 309
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getDockIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 334
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 335
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 336
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 337
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_REBIND_DOCK_SERVICE"

    .line 338
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    .line 339
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    return-object p0
.end method

.method private getDreamManagerInstance()Landroid/service/dreams/IDreamManager;
    .locals 0

    const-string p0, "dreams"

    .line 461
    invoke-static {p0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 460
    invoke-static {p0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object p0

    return-object p0
.end method

.method private handlePhotoAction(Landroid/content/Intent;)V
    .locals 3

    .line 524
    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DLObserver"

    const-string v1, "handlePhotoAction"

    .line 525
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "android.intent.extra.RESULT_RECEIVER"

    .line 530
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    const-string v2, "enabled"

    .line 532
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz v0, :cond_2

    .line 534
    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    if-eqz v1, :cond_2

    .line 535
    invoke-virtual {v1, v0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->showPromo(Landroid/os/ResultReceiver;)V

    .line 538
    :cond_2
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    if-eqz p0, :cond_3

    .line 539
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dreamliner/DockGestureController;->setPhotoEnabled(Z)V

    :cond_3
    return-void
.end method

.method private handlePhotoFailure()V
    .locals 2

    const-string v0, "DLObserver"

    const-string v1, "Fail to launch photo"

    .line 544
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    if-eqz p0, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->handlePhotoFailure()V

    :cond_0
    return-void
.end method

.method private isChargingOrFull(Landroid/content/Intent;)Z
    .locals 1

    const-string p0, "status"

    const/4 v0, -0x1

    .line 314
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x5

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

.method public static isDockingUiShowing()Z
    .locals 1

    .line 819
    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->sIsDockingUiShowing:Z

    return v0
.end method

.method private synthetic lambda$addListener$0(Lcom/android/systemui/dock/DockManager$DockEventListener;)V
    .locals 0

    .line 212
    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->dispatchDockEvent(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    return-void
.end method

.method private notifyDreamlinerAlignStateChanged(I)V
    .locals 2

    .line 292
    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->isDocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.systemui.dreamliner.ALIGNMENT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "align_state"

    .line 295
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x40000000    # 2.0f

    .line 296
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 293
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method private notifyForceEnabledAmbientDisplay(Z)V
    .locals 0

    .line 448
    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->getDreamManagerInstance()Landroid/service/dreams/IDreamManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 451
    :try_start_0
    invoke-interface {p0, p1}, Landroid/service/dreams/IDreamManager;->forceAmbientDisplayEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string p0, "DLObserver"

    const-string p1, "DreamManager not found"

    .line 455
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_0
    :goto_0
    return-void
.end method

.method private onDockStateChanged(I)V
    .locals 3

    .line 260
    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 264
    :cond_0
    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dock state changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_1
    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    .line 266
    iput p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    const/4 v1, 0x0

    .line 267
    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 268
    iget-object v2, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mClients:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/dock/DockManager$DockEventListener;

    .line 269
    invoke-direct {p0, v2}, Lcom/google/android/systemui/dreamliner/DockObserver;->dispatchDockEvent(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_2
    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    if-eqz v1, :cond_3

    .line 273
    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->isDocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->setDocking(Z)V

    :cond_3
    if-nez v0, :cond_4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 277
    iget p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mLastAlignState:I

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->notifyDreamlinerAlignStateChanged(I)V

    :cond_4
    return-void
.end method

.method private static runOnBackgroundThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 592
    sget-object v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 593
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 595
    :cond_0
    sget-object v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendDockActiveIntent(Landroid/content/Context;)V
    .locals 1

    .line 473
    sget-boolean p0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "DLObserver"

    const-string v0, "sendDockActiveIntent()"

    .line 474
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.DOCK_ACTIVE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 477
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    .line 476
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendDockIdleIntent(Landroid/content/Context;)V
    .locals 1

    .line 465
    sget-boolean p0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "DLObserver"

    const-string v0, "sendDockIdleIntent()"

    .line 466
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.DOCK_IDLE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 469
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    .line 468
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private declared-synchronized startDreamlinerService(Landroid/content/Context;III)V
    .locals 9

    monitor-enter p0

    const/4 v0, 0x1

    .line 378
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->notifyForceEnabledAmbientDisplay(Z)V

    .line 379
    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerServiceConn:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;

    if-nez v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerReceiver:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;

    invoke-virtual {v1, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->registerReceiver(Landroid/content/Context;)V

    .line 381
    new-instance v1, Lcom/google/android/systemui/dreamliner/DockGestureController;

    iget-object v4, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerGear:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mPhotoPreview:Landroid/widget/FrameLayout;

    .line 383
    invoke-virtual {v4}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/view/View;

    iget-object v7, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    const-class v2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 385
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/systemui/dreamliner/DockGestureController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/view/View;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    iput-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    .line 386
    iget-object v2, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 388
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.dreamliner.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.apps.dreamliner/.DreamlinerControlService"

    .line 390
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 389
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "type"

    .line 391
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "orientation"

    .line 392
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "id"

    .line 393
    invoke-virtual {v1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "occluded"

    .line 394
    new-instance p3, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-direct {p3, p1}, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->isKeyguardOccluded()Z

    move-result p3

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    :try_start_1
    new-instance p2, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;

    invoke-direct {p2, p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerServiceConn:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;

    .line 398
    new-instance p3, Landroid/os/UserHandle;

    iget-object p4, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 401
    invoke-virtual {p4}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result p4

    invoke-direct {p3, p4}, Landroid/os/UserHandle;-><init>(I)V

    .line 398
    invoke-virtual {p1, v1, p2, v0, p3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 402
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {p1}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "DLObserver"

    .line 406
    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    .line 409
    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerServiceConn:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;

    const-string p1, "DLObserver"

    .line 410
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to bind Dreamliner service: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 412
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private stopDreamlinerService(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    .line 418
    invoke-direct {p0, v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->notifyForceEnabledAmbientDisplay(Z)V

    .line 419
    invoke-direct {p0, v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->onDockStateChanged(I)V

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerServiceConn:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    const-class v1, Lcom/google/android/systemui/dreamliner/DockGestureController;

    .line 424
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 423
    invoke-direct {p0, v0, v1}, Lcom/google/android/systemui/dreamliner/DockObserver;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v2, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 426
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-virtual {v0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->stopMonitoring()V

    .line 427
    iput-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 430
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerReceiver:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->unregisterReceiver(Landroid/content/Context;)V

    .line 431
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerServiceConn:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 432
    iput-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerServiceConn:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 435
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DLObserver"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private triggerChallengeWithDock(Landroid/content/Intent;)V
    .locals 3

    .line 501
    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DLObserver"

    const-string v1, "triggerChallengeWithDock"

    .line 502
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "android.intent.extra.RESULT_RECEIVER"

    .line 507
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    if-eqz v0, :cond_4

    const/4 v1, -0x1

    const-string v2, "challenge_dock_id"

    .line 510
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v1

    const-string v2, "challenge_data"

    .line 512
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_3

    .line 513
    array-length v2, p1

    if-lez v2, :cond_3

    if-gez v1, :cond_2

    goto :goto_0

    .line 517
    :cond_2
    new-instance v2, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;B[B)V

    invoke-static {v2}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    const/4 p1, 0x0

    .line 515
    invoke-virtual {v0, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private triggerKeyExchangeWithDock(Landroid/content/Intent;)V
    .locals 2

    .line 481
    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DLObserver"

    const-string v1, "triggerKeyExchangeWithDock"

    .line 482
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "android.intent.extra.RESULT_RECEIVER"

    .line 487
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    if-eqz v0, :cond_4

    const-string v1, "public_key"

    .line 490
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_3

    .line 491
    array-length v1, p1

    if-gtz v1, :cond_2

    goto :goto_0

    .line 495
    :cond_2
    new-instance v1, Lcom/google/android/systemui/dreamliner/DockObserver$KeyExchangeWithDock;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$KeyExchangeWithDock;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;[B)V

    invoke-static {v1}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    const/4 p1, 0x0

    .line 493
    invoke-virtual {v0, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private tryTurnScreenOff(Landroid/content/Context;)V
    .locals 2

    .line 252
    const-class p0, Landroid/os/PowerManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 253
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 255
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addAlignmentStateListener(Lcom/android/systemui/dock/DockManager$AlignmentStateListener;)V
    .locals 2

    .line 234
    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add alignment listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mAlignmentStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mAlignmentStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V
    .locals 2

    .line 208
    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/dreamliner/DockObserver-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver-$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isDocked()Z
    .locals 2

    .line 223
    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isHidden()Z
    .locals 1

    .line 229
    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method onAlignStateChanged(I)V
    .locals 2

    .line 282
    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAlignStateChanged alignState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    iput p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mLastAlignState:I

    .line 284
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mAlignmentStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/dock/DockManager$AlignmentStateListener;

    .line 285
    invoke-interface {v1, p1}, Lcom/android/systemui/dock/DockManager$AlignmentStateListener;->onAlignmentStateChanged(I)V

    goto :goto_0

    .line 288
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->notifyDreamlinerAlignStateChanged(I)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 347
    :cond_0
    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive(); "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "com.google.android.systemui.dreamliner.ACTION_REBIND_DOCK_SERVICE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 353
    :pswitch_0
    iget-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Lcom/google/android/systemui/dreamliner/WirelessCharger;

    if-nez p2, :cond_6

    goto :goto_1

    .line 357
    :cond_6
    new-instance p2, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresent;

    invoke-direct {p2, p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresent;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 366
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->updateCurrentDockingStatus(Landroid/content/Context;)V

    goto :goto_1

    .line 360
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->stopDreamlinerService(Landroid/content/Context;)V

    .line 362
    sput-boolean v2, Lcom/google/android/systemui/dreamliner/DockObserver;->sIsDockingUiShowing:Z

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7073f927 -> :sswitch_3
        0x2f94f923 -> :sswitch_2
        0x3cbf870b -> :sswitch_1
        0x4e98453e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public registerDockAlignInfo()V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockAlignmentController:Lcom/google/android/systemui/dreamliner/DockAlignmentController;

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->registerAlignInfoListener()V

    return-void
.end method

.method public removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V
    .locals 2

    .line 217
    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mClients:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDreamlinerGear(Landroid/widget/ImageView;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerGear:Landroid/widget/ImageView;

    return-void
.end method

.method public setIndicationController(Lcom/google/android/systemui/dreamliner/DockIndicationController;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    .line 203
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public setPhotoPreview(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mPhotoPreview:Landroid/widget/FrameLayout;

    return-void
.end method

.method final updateCurrentDockingStatus(Landroid/content/Context;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 324
    invoke-direct {p0, v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->notifyForceEnabledAmbientDisplay(Z)V

    .line 325
    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->getBatteryStatus(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->isChargingOrFull(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Lcom/google/android/systemui/dreamliner/WirelessCharger;

    if-eqz v0, :cond_0

    .line 326
    new-instance v0, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresent;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresent;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
