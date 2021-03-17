.class public Lcom/android/systemui/screenshot/ScreenshotSmartActions;
.super Ljava/lang/Object;
.source "ScreenshotSmartActions.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    invoke-static {v0}, Lcom/android/systemui/screenshot/LogConfig;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotSmartActions;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getSmartActions(Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;ILcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;)Ljava/util/List;
    .locals 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;>;I",
            "Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p3

    .line 116
    :try_start_0
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2, v3, p3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v9, v2, v0

    .line 123
    sget-object v7, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;->WAIT_FOR_SMART_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;

    sget-object v8, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;->SUCCESS:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/screenshot/ScreenshotSmartActions;->notifyScreenshotOp(Ljava/lang/String;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    :catchall_0
    move-exception p2

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v9, v2, v0

    .line 135
    instance-of p2, p2, Ljava/util/concurrent/TimeoutException;

    if-eqz p2, :cond_0

    .line 136
    sget-object p2, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;->TIMEOUT:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    goto :goto_0

    .line 137
    :cond_0
    sget-object p2, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;->ERROR:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    :goto_0
    move-object v8, p2

    .line 138
    sget-object v7, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;->WAIT_FOR_SMART_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/screenshot/ScreenshotSmartActions;->notifyScreenshotOp(Ljava/lang/String;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;J)V

    .line 141
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getSmartActionsFuture(Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;ZLandroid/os/UserHandle;)Ljava/util/concurrent/CompletableFuture;
    .locals 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            "Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;",
            "Z",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;>;"
        }
    .end annotation

    const-string v0, ""

    if-nez p5, :cond_0

    .line 72
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_1

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 82
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 85
    :try_start_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 87
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 89
    :cond_2
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v0, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v8, v3

    move-object/from16 v4, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v9, p6

    .line 90
    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;->getActions(Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 93
    :catchall_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v10, v3, v1

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 98
    sget-object v8, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;->REQUEST_SMART_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;

    sget-object v9, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;->ERROR:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    move-object v5, p0

    move-object v6, p1

    move-object/from16 v7, p4

    invoke-virtual/range {v5 .. v11}, Lcom/android/systemui/screenshot/ScreenshotSmartActions;->notifyScreenshotOp(Ljava/lang/String;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;J)V

    :goto_1
    return-object v0
.end method

.method notifyScreenshotAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 164
    :try_start_0
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object p0

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/SystemUIFactory;->createScreenshotNotificationSmartActionsProvider(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;)Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    move-result-object p0

    .line 170
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;->notifyAction(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 172
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotSmartActions;->TAG:Ljava/lang/String;

    const-string p2, "Error in notifyScreenshotAction: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method notifyScreenshotOp(Ljava/lang/String;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;J)V
    .locals 6

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    .line 154
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;->notifyOp(Ljava/lang/String;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 156
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotSmartActions;->TAG:Ljava/lang/String;

    const-string p2, "Error in notifyScreenshotOp: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
