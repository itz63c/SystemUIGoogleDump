.class public Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;
.super Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper;
.source "ContentSuggestionsServiceWrapperImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$BundleCallbackWrapper;
    }
.end annotation


# instance fields
.field private final contentSuggestionsManager:Landroid/app/contentsuggestions/ContentSuggestionsManager;

.field private final pendingCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper$BundleCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userProfileDataContext",
            "uiExecutor",
            "asyncExecutor",
            "loggingExecutor"
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$$Lambda$0;->$instance:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 29
    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    .line 30
    invoke-static {p2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;->pendingCallbacks:Ljava/util/Map;

    .line 38
    const-class p2, Landroid/app/contentsuggestions/ContentSuggestionsManager;

    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/contentsuggestions/ContentSuggestionsManager;

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;->contentSuggestionsManager:Landroid/app/contentsuggestions/ContentSuggestionsManager;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;)Ljava/util/Map;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;->pendingCallbacks:Ljava/util/Map;

    return-object p0
.end method

.method static final synthetic lambda$classifyContentSelections$1$ContentSuggestionsServiceWrapperImpl(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$BundleCallbackWrapper;ILjava/util/List;)V
    .locals 0

    const/4 p1, 0x0

    .line 68
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/contentsuggestions/ContentClassification;

    invoke-virtual {p1}, Landroid/app/contentsuggestions/ContentClassification;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$BundleCallbackWrapper;->onResult(Landroid/os/Bundle;)V

    return-void
.end method

.method static final synthetic lambda$suggestContentSelections$0$ContentSuggestionsServiceWrapperImpl(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$BundleCallbackWrapper;ILjava/util/List;)V
    .locals 0

    const/4 p1, 0x0

    .line 52
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/contentsuggestions/ContentSelection;

    invoke-virtual {p1}, Landroid/app/contentsuggestions/ContentSelection;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$BundleCallbackWrapper;->onResult(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public classifyContentSelections(Landroid/os/Bundle;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper$BundleCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "bundle",
            "classificationsCallback"
        }
    .end annotation

    .line 62
    :try_start_0
    new-instance v0, Landroid/app/contentsuggestions/ClassificationsRequest$Builder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Landroid/app/contentsuggestions/ClassificationsRequest$Builder;-><init>(Ljava/util/List;)V

    .line 63
    invoke-virtual {v0, p1}, Landroid/app/contentsuggestions/ClassificationsRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/contentsuggestions/ClassificationsRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/contentsuggestions/ClassificationsRequest$Builder;->build()Landroid/app/contentsuggestions/ClassificationsRequest;

    move-result-object p1

    .line 64
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$BundleCallbackWrapper;

    invoke-direct {v0, p2, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$BundleCallbackWrapper;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper$BundleCallback;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;)V

    .line 65
    iget-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;->contentSuggestionsManager:Landroid/app/contentsuggestions/ContentSuggestionsManager;

    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper;->callbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$$Lambda$2;

    invoke-direct {v1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$$Lambda$2;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$BundleCallbackWrapper;)V

    invoke-virtual {p2, p1, p0, v1}, Landroid/app/contentsuggestions/ContentSuggestionsManager;->classifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Ljava/util/concurrent/Executor;Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "Failed to classifyContentSelections"

    .line 70
    invoke-static {p1, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method final synthetic lambda$notifyInteractionAsync$2$ContentSuggestionsServiceWrapperImpl(Ljava/util/function/Supplier;Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestListener;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;)V
    .locals 0

    .line 83
    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 84
    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;->contentSuggestionsManager:Landroid/app/contentsuggestions/ContentSuggestionsManager;

    invoke-virtual {p0, p2, p1}, Landroid/app/contentsuggestions/ContentSuggestionsManager;->notifyInteraction(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 86
    invoke-interface {p3, p2, p4}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestListener;->onFeedbackBatchSent(Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "Failed to notifyInteraction"

    .line 89
    invoke-static {p1, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyInteractionAsync(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestListener;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;)V
    .locals 8
    .param p3    # Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestId",
            "interaction",
            "listener",
            "feedbackBatch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestListener;",
            "Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;",
            ")V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper;->loggingExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$$Lambda$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$$Lambda$3;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;Ljava/util/function/Supplier;Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestListener;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processContextImage(ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taskId",
            "unusedBitmap",
            "imageContextRequestExtras"
        }
    .end annotation

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p2, "CAPTURE_TIME_MS"

    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 104
    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;->contentSuggestionsManager:Landroid/app/contentsuggestions/ContentSuggestionsManager;

    invoke-virtual {p0, p1, p3}, Landroid/app/contentsuggestions/ContentSuggestionsManager;->provideContextImage(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "Failed to provideContextImage"

    .line 106
    invoke-static {p1, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public runOnServiceConnection(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    .line 112
    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper;->connectAndRunAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public suggestContentSelections(ILandroid/os/Bundle;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper$BundleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "taskId",
            "bundle",
            "selectionsCallback"
        }
    .end annotation

    .line 45
    new-instance v0, Landroid/app/contentsuggestions/SelectionsRequest$Builder;

    invoke-direct {v0, p1}, Landroid/app/contentsuggestions/SelectionsRequest$Builder;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/app/contentsuggestions/SelectionsRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/contentsuggestions/SelectionsRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/contentsuggestions/SelectionsRequest$Builder;->build()Landroid/app/contentsuggestions/SelectionsRequest;

    move-result-object p1

    .line 48
    :try_start_0
    new-instance p2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$BundleCallbackWrapper;

    invoke-direct {p2, p3, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$BundleCallbackWrapper;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper$BundleCallback;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;)V

    .line 49
    iget-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;->contentSuggestionsManager:Landroid/app/contentsuggestions/ContentSuggestionsManager;

    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper;->callbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$$Lambda$1;

    invoke-direct {v0, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$$Lambda$1;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl$BundleCallbackWrapper;)V

    invoke-virtual {p3, p1, p0, v0}, Landroid/app/contentsuggestions/ContentSuggestionsManager;->suggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Ljava/util/concurrent/Executor;Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "Failed to suggestContentSelections"

    .line 54
    invoke-static {p1, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
