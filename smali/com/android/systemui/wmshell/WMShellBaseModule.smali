.class public abstract Lcom/android/systemui/wmshell/WMShellBaseModule;
.super Ljava/lang/Object;
.source "WMShellBaseModule.java"


# direct methods
.method public static synthetic $r8$lambda$0cVkkbxblruSccXbc8mSl6itmqE(Lcom/android/wm/shell/apppairs/AppPairsController;)Lcom/android/wm/shell/apppairs/AppPairs;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule;->lambda$provideAppPairs$6(Lcom/android/wm/shell/apppairs/AppPairsController;)Lcom/android/wm/shell/apppairs/AppPairs;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6PYbL8RoQF0Tm7fHCg88t6Gm5K4(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/Bubbles;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule;->lambda$provideBubbles$1(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/Bubbles;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6Y4RfzfpeBy5gsUw1iysxvLdWD4(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHanded;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule;->lambda$provideOneHanded$3(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHanded;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G_Fvp1w4qfIHeP1bUU5ORRTciOc(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule;->lambda$provideLegacySplitScreen$5(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$X9ICGrnhrqT4foD3Nw3AhhCGYoM(Landroid/animation/AnimationHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule;->lambda$provideShellMainExecutorSfVsyncAnimationHandler$0(Landroid/animation/AnimationHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZWzWi-edL4qKEr1J4wfmyetqM6Y(Lcom/android/wm/shell/splitscreen/SplitScreenController;)Lcom/android/wm/shell/splitscreen/SplitScreen;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule;->lambda$provideSplitScreen$4(Lcom/android/wm/shell/splitscreen/SplitScreenController;)Lcom/android/wm/shell/splitscreen/SplitScreen;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$h6j0OvnzdW4c_DtReyTsWQmRAPU(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;)Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule;->lambda$provideHideDisplayCutout$2(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;)Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$provideAppPairs$6(Lcom/android/wm/shell/apppairs/AppPairsController;)Lcom/android/wm/shell/apppairs/AppPairs;
    .locals 0

    .line 438
    invoke-virtual {p0}, Lcom/android/wm/shell/apppairs/AppPairsController;->asAppPairs()Lcom/android/wm/shell/apppairs/AppPairs;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$provideBubbles$1(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/Bubbles;
    .locals 0

    .line 258
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->asBubbles()Lcom/android/wm/shell/bubbles/Bubbles;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$provideHideDisplayCutout$2(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;)Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;
    .locals 0

    .line 298
    invoke-virtual {p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->asHideDisplayCutout()Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$provideLegacySplitScreen$5(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;
    .locals 0

    .line 427
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->asLegacySplitScreen()Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$provideOneHanded$3(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHanded;
    .locals 0

    .line 316
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->asOneHanded()Lcom/android/wm/shell/onehanded/OneHanded;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$provideShellMainExecutorSfVsyncAnimationHandler$0(Landroid/animation/AnimationHandler;)V
    .locals 1

    .line 175
    new-instance v0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    invoke-direct {v0}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    return-void
.end method

.method private static synthetic lambda$provideSplitScreen$4(Lcom/android/wm/shell/splitscreen/SplitScreenController;)Lcom/android/wm/shell/splitscreen/SplitScreen;
    .locals 0

    .line 403
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->asSplitScreen()Lcom/android/wm/shell/splitscreen/SplitScreen;

    move-result-object p0

    return-object p0
.end method

.method static provideAppPairs(Ljava/util/Optional;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairsController;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairs;",
            ">;"
        }
    .end annotation

    .line 438
    sget-object v0, Lcom/android/systemui/wmshell/WMShellBaseModule-$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/wmshell/WMShellBaseModule-$$ExternalSyntheticLambda1;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static provideBubbleController(Landroid/content/Context;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Lcom/android/wm/shell/WindowManagerShellWrapper;Landroid/content/pm/LauncherApps;Lcom/android/internal/logging/UiEventLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)Ljava/util/Optional;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/FloatingContentCoordinator;",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            "Landroid/view/WindowManager;",
            "Lcom/android/wm/shell/WindowManagerShellWrapper;",
            "Landroid/content/pm/LauncherApps;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/os/Handler;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/BubbleController;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 274
    invoke-static/range {v0 .. v10}, Lcom/android/wm/shell/bubbles/BubbleController;->create(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Lcom/android/wm/shell/WindowManagerShellWrapper;Landroid/content/pm/LauncherApps;Lcom/android/internal/logging/UiEventLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)Lcom/android/wm/shell/bubbles/BubbleController;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static provideBubbles(Ljava/util/Optional;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/BubbleController;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;"
        }
    .end annotation

    .line 258
    sget-object v0, Lcom/android/systemui/wmshell/WMShellBaseModule-$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/wmshell/WMShellBaseModule-$$ExternalSyntheticLambda2;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static provideDisplayController(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/DisplayController;
    .locals 1

    .line 191
    new-instance v0, Lcom/android/wm/shell/common/DisplayController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/common/DisplayController;-><init>(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v0
.end method

.method static provideDragAndDropController(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;)Lcom/android/wm/shell/draganddrop/DragAndDropController;
    .locals 1

    .line 198
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;)V

    return-object v0
.end method

.method static provideFloatingContentCoordinator()Lcom/android/wm/shell/common/FloatingContentCoordinator;
    .locals 1

    .line 338
    new-instance v0, Lcom/android/wm/shell/common/FloatingContentCoordinator;

    invoke-direct {v0}, Lcom/android/wm/shell/common/FloatingContentCoordinator;-><init>()V

    return-object v0
.end method

.method static provideFullscreenTaskListener(Lcom/android/wm/shell/common/SyncTransactionQueue;)Lcom/android/wm/shell/FullscreenTaskListener;
    .locals 1

    .line 287
    new-instance v0, Lcom/android/wm/shell/FullscreenTaskListener;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/FullscreenTaskListener;-><init>(Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    return-object v0
.end method

.method static provideHideDisplayCutout(Ljava/util/Optional;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;"
        }
    .end annotation

    .line 298
    sget-object v0, Lcom/android/systemui/wmshell/WMShellBaseModule-$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/systemui/wmshell/WMShellBaseModule-$$ExternalSyntheticLambda3;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static provideHideDisplayCutoutController(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;",
            ">;"
        }
    .end annotation

    .line 306
    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->create(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;

    move-result-object p0

    .line 305
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static provideLegacySplitScreen(Ljava/util/Optional;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;"
        }
    .end annotation

    .line 427
    sget-object v0, Lcom/android/systemui/wmshell/WMShellBaseModule-$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/systemui/wmshell/WMShellBaseModule-$$ExternalSyntheticLambda4;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static provideOneHanded(Ljava/util/Optional;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;"
        }
    .end annotation

    .line 316
    sget-object v0, Lcom/android/systemui/wmshell/WMShellBaseModule-$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/systemui/wmshell/WMShellBaseModule-$$ExternalSyntheticLambda5;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static provideOneHandedController(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/internal/logging/UiEventLogger;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/TaskStackListenerImpl;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/os/Handler;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;"
        }
    .end annotation

    .line 327
    invoke-static/range {p0 .. p5}, Lcom/android/wm/shell/onehanded/OneHandedController;->create(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/internal/logging/UiEventLogger;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)Lcom/android/wm/shell/onehanded/OneHandedController;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static providePipAppOpsListener(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PipTouchHandler;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/pip/phone/PipAppOpsListener;
    .locals 1

    .line 346
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipAppOpsListener;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getMotionHelper()Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipAppOpsListener;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PipAppOpsListener$Callback;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v0
.end method

.method static providePipMediaController(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/wm/shell/pip/PipMediaController;
    .locals 1

    .line 354
    new-instance v0, Lcom/android/wm/shell/pip/PipMediaController;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/pip/PipMediaController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method

.method static providePipSurfaceTransactionHelper(Landroid/content/Context;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;
    .locals 1

    .line 360
    new-instance v0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static providePipUiEventLogger(Lcom/android/internal/logging/UiEventLogger;Landroid/content/pm/PackageManager;)Lcom/android/wm/shell/pip/PipUiEventLogger;
    .locals 1

    .line 367
    new-instance v0, Lcom/android/wm/shell/pip/PipUiEventLogger;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/pip/PipUiEventLogger;-><init>(Lcom/android/internal/logging/UiEventLogger;Landroid/content/pm/PackageManager;)V

    return-object v0
.end method

.method static provideRemoteTransitions(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/transition/RemoteTransitions;
    .locals 0

    .line 377
    invoke-static {p0}, Lcom/android/wm/shell/transition/Transitions;->asRemoteTransitions(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/transition/RemoteTransitions;

    move-result-object p0

    return-object p0
.end method

.method static provideRootTaskDisplayAreaOrganizer(Lcom/android/wm/shell/common/ShellExecutor;Landroid/content/Context;)Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;
    .locals 1

    .line 396
    new-instance v0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    return-object v0
.end method

.method public static provideShellAnimationExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 3

    .line 153
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "wmshell.anim"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 155
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 156
    new-instance v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v1
.end method

.method static provideShellCommandHandler(Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairsController;",
            ">;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;"
        }
    .end annotation

    .line 504
    invoke-static/range {p0 .. p7}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->create(Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/ShellCommandHandler;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static provideShellInit(Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/FullscreenTaskListener;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/ShellInit;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairsController;",
            ">;",
            "Lcom/android/wm/shell/FullscreenTaskListener;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")",
            "Lcom/android/wm/shell/ShellInit;"
        }
    .end annotation

    .line 478
    invoke-static/range {p0 .. p8}, Lcom/android/wm/shell/ShellInitImpl;->create(Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/FullscreenTaskListener;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/ShellInit;

    move-result-object p0

    return-object p0
.end method

.method public static provideShellMainExecutor(Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    return-object p1
.end method

.method public static provideShellMainExecutorSfVsyncAnimationHandler(Lcom/android/wm/shell/common/ShellExecutor;)Landroid/animation/AnimationHandler;
    .locals 2

    .line 170
    :try_start_0
    new-instance v0, Landroid/animation/AnimationHandler;

    invoke-direct {v0}, Landroid/animation/AnimationHandler;-><init>()V

    .line 171
    new-instance v1, Lcom/android/systemui/wmshell/WMShellBaseModule-$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/wmshell/WMShellBaseModule-$$ExternalSyntheticLambda0;-><init>(Landroid/animation/AnimationHandler;)V

    invoke-interface {p0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 179
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to initialize SfVsync animation handler in 1s"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static provideShellMainHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    return-object p0
.end method

.method static provideShellTaskOrganizer(Lcom/android/wm/shell/common/ShellExecutor;Landroid/content/Context;Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;)Lcom/android/wm/shell/ShellTaskOrganizer;
    .locals 1

    .line 205
    new-instance v0, Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Landroid/content/Context;Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;)V

    return-object v0
.end method

.method static provideSizeCompatUIController(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/SyncTransactionQueue;)Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;
    .locals 1

    .line 213
    new-instance v0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    return-object v0
.end method

.method static provideSplitScreen(Ljava/util/Optional;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;"
        }
    .end annotation

    .line 403
    sget-object v0, Lcom/android/systemui/wmshell/WMShellBaseModule-$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/systemui/wmshell/WMShellBaseModule-$$ExternalSyntheticLambda6;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static provideSplitScreenController(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/content/Context;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;"
        }
    .end annotation

    .line 413
    invoke-static {p2}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/content/Context;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 417
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static provideSyncTransactionQueue(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/SyncTransactionQueue;
    .locals 1

    .line 220
    new-instance v0, Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;-><init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v0
.end method

.method public static provideSysUIMainExecutor(Landroid/os/Handler;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 1

    .line 113
    new-instance v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method static provideSystemWindows(Lcom/android/wm/shell/common/DisplayController;Landroid/view/IWindowManager;)Lcom/android/wm/shell/common/SystemWindows;
    .locals 1

    .line 227
    new-instance v0, Lcom/android/wm/shell/common/SystemWindows;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/common/SystemWindows;-><init>(Lcom/android/wm/shell/common/DisplayController;Landroid/view/IWindowManager;)V

    return-object v0
.end method

.method static provideTaskViewFactory(Lcom/android/wm/shell/TaskViewFactoryController;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/TaskViewFactoryController;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/TaskViewFactory;",
            ">;"
        }
    .end annotation

    .line 452
    invoke-virtual {p0}, Lcom/android/wm/shell/TaskViewFactoryController;->asTaskViewFactory()Lcom/android/wm/shell/TaskViewFactory;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static provideTaskViewFactoryController(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/TaskViewFactoryController;
    .locals 1

    .line 460
    new-instance v0, Lcom/android/wm/shell/TaskViewFactoryController;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/TaskViewFactoryController;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v0
.end method

.method static provideTransactionPool()Lcom/android/wm/shell/common/TransactionPool;
    .locals 1

    .line 241
    new-instance v0, Lcom/android/wm/shell/common/TransactionPool;

    invoke-direct {v0}, Lcom/android/wm/shell/common/TransactionPool;-><init>()V

    return-object v0
.end method

.method static provideTransitions(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/transition/Transitions;
    .locals 1

    .line 385
    new-instance v0, Lcom/android/wm/shell/transition/Transitions;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions;-><init>(Landroid/window/WindowOrganizer;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v0
.end method

.method static provideWindowManagerShellWrapper(Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/WindowManagerShellWrapper;
    .locals 1

    .line 248
    new-instance v0, Lcom/android/wm/shell/WindowManagerShellWrapper;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/WindowManagerShellWrapper;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v0
.end method

.method static providerTaskStackListenerImpl(Landroid/os/Handler;)Lcom/android/wm/shell/common/TaskStackListenerImpl;
    .locals 1

    .line 235
    new-instance v0, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/TaskStackListenerImpl;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
