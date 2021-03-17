.class public final Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;
.super Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;
.source "ScreenshotNotificationSmartActionsProviderGoogle.java"


# static fields
.field private static final SCREENSHOT_OP_MAP:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;",
            "Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCREENSHOT_OP_STATUS_MAP:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;",
            "Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClient:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;->RETRIEVE_SMART_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;

    sget-object v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;->RETRIEVE_SMART_ACTIONS:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;->REQUEST_SMART_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;

    sget-object v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;->REQUEST_SMART_ACTIONS:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;->WAIT_FOR_SMART_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;

    sget-object v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;->WAIT_FOR_SMART_ACTIONS:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->SCREENSHOT_OP_MAP:Lcom/google/common/collect/ImmutableMap;

    .line 63
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;->SUCCESS:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    sget-object v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;->SUCCESS:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;

    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;->ERROR:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    sget-object v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;->ERROR:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;->TIMEOUT:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    sget-object v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;->TIMEOUT:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->SCREENSHOT_OP_STATUS_MAP:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;-><init>()V

    .line 83
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->mClient:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;

    return-void
.end method


# virtual methods
.method completeFuture(Landroid/os/Bundle;Ljava/util/concurrent/CompletableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;>;)V"
        }
    .end annotation

    const-string p0, "ScreenshotNotificationActions"

    .line 158
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public getActions(Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/concurrent/CompletableFuture;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;>;"
        }
    .end annotation

    .line 98
    new-instance v6, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v6}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const-string v2, "ScreenshotActionsGoogle"

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "Bitmap expected: Hardware, Bitmap found: %s. Returning empty list."

    .line 100
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-string v0, "Calling AiAi to obtain screenshot notification smart actions."

    .line 106
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    .line 111
    iget-object v7, v1, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->mClient:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;

    .line 113
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 114
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;

    move-object v0, v13

    move-object v2, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;-><init>(Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;Ljava/util/concurrent/CompletableFuture;JLjava/lang/String;)V

    move-object/from16 v8, p3

    move-object/from16 v9, p2

    move-object/from16 v12, p5

    .line 111
    invoke-virtual/range {v7 .. v13}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;->provideScreenshotActions(Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper$BundleCallback;)V

    return-object v6
.end method

.method public notifyAction(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->mClient:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;->notifyAction(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public notifyOp(Ljava/lang/String;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;J)V
    .locals 6

    .line 139
    iget-object v0, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->mClient:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;

    sget-object p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->SCREENSHOT_OP_MAP:Lcom/google/common/collect/ImmutableMap;

    sget-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;->OP_UNKNOWN:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;

    .line 140
    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/ImmutableMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;

    sget-object p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->SCREENSHOT_OP_STATUS_MAP:Lcom/google/common/collect/ImmutableMap;

    sget-object p2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;->OP_STATUS_UNKNOWN:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;

    .line 141
    invoke-virtual {p0, p3, p2}, Lcom/google/common/collect/ImmutableMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;

    move-object v1, p1

    move-wide v4, p4

    .line 139
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;->notifyOp(Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;J)V

    return-void
.end method
