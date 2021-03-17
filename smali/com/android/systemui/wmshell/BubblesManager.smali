.class public Lcom/android/systemui/wmshell/BubblesManager;
.super Ljava/lang/Object;
.source "BubblesManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wmshell/BubblesManager$NotifCallback;
    }
.end annotation


# instance fields
.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mBubbleScrim:Lcom/android/systemui/statusbar/ScrimView;

.field private final mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/wmshell/BubblesManager$NotifCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field private final mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mNotificationGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

.field private final mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

.field private final mNotificationManager:Landroid/app/INotificationManager;

.field private final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private final mSysuiMainExecutor:Ljava/util/concurrent/Executor;

.field private final mSysuiProxy:Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;


# direct methods
.method public static synthetic $r8$lambda$9p9sqUmzv-jxk85a64Hx6nEaTG0(Lcom/android/systemui/wmshell/BubblesManager;Ljava/util/concurrent/Executor;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wmshell/BubblesManager;->lambda$new$0(Ljava/util/concurrent/Executor;Landroid/os/Looper;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FG84U6DQhyP8sfaHSOvq_AV1fRA(Lcom/android/systemui/wmshell/BubblesManager;Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/wmshell/BubblesManager;->lambda$handleDismissalInterception$2(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sZE5BcvPsRdOfQMtoADdoOFF8Xw(Lcom/android/systemui/wmshell/BubblesManager;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/wmshell/BubblesManager;->lambda$setupNEM$1(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/Bubbles;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/internal/statusbar/IStatusBarService;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/dump/DumpManager;Ljava/util/concurrent/Executor;)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p18

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/wmshell/BubblesManager;->mCallbacks:Ljava/util/List;

    .line 178
    iput-object v1, v0, Lcom/android/systemui/wmshell/BubblesManager;->mContext:Landroid/content/Context;

    .line 179
    iput-object v2, v0, Lcom/android/systemui/wmshell/BubblesManager;->mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

    move-object v4, p3

    .line 180
    iput-object v4, v0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object v4, p5

    .line 181
    iput-object v4, v0, Lcom/android/systemui/wmshell/BubblesManager;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object v4, p8

    .line 182
    iput-object v4, v0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationManager:Landroid/app/INotificationManager;

    move-object v4, p9

    .line 183
    iput-object v4, v0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    move-object/from16 v4, p12

    .line 184
    iput-object v4, v0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    move-object/from16 v4, p13

    .line 185
    iput-object v4, v0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-object/from16 v4, p14

    .line 186
    iput-object v4, v0, Lcom/android/systemui/wmshell/BubblesManager;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 187
    iput-object v3, v0, Lcom/android/systemui/wmshell/BubblesManager;->mSysuiMainExecutor:Ljava/util/concurrent/Executor;

    if-nez p7, :cond_0

    const-string v4, "statusbar"

    .line 191
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 190
    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, p7

    .line 192
    :goto_0
    iput-object v4, v0, Lcom/android/systemui/wmshell/BubblesManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 194
    new-instance v4, Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {v4, p1}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/systemui/wmshell/BubblesManager;->mBubbleScrim:Lcom/android/systemui/statusbar/ScrimView;

    const/4 v1, 0x2

    .line 195
    invoke-virtual {v4, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 196
    iget-object v1, v0, Lcom/android/systemui/wmshell/BubblesManager;->mBubbleScrim:Lcom/android/systemui/statusbar/ScrimView;

    new-instance v4, Lcom/android/systemui/wmshell/BubblesManager-$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/systemui/wmshell/BubblesManager-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wmshell/BubblesManager;)V

    invoke-interface {p2, v1, v4}, Lcom/android/wm/shell/bubbles/Bubbles;->setBubbleScrim(Landroid/view/View;Ljava/util/function/BiConsumer;)V

    .line 200
    invoke-virtual/range {p16 .. p16}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewNotifPipelineRenderingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/wmshell/BubblesManager;->setupNotifPipeline()V

    goto :goto_1

    .line 203
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/wmshell/BubblesManager;->setupNEM()V

    :goto_1
    const-string v1, "Bubbles"

    move-object/from16 v4, p17

    .line 206
    invoke-virtual {v4, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 208
    new-instance v1, Lcom/android/systemui/wmshell/BubblesManager$1;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/wmshell/BubblesManager$1;-><init>(Lcom/android/systemui/wmshell/BubblesManager;Lcom/android/wm/shell/bubbles/Bubbles;)V

    move-object v4, p4

    invoke-interface {p4, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 216
    new-instance v1, Lcom/android/systemui/wmshell/BubblesManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/wmshell/BubblesManager$2;-><init>(Lcom/android/systemui/wmshell/BubblesManager;)V

    move-object v4, p6

    invoke-interface {p6, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 233
    new-instance v1, Lcom/android/systemui/wmshell/BubblesManager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/wmshell/BubblesManager$3;-><init>(Lcom/android/systemui/wmshell/BubblesManager;)V

    move-object v4, p10

    invoke-interface {p10, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 245
    new-instance v1, Lcom/android/systemui/wmshell/BubblesManager$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/wmshell/BubblesManager$4;-><init>(Lcom/android/systemui/wmshell/BubblesManager;)V

    move-object/from16 v4, p11

    invoke-interface {v4, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->addUserChangedListener(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;)V

    .line 253
    new-instance v1, Lcom/android/systemui/wmshell/BubblesManager$5;

    move-object/from16 v4, p15

    invoke-direct {v1, p0, v3, v4}, Lcom/android/systemui/wmshell/BubblesManager$5;-><init>(Lcom/android/systemui/wmshell/BubblesManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/model/SysUiState;)V

    iput-object v1, v0, Lcom/android/systemui/wmshell/BubblesManager;->mSysuiProxy:Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;

    .line 389
    invoke-interface {p2, v1}, Lcom/android/wm/shell/bubbles/Bubbles;->setSysuiProxy(Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wmshell/BubblesManager;)Lcom/android/wm/shell/bubbles/Bubbles;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/wmshell/BubblesManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/wmshell/BubblesManager;)Landroid/content/Context;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/wmshell/BubblesManager;)Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/wmshell/BubblesManager;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/wmshell/BubblesManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wmshell/BubblesManager;->getDismissedByUserStats(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/wmshell/BubblesManager;)Lcom/android/systemui/statusbar/NotificationShadeWindowController;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/wmshell/BubblesManager;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/wmshell/BubblesManager;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mSysuiMainExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static create(Landroid/content/Context;Ljava/util/Optional;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/internal/statusbar/IStatusBarService;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/dump/DumpManager;Ljava/util/concurrent/Executor;)Lcom/android/systemui/wmshell/BubblesManager;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            "Landroid/app/INotificationManager;",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            "Lcom/android/systemui/statusbar/policy/ZenModeController;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            "Lcom/android/systemui/model/SysUiState;",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/android/systemui/wmshell/BubblesManager;"
        }
    .end annotation

    .line 147
    invoke-virtual/range {p1 .. p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Lcom/android/systemui/wmshell/BubblesManager;

    move-object v1, v0

    invoke-virtual/range {p1 .. p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/wm/shell/bubbles/Bubbles;

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    invoke-direct/range {v1 .. v19}, Lcom/android/systemui/wmshell/BubblesManager;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/Bubbles;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/internal/statusbar/IStatusBarService;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/dump/DumpManager;Ljava/util/concurrent/Executor;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDismissedByUserStats(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;
    .locals 3

    .line 579
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    .line 583
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 585
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsCount()I

    move-result p0

    .line 587
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object p1

    .line 582
    invoke-static {v1, v2, p0, p2, p1}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p0

    const/4 p1, 0x3

    const/4 p2, 0x1

    invoke-direct {v0, p1, p2, p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(IILcom/android/internal/statusbar/NotificationVisibility;)V

    return-object v0
.end method

.method private synthetic lambda$handleDismissalInterception$2(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 4

    if-ltz p3, :cond_0

    .line 625
    iget-object p2, p0, Lcom/android/systemui/wmshell/BubblesManager;->mCallbacks:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wmshell/BubblesManager$NotifCallback;

    .line 626
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 627
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/wmshell/BubblesManager;->getDismissedByUserStats(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    move-result-object v2

    const/16 v3, 0xc

    .line 626
    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/wmshell/BubblesManager$NotifCallback;->removeNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;I)V

    goto :goto_0

    .line 631
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0(Ljava/util/concurrent/Executor;Landroid/os/Looper;)V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mBubbleScrim:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/ScrimView;->setExecutor(Ljava/util/concurrent/Executor;Landroid/os/Looper;)V

    return-void
.end method

.method private synthetic lambda$setupNEM$1(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z
    .locals 5

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-eq p3, v2, :cond_2

    if-ne p3, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v2, p1

    :goto_2
    const/16 v3, 0x8

    if-eq p3, v3, :cond_4

    const/16 v3, 0x9

    if-ne p3, v3, :cond_3

    goto :goto_3

    :cond_3
    move v3, v0

    goto :goto_4

    :cond_4
    :goto_3
    move v3, p1

    :goto_4
    const/16 v4, 0xc

    if-ne p3, v4, :cond_5

    move p3, p1

    goto :goto_5

    :cond_5
    move p3, v0

    :goto_5
    if-eqz p2, :cond_6

    .line 432
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v3, :cond_8

    :cond_6
    if-nez v1, :cond_8

    if-nez v2, :cond_8

    if-eqz p3, :cond_7

    goto :goto_6

    :cond_7
    move p1, v0

    :cond_8
    :goto_6
    if-eqz p1, :cond_9

    .line 436
    invoke-virtual {p0, p2}, Lcom/android/systemui/wmshell/BubblesManager;->handleDismissalInterception(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0

    :cond_9
    return v0
.end method

.method static notifToBubbleEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/wm/shell/bubbles/BubbleEntry;
    .locals 8

    .line 728
    new-instance v7, Lcom/android/wm/shell/bubbles/BubbleEntry;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isClearable()Z

    move-result v3

    .line 729
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressNotificationDot()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressNotificationList()Z

    move-result v5

    .line 730
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressPeek()Z

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/bubbles/BubbleEntry;-><init>(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;ZZZZ)V

    return-object v7
.end method

.method private setupNEM()V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    new-instance v1, Lcom/android/systemui/wmshell/BubblesManager$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/wmshell/BubblesManager$6;-><init>(Lcom/android/systemui/wmshell/BubblesManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    .line 419
    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    new-instance v1, Lcom/android/systemui/wmshell/BubblesManager-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/wmshell/BubblesManager-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wmshell/BubblesManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationRemoveInterceptor(Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    new-instance v1, Lcom/android/systemui/wmshell/BubblesManager$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/wmshell/BubblesManager$7;-><init>(Lcom/android/systemui/wmshell/BubblesManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->registerGroupChangeListener(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;)V

    .line 458
    new-instance v0, Lcom/android/systemui/wmshell/BubblesManager$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/BubblesManager$8;-><init>(Lcom/android/systemui/wmshell/BubblesManager;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/wmshell/BubblesManager;->addNotifCallback(Lcom/android/systemui/wmshell/BubblesManager$NotifCallback;)V

    return-void
.end method

.method private setupNotifPipeline()V
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    new-instance v1, Lcom/android/systemui/wmshell/BubblesManager$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/wmshell/BubblesManager$9;-><init>(Lcom/android/systemui/wmshell/BubblesManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    return-void
.end method


# virtual methods
.method public addNotifCallback(Lcom/android/systemui/wmshell/BubblesManager$NotifCallback;)V
    .locals 0

    .line 648
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 724
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/Bubbles;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public expandStackAndSelectBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 643
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

    invoke-static {p1}, Lcom/android/systemui/wmshell/BubblesManager;->notifToBubbleEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/wm/shell/bubbles/BubbleEntry;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/wm/shell/bubbles/Bubbles;->expandStackAndSelectBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    return-void
.end method

.method public getScrimForBubble()Lcom/android/systemui/statusbar/ScrimView;
    .locals 0

    .line 596
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mBubbleScrim:Lcom/android/systemui/statusbar/ScrimView;

    return-object p0
.end method

.method public handleDismissalInterception(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 612
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getAttachedNotifChildren()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 615
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 616
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 617
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v3}, Lcom/android/systemui/wmshell/BubblesManager;->notifToBubbleEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/wm/shell/bubbles/BubbleEntry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

    invoke-static {p1}, Lcom/android/systemui/wmshell/BubblesManager;->notifToBubbleEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/wm/shell/bubbles/BubbleEntry;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/wmshell/BubblesManager-$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v1, p1}, Lcom/android/systemui/wmshell/BubblesManager-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wmshell/BubblesManager;Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-interface {v0, v3, v2, v4}, Lcom/android/wm/shell/bubbles/Bubbles;->handleDismissalInterception(Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/List;Ljava/util/function/IntConsumer;)Z

    move-result p0

    return p0
.end method

.method onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;->shouldBubbleUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

    invoke-static {p1}, Lcom/android/systemui/wmshell/BubblesManager;->notifToBubbleEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/wm/shell/bubbles/BubbleEntry;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/wm/shell/bubbles/Bubbles;->onEntryAdded(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    :cond_0
    return-void
.end method

.method onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 551
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

    invoke-static {p1}, Lcom/android/systemui/wmshell/BubblesManager;->notifToBubbleEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/wm/shell/bubbles/BubbleEntry;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/wm/shell/bubbles/Bubbles;->onEntryRemoved(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    return-void
.end method

.method onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

    invoke-static {p1}, Lcom/android/systemui/wmshell/BubblesManager;->notifToBubbleEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/wm/shell/bubbles/BubbleEntry;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    .line 547
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;->shouldBubbleUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    .line 546
    invoke-interface {v0, v1, p0}, Lcom/android/wm/shell/bubbles/Bubbles;->onEntryUpdated(Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V

    return-void
.end method

.method onRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 8

    .line 555
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    .line 556
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 557
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 558
    aget-object v4, v0, v3

    .line 559
    iget-object v5, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getPendingOrActiveNotif(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 561
    invoke-static {v5}, Lcom/android/systemui/wmshell/BubblesManager;->notifToBubbleEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/wm/shell/bubbles/BubbleEntry;

    move-result-object v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v5, :cond_1

    .line 564
    iget-object v7, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    invoke-interface {v7, v5}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;->shouldBubbleUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v5

    goto :goto_2

    :cond_1
    move v5, v2

    .line 566
    :goto_2
    new-instance v7, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v7, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 568
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

    invoke-interface {p0, p1, v1}, Lcom/android/wm/shell/bubbles/Bubbles;->onRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/HashMap;)V

    return-void
.end method

.method public onUserChangedBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 6

    .line 685
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    .line 686
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 687
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x3

    .line 696
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/wmshell/BubblesManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationBubbleChanged(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :catch_0
    iget-object v3, p0, Lcom/android/systemui/wmshell/BubblesManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-static {v3, v4, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationChannelHelper;->createConversationChannelIfNeeded(Landroid/content/Context;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/NotificationChannel;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 703
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 705
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v3, v1, v2}, Landroid/app/INotificationManager;->getBubblePreferenceForPackage(Ljava/lang/String;I)I

    move-result v3

    if-eqz p2, :cond_1

    if-nez v3, :cond_1

    .line 707
    iget-object v3, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationManager:Landroid/app/INotificationManager;

    const/4 v4, 0x2

    invoke-interface {v3, v1, v2, v4}, Landroid/app/INotificationManager;->setBubblesAllowed(Ljava/lang/String;II)V

    .line 709
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v3, v1, v2, v0}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 711
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bubbles"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p2, :cond_2

    .line 715
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 p2, 0x1

    invoke-interface {p0, p2}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel(Z)V

    .line 716
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 717
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBubbleButton()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onUserSetImportantConversation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 658
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 665
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/wmshell/BubblesManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationBubbleChanged(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 667
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Bubbles"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel(Z)V

    .line 670
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 671
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBubbleButton()V

    :cond_1
    return-void
.end method