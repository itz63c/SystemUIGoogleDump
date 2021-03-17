.class public Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;
.super Ljava/lang/Object;
.source "SuggestController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$Factory;
    }
.end annotation


# static fields
.field public static defaultFactory:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$Factory;


# instance fields
.field private final bundleUtils:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/BundleUtils;

.field private overviewSessionId:Ljava/lang/String;

.field private setupInfo:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$SetupInfo;

.field private final uiContext:Landroid/content/Context;

.field private final uiHandler:Landroid/os/Handler;

.field private final userProfileDataContext:Landroid/content/Context;

.field private final wrapper:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$6;->$instance:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$Factory;

    sput-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;->defaultFactory:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$Factory;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userProfileDataContext",
            "uiContext",
            "uiHandler",
            "uiExecutor",
            "asyncExecutor",
            "loggingExecutor"
        }
    .end annotation

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null_session_id"

    .line 162
    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;->overviewSessionId:Ljava/lang/String;

    .line 549
    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;->userProfileDataContext:Landroid/content/Context;

    .line 550
    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;->uiContext:Landroid/content/Context;

    .line 551
    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;->uiHandler:Landroid/os/Handler;

    .line 552
    sget-object p2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;->defaultFactory:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$Factory;

    .line 553
    invoke-interface {p2, p1, p4, p5, p6}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$Factory;->create(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;->wrapper:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper;

    .line 554
    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/BundleUtils;->createWithBackwardsCompatVersion()Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/BundleUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;->bundleUtils:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/BundleUtils;

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userProfileDataContext",
            "uiContext",
            "uiHandler",
            "uiExecutor",
            "asyncExecutor",
            "loggingExecutor"
        }
    .end annotation

    .line 207
    new-instance v7, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;-><init>(Landroid/content/Context;Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 214
    invoke-direct {v7}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;->startIfNeeded()Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;)Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userProfileDataContext",
            "uiContext",
            "executor",
            "uiHandler"
        }
    .end annotation

    .line 186
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$0;->get$Lambda(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    move-object v5, p2

    .line 185
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;->create(Landroid/content/Context;Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$static$0$SuggestController(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper;
    .locals 6

    .line 60
    const-class v0, Landroid/app/contentsuggestions/ContentSuggestionsManager;

    .line 61
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroid/app/contentsuggestions/ContentSuggestionsManager;

    .line 62
    new-instance p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$1;

    sget-object v4, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$5;->$instance:Ljava/util/concurrent/Executor;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/app/contentsuggestions/ContentSuggestionsManager;)V

    return-object p0
.end method

.method private startIfNeeded()Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;->wrapper:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper;

    new-instance v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$3;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper;->runOnServiceConnection(Ljava/lang/Runnable;)V

    return-object p0
.end method


# virtual methods
.method getWrapper()Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper;
    .locals 0

    .line 483
    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;->wrapper:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper;

    return-object p0
.end method

.method final synthetic lambda$reportMetricsToService$2$SuggestController(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;)Landroid/os/Bundle;
    .locals 0

    .line 495
    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;->bundleUtils:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/BundleUtils;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/BundleUtils;->createFeedbackRequest(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method final synthetic lambda$startIfNeeded$3$SuggestController(Landroid/os/Bundle;)V
    .locals 1

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;->bundleUtils:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/BundleUtils;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/BundleUtils;->extractContents(Landroid/os/Bundle;)Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ContentParcelables$Contents;

    move-result-object p1

    .line 518
    invoke-virtual {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ContentParcelables$Contents;->getSetupInfo()Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$SetupInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "System intelligence is unavailable."

    .line 519
    invoke-static {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 522
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ContentParcelables$Contents;->getSetupInfo()Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$SetupInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$SetupInfo;

    .line 523
    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;->setupInfo:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$SetupInfo;

    .line 524
    invoke-virtual {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$SetupInfo;->getErrorCode()Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$ErrorCode;

    move-result-object p0

    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$ErrorCode;->ERROR_CODE_SUCCESS:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$ErrorCode;

    if-ne p0, v0, :cond_1

    const-string p0, "Successfully connected to system intelligence: "

    .line 525
    invoke-static {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p0, "Unable to connect to system intelligence: "

    .line 529
    invoke-virtual {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$SetupInfo;->getErrorMesssage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    .line 527
    :goto_0
    invoke-static {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Unable to connect to system intelligence module."

    .line 532
    invoke-static {p1, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method final synthetic lambda$startIfNeeded$4$SuggestController()V
    .locals 11

    :try_start_0
    const-string v0, "Connecting to system intelligence module."

    .line 502
    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 503
    invoke-static {}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;->create()Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;

    move-result-object v7

    .line 504
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;->SETUP:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    invoke-virtual {v7, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;->setInteractionType(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;)V

    .line 505
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;->wrapper:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper;

    const/4 v10, -0x1

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;->bundleUtils:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/BundleUtils;

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;->uiContext:Landroid/content/Context;

    .line 508
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, -0x1

    const-wide/16 v5, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 507
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/BundleUtils;->createSelectionsRequest(Ljava/lang/String;Ljava/lang/String;IJLcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;Landroid/os/Bundle;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ParserParcelables$ParsedViewHierarchy;)Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$4;

    invoke-direct {v2, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$4;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;)V

    .line 505
    invoke-virtual {v0, v10, v1, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper;->suggestContentSelections(ILandroid/os/Bundle;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper$BundleCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Error while connecting to system intelligence module."

    .line 536
    invoke-static {v0, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method reportMetricsToService(Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestListener;)V
    .locals 2
    .param p3    # Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "id",
            "feedbackBatch",
            "suggestListener"
        }
    .end annotation

    .line 491
    invoke-virtual {p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;->getFeedback()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;->wrapper:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper;

    new-instance v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$2;

    invoke-direct {v1, p0, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$$Lambda$2;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;)V

    invoke-virtual {v0, p1, v1, p3, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper;->notifyInteractionAsync(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestListener;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;)V

    return-void
.end method
