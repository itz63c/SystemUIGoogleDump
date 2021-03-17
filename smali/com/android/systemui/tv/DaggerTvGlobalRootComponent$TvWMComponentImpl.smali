.class final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;
.super Ljava/lang/Object;
.source "DaggerTvGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/tv/TvWMComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TvWMComponentImpl"
.end annotation


# instance fields
.field private optionalOfAppPairsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairsController;",
            ">;>;"
        }
    .end annotation
.end field

.field private optionalOfLegacySplitScreenControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideAppPairsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairs;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideBubbleControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/BubbleController;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideBubblesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideDisplayControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;"
        }
    .end annotation
.end field

.field private provideDisplayImeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            ">;"
        }
    .end annotation
.end field

.field private provideDragAndDropControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController;",
            ">;"
        }
    .end annotation
.end field

.field private provideFloatingContentCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/FloatingContentCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private provideFullscreenTaskListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/FullscreenTaskListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideHideDisplayCutoutControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideHideDisplayCutoutProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideLegacySplitScreenProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideOneHandedControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideOneHandedProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;>;"
        }
    .end annotation
.end field

.field private providePipAnimationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            ">;"
        }
    .end annotation
.end field

.field private providePipBoundsHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipBoundsAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private providePipBoundsStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            ">;"
        }
    .end annotation
.end field

.field private providePipMediaControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipMediaController;",
            ">;"
        }
    .end annotation
.end field

.field private providePipProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;>;"
        }
    .end annotation
.end field

.field private providePipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private providePipTaskOrganizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipTaskOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field private providePipUiEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipUiEventLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideRemoteTransitionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/transition/RemoteTransitions;",
            ">;"
        }
    .end annotation
.end field

.field private provideRootTaskDisplayAreaOrganizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field private provideShellAnimationExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private provideShellCommandHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideShellInitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/ShellInit;",
            ">;"
        }
    .end annotation
.end field

.field private provideShellMainExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private provideShellMainExecutorSfVsyncAnimationHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/animation/AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private provideShellMainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideShellTaskOrganizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field private provideSizeCompatUIControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;",
            ">;"
        }
    .end annotation
.end field

.field private provideSplitScreenControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideSplitScreenProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;",
            ">;"
        }
    .end annotation
.end field

.field private provideSplitScreenProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideSyncTransactionQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            ">;"
        }
    .end annotation
.end field

.field private provideSysUIMainExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private provideSystemWindowsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/SystemWindows;",
            ">;"
        }
    .end annotation
.end field

.field private provideTaskViewFactoryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/TaskViewFactoryController;",
            ">;"
        }
    .end annotation
.end field

.field private provideTaskViewFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/TaskViewFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideTransactionPoolProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/TransactionPool;",
            ">;"
        }
    .end annotation
.end field

.field private provideTransitionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;"
        }
    .end annotation
.end field

.field private provideTvPipNotificationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/tv/TvPipNotificationController;",
            ">;"
        }
    .end annotation
.end field

.field private provideTvPipTransitionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
            ">;"
        }
    .end annotation
.end field

.field private provideWindowManagerShellWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/WindowManagerShellWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private providerTaskStackListenerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/TaskStackListenerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private providesTvPipMenuControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/tv/TvPipMenuController;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)V
    .locals 0

    .line 1601
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1603
    invoke-direct {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->initialize()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$1;)V
    .locals 0

    .line 1504
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)V

    return-void
.end method

.method private initialize()V
    .locals 13

    .line 1608
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainHandlerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainHandlerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 1609
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSysUIMainExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSysUIMainExecutorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSysUIMainExecutorProvider:Ljavax/inject/Provider;

    .line 1610
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainExecutorFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainExecutorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 1611
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 1612
    invoke-static {}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransactionPoolFactory;->create()Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransactionPoolFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    .line 1613
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/wmshell/TvWMShellModule_ProvideDisplayImeControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/TvWMShellModule_ProvideDisplayImeControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    .line 1614
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDragAndDropControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDragAndDropControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDragAndDropControllerProvider:Ljavax/inject/Provider;

    .line 1615
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSyncTransactionQueueFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSyncTransactionQueueFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    .line 1616
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSizeCompatUIControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSizeCompatUIControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSizeCompatUIControllerProvider:Ljavax/inject/Provider;

    .line 1617
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSizeCompatUIControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellTaskOrganizerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 1618
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSystemWindowsFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSystemWindowsFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSystemWindowsProvider:Ljavax/inject/Provider;

    .line 1619
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProviderTaskStackListenerImplFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProviderTaskStackListenerImplFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providerTaskStackListenerImplProvider:Ljavax/inject/Provider;

    .line 1620
    invoke-static {}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellAnimationExecutorFactory;->create()Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellAnimationExecutorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellAnimationExecutorProvider:Ljavax/inject/Provider;

    .line 1621
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransitionsFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransitionsFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 1622
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainExecutorSfVsyncAnimationHandlerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainExecutorSfVsyncAnimationHandlerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorSfVsyncAnimationHandlerProvider:Ljavax/inject/Provider;

    .line 1623
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSystemWindowsProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providerTaskStackListenerImplProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorSfVsyncAnimationHandlerProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v11}, Lcom/android/systemui/wmshell/TvWMShellModule_ProvideSplitScreenFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/TvWMShellModule_ProvideSplitScreenFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSplitScreenProvider:Ljavax/inject/Provider;

    .line 1624
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$PresentJdkOptionalInstanceProvider;->access$800(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfLegacySplitScreenControllerProvider:Ljavax/inject/Provider;

    .line 1625
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideRootTaskDisplayAreaOrganizerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideRootTaskDisplayAreaOrganizerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRootTaskDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    .line 1626
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRootTaskDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSplitScreenControllerProvider:Ljavax/inject/Provider;

    .line 1627
    invoke-static {}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$900()Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfAppPairsControllerProvider:Ljavax/inject/Provider;

    .line 1628
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideFullscreenTaskListenerProvider:Ljavax/inject/Provider;

    .line 1629
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDragAndDropControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfLegacySplitScreenControllerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSplitScreenControllerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfAppPairsControllerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellInitFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellInitFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 1630
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wmshell/TvPipModule_ProvidePipBoundsStateFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/TvPipModule_ProvidePipBoundsStateFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipBoundsStateProvider:Ljavax/inject/Provider;

    .line 1631
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipBoundsStateProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/android/systemui/wmshell/TvPipModule_ProvidePipBoundsHandlerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/TvPipModule_ProvidePipBoundsHandlerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipBoundsHandlerProvider:Ljavax/inject/Provider;

    .line 1632
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipMediaControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipMediaControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipMediaControllerProvider:Ljavax/inject/Provider;

    .line 1633
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipBoundsStateProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSystemWindowsProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipMediaControllerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/wmshell/TvPipModule_ProvidesTvPipMenuControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/TvPipModule_ProvidesTvPipMenuControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesTvPipMenuControllerProvider:Ljavax/inject/Provider;

    .line 1634
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;

    .line 1635
    invoke-static {v0}, Lcom/android/systemui/wmshell/TvPipModule_ProvidePipAnimationControllerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/TvPipModule_ProvidePipAnimationControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipAnimationControllerProvider:Ljavax/inject/Provider;

    .line 1636
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipBoundsHandlerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipBoundsStateProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesTvPipMenuControllerProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/wmshell/TvPipModule_ProvideTvPipTransitionFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/TvPipModule_ProvideTvPipTransitionFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipTransitionProvider:Ljavax/inject/Provider;

    .line 1637
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipUiEventLoggerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipUiEventLoggerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 1638
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesTvPipMenuControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipBoundsStateProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipBoundsHandlerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipAnimationControllerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipTransitionProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfLegacySplitScreenControllerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipUiEventLoggerProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v12, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v12}, Lcom/android/systemui/wmshell/TvPipModule_ProvidePipTaskOrganizerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/TvPipModule_ProvidePipTaskOrganizerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 1639
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipMediaControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/wmshell/TvPipModule_ProvideTvPipNotificationControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/TvPipModule_ProvideTvPipNotificationControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipNotificationControllerProvider:Ljavax/inject/Provider;

    .line 1640
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideWindowManagerShellWrapperFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideWindowManagerShellWrapperFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideWindowManagerShellWrapperProvider:Ljavax/inject/Provider;

    .line 1641
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipBoundsStateProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipBoundsHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesTvPipMenuControllerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipMediaControllerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipTransitionProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipNotificationControllerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providerTaskStackListenerImplProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideWindowManagerShellWrapperProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v11}, Lcom/android/systemui/wmshell/TvPipModule_ProvidePipFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/TvPipModule_ProvidePipFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipProvider:Ljavax/inject/Provider;

    .line 1642
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providerTaskStackListenerImplProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideOneHandedControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideOneHandedControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideOneHandedControllerProvider:Ljavax/inject/Provider;

    .line 1643
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideHideDisplayCutoutControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideHideDisplayCutoutControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideHideDisplayCutoutControllerProvider:Ljavax/inject/Provider;

    .line 1644
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfLegacySplitScreenControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSplitScreenControllerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideOneHandedControllerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfAppPairsControllerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellCommandHandlerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellCommandHandlerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 1645
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideOneHandedControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideOneHandedFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideOneHandedFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideOneHandedProvider:Ljavax/inject/Provider;

    .line 1646
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfLegacySplitScreenControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideLegacySplitScreenFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideLegacySplitScreenFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideLegacySplitScreenProvider:Ljavax/inject/Provider;

    .line 1647
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSplitScreenControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSplitScreenProvider2:Ljavax/inject/Provider;

    .line 1648
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfAppPairsControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideAppPairsFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideAppPairsFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideAppPairsProvider:Ljavax/inject/Provider;

    .line 1649
    invoke-static {}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideFloatingContentCoordinatorFactory;->create()Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideFloatingContentCoordinatorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideFloatingContentCoordinatorProvider:Ljavax/inject/Provider;

    .line 1650
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideFloatingContentCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideWindowManagerShellWrapperProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$1000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v10}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideBubbleControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideBubbleControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideBubbleControllerProvider:Ljavax/inject/Provider;

    .line 1651
    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideBubblesFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideBubblesFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideBubblesProvider:Ljavax/inject/Provider;

    .line 1652
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideHideDisplayCutoutControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideHideDisplayCutoutFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideHideDisplayCutoutFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideHideDisplayCutoutProvider:Ljavax/inject/Provider;

    .line 1653
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTaskViewFactoryControllerProvider:Ljavax/inject/Provider;

    .line 1654
    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTaskViewFactoryFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTaskViewFactoryFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTaskViewFactoryProvider:Ljavax/inject/Provider;

    .line 1655
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideRemoteTransitionsFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideRemoteTransitionsFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRemoteTransitionsProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public getAppPairs()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairs;",
            ">;"
        }
    .end annotation

    .line 1690
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideAppPairsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public getBubbles()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;"
        }
    .end annotation

    .line 1695
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideBubblesProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public getHideDisplayCutout()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;"
        }
    .end annotation

    .line 1700
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideHideDisplayCutoutProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public getLegacySplitScreen()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;"
        }
    .end annotation

    .line 1680
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideLegacySplitScreenProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public getOneHanded()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;"
        }
    .end annotation

    .line 1670
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideOneHandedProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public getPip()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;"
        }
    .end annotation

    .line 1675
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public getShellCommandHandler()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;"
        }
    .end annotation

    .line 1665
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public getShellInit()Lcom/android/wm/shell/ShellInit;
    .locals 0

    .line 1660
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/ShellInit;

    return-object p0
.end method

.method public getSplitScreen()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;"
        }
    .end annotation

    .line 1685
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSplitScreenProvider2:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public getTaskViewFactory()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/TaskViewFactory;",
            ">;"
        }
    .end annotation

    .line 1705
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTaskViewFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public getTransitions()Lcom/android/wm/shell/transition/RemoteTransitions;
    .locals 0

    .line 1710
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRemoteTransitionsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/transition/RemoteTransitions;

    return-object p0
.end method

.method public bridge synthetic init()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/dagger/WMComponent;->init()V

    return-void
.end method
