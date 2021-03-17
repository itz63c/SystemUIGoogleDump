.class final Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;
.super Ljava/lang/Object;
.source "DaggerGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/dagger/WMComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/DaggerGlobalRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WMComponentImpl"
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
            "Lcom/android/wm/shell/apppairs/AppPairsController;",
            ">;"
        }
    .end annotation
.end field

.field private provideAppPairsProvider2:Ljavax/inject/Provider;
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
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;",
            ">;"
        }
    .end annotation
.end field

.field private provideLegacySplitScreenProvider2:Ljavax/inject/Provider;
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

.field private providePipAppOpsListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/phone/PipAppOpsListener;",
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

.field private providePipTouchHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            ">;"
        }
    .end annotation
.end field

.field private providePipTransitionControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
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

.field private providesPipBoundsHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipBoundsAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private providesPipPhoneMenuControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)V
    .locals 0

    .line 1523
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1525
    invoke-direct {p0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->initialize()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;Lcom/android/systemui/dagger/DaggerGlobalRootComponent$1;)V
    .locals 0

    .line 1422
    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)V

    return-void
.end method

.method private initialize()V
    .locals 14

    .line 1530
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$500(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainHandlerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainHandlerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 1531
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$500(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSysUIMainExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSysUIMainExecutorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideSysUIMainExecutorProvider:Ljavax/inject/Provider;

    .line 1532
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainExecutorFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainExecutorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 1533
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$700(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 1534
    invoke-static {}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransactionPoolFactory;->create()Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransactionPoolFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    .line 1535
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$700(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/wmshell/WMShellModule_ProvideDisplayImeControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellModule_ProvideDisplayImeControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    .line 1536
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDragAndDropControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDragAndDropControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideDragAndDropControllerProvider:Ljavax/inject/Provider;

    .line 1537
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSyncTransactionQueueFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSyncTransactionQueueFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    .line 1538
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSizeCompatUIControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSizeCompatUIControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideSizeCompatUIControllerProvider:Ljavax/inject/Provider;

    .line 1539
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideSizeCompatUIControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellTaskOrganizerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 1540
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$700(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSystemWindowsFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSystemWindowsFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideSystemWindowsProvider:Ljavax/inject/Provider;

    .line 1541
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProviderTaskStackListenerImplFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProviderTaskStackListenerImplFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providerTaskStackListenerImplProvider:Ljavax/inject/Provider;

    .line 1542
    invoke-static {}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellAnimationExecutorFactory;->create()Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellAnimationExecutorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellAnimationExecutorProvider:Ljavax/inject/Provider;

    .line 1543
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransitionsFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransitionsFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 1544
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainExecutorSfVsyncAnimationHandlerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainExecutorSfVsyncAnimationHandlerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorSfVsyncAnimationHandlerProvider:Ljavax/inject/Provider;

    .line 1545
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideSystemWindowsProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providerTaskStackListenerImplProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorSfVsyncAnimationHandlerProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v11}, Lcom/android/systemui/wmshell/WMShellModule_ProvideLegacySplitScreenFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellModule_ProvideLegacySplitScreenFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideLegacySplitScreenProvider:Ljavax/inject/Provider;

    .line 1546
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$PresentJdkOptionalInstanceProvider;->access$800(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->optionalOfLegacySplitScreenControllerProvider:Ljavax/inject/Provider;

    .line 1547
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideRootTaskDisplayAreaOrganizerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideRootTaskDisplayAreaOrganizerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideRootTaskDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    .line 1548
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideRootTaskDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideSplitScreenControllerProvider:Ljavax/inject/Provider;

    .line 1549
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/wmshell/WMShellModule_ProvideAppPairsFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellModule_ProvideAppPairsFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideAppPairsProvider:Ljavax/inject/Provider;

    .line 1550
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$PresentJdkOptionalInstanceProvider;->access$800(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->optionalOfAppPairsControllerProvider:Ljavax/inject/Provider;

    .line 1551
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideFullscreenTaskListenerProvider:Ljavax/inject/Provider;

    .line 1552
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideDragAndDropControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->optionalOfLegacySplitScreenControllerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideSplitScreenControllerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->optionalOfAppPairsControllerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellInitFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellInitFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 1553
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipMediaControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipMediaControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipMediaControllerProvider:Ljavax/inject/Provider;

    .line 1554
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipMediaControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideSystemWindowsProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipPhoneMenuControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipPhoneMenuControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providesPipPhoneMenuControllerProvider:Ljavax/inject/Provider;

    .line 1555
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellModule_ProvidePipBoundsStateFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellModule_ProvidePipBoundsStateFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipBoundsStateProvider:Ljavax/inject/Provider;

    .line 1556
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipBoundsStateProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsHandlerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsHandlerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providesPipBoundsHandlerProvider:Ljavax/inject/Provider;

    .line 1557
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;

    .line 1558
    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellModule_ProvidePipAnimationControllerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellModule_ProvidePipAnimationControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipAnimationControllerProvider:Ljavax/inject/Provider;

    .line 1559
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipAnimationControllerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providesPipBoundsHandlerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipBoundsStateProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providesPipPhoneMenuControllerProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/wmshell/WMShellModule_ProvidePipTransitionControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellModule_ProvidePipTransitionControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipTransitionControllerProvider:Ljavax/inject/Provider;

    .line 1560
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$900(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$1000(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipUiEventLoggerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipUiEventLoggerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 1561
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipBoundsStateProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providesPipBoundsHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providesPipPhoneMenuControllerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipAnimationControllerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipTransitionControllerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->optionalOfLegacySplitScreenControllerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipUiEventLoggerProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v12, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v12}, Lcom/android/systemui/wmshell/WMShellModule_ProvidePipTaskOrganizerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellModule_ProvidePipTaskOrganizerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 1562
    invoke-static {}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideFloatingContentCoordinatorFactory;->create()Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideFloatingContentCoordinatorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideFloatingContentCoordinatorProvider:Ljavax/inject/Provider;

    .line 1563
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providesPipPhoneMenuControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providesPipBoundsHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipBoundsStateProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipTransitionControllerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideFloatingContentCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipUiEventLoggerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/wmshell/WMShellModule_ProvidePipTouchHandlerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellModule_ProvidePipTouchHandlerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipTouchHandlerProvider:Ljavax/inject/Provider;

    .line 1564
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipTouchHandlerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipAppOpsListenerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipAppOpsListenerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipAppOpsListenerProvider:Ljavax/inject/Provider;

    .line 1565
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideWindowManagerShellWrapperFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideWindowManagerShellWrapperFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideWindowManagerShellWrapperProvider:Ljavax/inject/Provider;

    .line 1566
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipAppOpsListenerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providesPipBoundsHandlerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipBoundsStateProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipMediaControllerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providesPipPhoneMenuControllerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipTouchHandlerProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipTransitionControllerProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideWindowManagerShellWrapperProvider:Ljavax/inject/Provider;

    iget-object v12, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providerTaskStackListenerImplProvider:Ljavax/inject/Provider;

    iget-object v13, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v13}, Lcom/android/systemui/wmshell/WMShellModule_ProvidePipFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellModule_ProvidePipFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipProvider:Ljavax/inject/Provider;

    .line 1567
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providerTaskStackListenerImplProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$900(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideOneHandedControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideOneHandedControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideOneHandedControllerProvider:Ljavax/inject/Provider;

    .line 1568
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideHideDisplayCutoutControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideHideDisplayCutoutControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideHideDisplayCutoutControllerProvider:Ljavax/inject/Provider;

    .line 1569
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->optionalOfLegacySplitScreenControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideSplitScreenControllerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideOneHandedControllerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->optionalOfAppPairsControllerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellCommandHandlerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellCommandHandlerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 1570
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideOneHandedControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideOneHandedFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideOneHandedFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideOneHandedProvider:Ljavax/inject/Provider;

    .line 1571
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->optionalOfLegacySplitScreenControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideLegacySplitScreenFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideLegacySplitScreenFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideLegacySplitScreenProvider2:Ljavax/inject/Provider;

    .line 1572
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideSplitScreenControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideSplitScreenProvider:Ljavax/inject/Provider;

    .line 1573
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->optionalOfAppPairsControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideAppPairsFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideAppPairsFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideAppPairsProvider2:Ljavax/inject/Provider;

    .line 1574
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideFloatingContentCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$1100(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$1200(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideWindowManagerShellWrapperProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$1300(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$900(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v10}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideBubbleControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideBubbleControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideBubbleControllerProvider:Ljavax/inject/Provider;

    .line 1575
    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideBubblesFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideBubblesFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideBubblesProvider:Ljavax/inject/Provider;

    .line 1576
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideHideDisplayCutoutControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideHideDisplayCutoutFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideHideDisplayCutoutFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideHideDisplayCutoutProvider:Ljavax/inject/Provider;

    .line 1577
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideTaskViewFactoryControllerProvider:Ljavax/inject/Provider;

    .line 1578
    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTaskViewFactoryFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTaskViewFactoryFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideTaskViewFactoryProvider:Ljavax/inject/Provider;

    .line 1579
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideRemoteTransitionsFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideRemoteTransitionsFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideRemoteTransitionsProvider:Ljavax/inject/Provider;

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

    .line 1614
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideAppPairsProvider2:Ljavax/inject/Provider;

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

    .line 1619
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideBubblesProvider:Ljavax/inject/Provider;

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

    .line 1624
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideHideDisplayCutoutProvider:Ljavax/inject/Provider;

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

    .line 1604
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideLegacySplitScreenProvider2:Ljavax/inject/Provider;

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

    .line 1594
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideOneHandedProvider:Ljavax/inject/Provider;

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

    .line 1599
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->providePipProvider:Ljavax/inject/Provider;

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

    .line 1589
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public getShellInit()Lcom/android/wm/shell/ShellInit;
    .locals 0

    .line 1584
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

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

    .line 1609
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideSplitScreenProvider:Ljavax/inject/Provider;

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

    .line 1629
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideTaskViewFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public getTransitions()Lcom/android/wm/shell/transition/RemoteTransitions;
    .locals 0

    .line 1634
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$WMComponentImpl;->provideRemoteTransitionsProvider:Ljavax/inject/Provider;

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
