.class public final Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;
.super Ljava/lang/Object;
.source "BrightLineFalsingManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/classifier/BrightLineFalsingManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final classifiersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/android/systemui/classifier/FalsingClassifier;",
            ">;>;"
        }
    .end annotation
.end field

.field private final delayableExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final dockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;"
        }
    .end annotation
.end field

.field private final doubleTapClassifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/DoubleTapClassifier;",
            ">;"
        }
    .end annotation
.end field

.field private final doubleTapTimeMsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final falsingDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingDataProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final historyTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/HistoryTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final metricsLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final singleTapClassifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/SingleTapClassifier;",
            ">;"
        }
    .end annotation
.end field

.field private final testHarnessProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingDataProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/android/systemui/classifier/FalsingClassifier;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/SingleTapClassifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/DoubleTapClassifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/HistoryTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Long;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->falsingDataProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->dockManagerProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p3, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p4, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->classifiersProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p5, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->singleTapClassifierProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p6, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->doubleTapClassifierProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p7, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->historyTrackerProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p8, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->delayableExecutorProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p9, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->doubleTapTimeMsProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p10, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->testHarnessProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingDataProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/android/systemui/classifier/FalsingClassifier;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/SingleTapClassifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/DoubleTapClassifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/HistoryTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Long;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;"
        }
    .end annotation

    .line 74
    new-instance v11, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v11
.end method

.method public static newInstance(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/dock/DockManager;Lcom/android/internal/logging/MetricsLogger;Ljava/util/Set;Lcom/android/systemui/classifier/SingleTapClassifier;Lcom/android/systemui/classifier/DoubleTapClassifier;Lcom/android/systemui/classifier/HistoryTracker;Lcom/android/systemui/util/concurrency/DelayableExecutor;JZ)Lcom/android/systemui/classifier/BrightLineFalsingManager;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/classifier/FalsingDataProvider;",
            "Lcom/android/systemui/dock/DockManager;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/classifier/FalsingClassifier;",
            ">;",
            "Lcom/android/systemui/classifier/SingleTapClassifier;",
            "Lcom/android/systemui/classifier/DoubleTapClassifier;",
            "Lcom/android/systemui/classifier/HistoryTracker;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "JZ)",
            "Lcom/android/systemui/classifier/BrightLineFalsingManager;"
        }
    .end annotation

    .line 82
    new-instance v12, Lcom/android/systemui/classifier/BrightLineFalsingManager;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/classifier/BrightLineFalsingManager;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/dock/DockManager;Lcom/android/internal/logging/MetricsLogger;Ljava/util/Set;Lcom/android/systemui/classifier/SingleTapClassifier;Lcom/android/systemui/classifier/DoubleTapClassifier;Lcom/android/systemui/classifier/HistoryTracker;Lcom/android/systemui/util/concurrency/DelayableExecutor;JZ)V

    return-object v12
.end method


# virtual methods
.method public get()Lcom/android/systemui/classifier/BrightLineFalsingManager;
    .locals 12

    .line 62
    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->falsingDataProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/classifier/FalsingDataProvider;

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->dockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/dock/DockManager;

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/logging/MetricsLogger;

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->classifiersProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/Set;

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->singleTapClassifierProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/classifier/SingleTapClassifier;

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->doubleTapClassifierProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/classifier/DoubleTapClassifier;

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->historyTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/classifier/HistoryTracker;

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->delayableExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->doubleTapTimeMsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->testHarnessProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static/range {v1 .. v11}, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->newInstance(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/dock/DockManager;Lcom/android/internal/logging/MetricsLogger;Ljava/util/Set;Lcom/android/systemui/classifier/SingleTapClassifier;Lcom/android/systemui/classifier/DoubleTapClassifier;Lcom/android/systemui/classifier/HistoryTracker;Lcom/android/systemui/util/concurrency/DelayableExecutor;JZ)Lcom/android/systemui/classifier/BrightLineFalsingManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager_Factory;->get()Lcom/android/systemui/classifier/BrightLineFalsingManager;

    move-result-object p0

    return-object p0
.end method
