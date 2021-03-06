.class public Lcom/android/wm/shell/pip/phone/PipController;
.super Ljava/lang/Object;
.source "PipController.java"

# interfaces
.implements Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/phone/PipController$PipImpl;,
        Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedStackListener;
    }
.end annotation


# instance fields
.field private mAppOpsListener:Lcom/android/wm/shell/pip/phone/PipAppOpsListener;

.field private mContext:Landroid/content/Context;

.field private mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

.field protected final mImpl:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

.field private mIsInFixedRotation:Z

.field protected mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

.field protected mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

.field private mPinnedStackAnimationRecentsCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mPinnedStackListener:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListener;

.field private mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

.field private mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

.field private mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

.field protected mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field private mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

.field private final mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

.field private final mTmpInsetBounds:Landroid/graphics/Rect;

.field private mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

.field private mWindowManagerShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;


# direct methods
.method public static synthetic $r8$lambda$4cZjINhzxqZ4LZbkdhRNqTTRjV0(Lcom/android/wm/shell/pip/phone/PipController;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/phone/PipController;->lambda$new$3(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9aD8V9uVSoC-eH4MKUZHKtufZpg(Lcom/android/wm/shell/pip/phone/PipController;Lcom/android/wm/shell/common/DisplayController;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->lambda$new$1(Lcom/android/wm/shell/common/DisplayController;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DxsrKog277o55XLasRsPdoDjpNo(Lcom/android/wm/shell/pip/phone/PipController;IIILandroid/window/WindowContainerTransaction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/pip/phone/PipController;->lambda$new$0(IIILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XTVvN--wN4qHqMQBnTKo55XJ-Fo(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipController;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$kxT_owbXGyqkYNLhvIxV5Q5_wvg(Lcom/android/wm/shell/pip/phone/PipController;Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->lambda$onDisplayChanged$4(Lcom/android/wm/shell/common/DisplayLayout;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/phone/PipAppOpsListener;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/phone/PipTouchHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/WindowManagerShellWrapper;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 11

    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    move-object/from16 v3, p13

    const-string v4, "Failed to register pinned stack listener"

    const-string v5, "PipController"

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v6, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;-><init>(Lcom/android/wm/shell/pip/phone/PipController;Lcom/android/wm/shell/pip/phone/PipController$1;)V

    iput-object v6, v1, Lcom/android/wm/shell/pip/phone/PipController;->mImpl:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    .line 89
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v1, Lcom/android/wm/shell/pip/phone/PipController;->mTmpInsetBounds:Landroid/graphics/Rect;

    .line 96
    new-instance v6, Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedStackListener;

    invoke-direct {v6, p0, v7}, Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedStackListener;-><init>(Lcom/android/wm/shell/pip/phone/PipController;Lcom/android/wm/shell/pip/phone/PipController$1;)V

    iput-object v6, v1, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedStackListener:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListener;

    .line 102
    new-instance v6, Lcom/android/wm/shell/pip/phone/PipController-$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/android/wm/shell/pip/phone/PipController-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    iput-object v6, v1, Lcom/android/wm/shell/pip/phone/PipController;->mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    .line 147
    new-instance v7, Lcom/android/wm/shell/pip/phone/PipController$1;

    invoke-direct {v7, p0}, Lcom/android/wm/shell/pip/phone/PipController$1;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    iput-object v7, v1, Lcom/android/wm/shell/pip/phone/PipController;->mDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    .line 257
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserManager;->getUserHandle()I

    move-result v8

    if-nez v8, :cond_2

    .line 262
    iput-object v0, v1, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    move-object/from16 v8, p11

    .line 263
    iput-object v8, v1, Lcom/android/wm/shell/pip/phone/PipController;->mWindowManagerShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;

    .line 264
    iput-object v2, v1, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object v8, p4

    .line 265
    iput-object v8, v1, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    move-object/from16 v8, p5

    .line 266
    iput-object v8, v1, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    move-object/from16 v8, p8

    .line 267
    iput-object v8, v1, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 268
    iput-object v3, v1, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v8, p6

    .line 269
    iput-object v8, v1, Lcom/android/wm/shell/pip/phone/PipController;->mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    move-object/from16 v8, p7

    .line 270
    iput-object v8, v1, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    move-object/from16 v8, p9

    .line 271
    iput-object v8, v1, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    move-object v8, p3

    .line 272
    iput-object v8, v1, Lcom/android/wm/shell/pip/phone/PipController;->mAppOpsListener:Lcom/android/wm/shell/pip/phone/PipAppOpsListener;

    move-object/from16 v8, p10

    .line 273
    iput-object v8, v1, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 274
    new-instance v8, Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v9

    const-string v10, "pip_input_consumer"

    invoke-direct {v8, v9, v10, v3}, Lcom/android/wm/shell/pip/phone/PipInputConsumer;-><init>(Landroid/view/IWindowManager;Ljava/lang/String;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v8, v1, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    .line 276
    iget-object v3, v1, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {v3, p0}, Lcom/android/wm/shell/pip/PipTransitionController;->registerPipTransitionCallback(Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;)V

    .line 277
    iget-object v3, v1, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    new-instance v8, Lcom/android/wm/shell/pip/phone/PipController-$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0, p2}, Lcom/android/wm/shell/pip/phone/PipController-$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/pip/phone/PipController;Lcom/android/wm/shell/common/DisplayController;)V

    invoke-virtual {v3, v8}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->registerOnDisplayIdChangeCallback(Ljava/util/function/IntConsumer;)V

    .line 282
    iget-object v3, v1, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    new-instance v8, Lcom/android/wm/shell/pip/phone/PipController-$$ExternalSyntheticLambda4;

    invoke-direct {v8, p0}, Lcom/android/wm/shell/pip/phone/PipController-$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    invoke-virtual {v3, v8}, Lcom/android/wm/shell/pip/PipBoundsState;->setOnMinimalSizeChangeCallback(Ljava/lang/Runnable;)V

    .line 289
    iget-object v3, v1, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    new-instance v8, Lcom/android/wm/shell/pip/phone/PipController-$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/android/wm/shell/pip/phone/PipController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    invoke-virtual {v3, v8}, Lcom/android/wm/shell/pip/PipBoundsState;->setOnShelfVisibilityChangeCallback(Lcom/android/internal/util/function/TriConsumer;)V

    .line 299
    iget-object v3, v1, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    if-eqz v3, :cond_0

    .line 301
    iget-object v8, v1, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/android/wm/shell/pip/phone/PipController-$$ExternalSyntheticLambda2;

    invoke-direct {v9, v3}, Lcom/android/wm/shell/pip/phone/PipController-$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V

    invoke-virtual {v8, v9}, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->setInputListener(Lcom/android/wm/shell/pip/phone/PipInputConsumer$InputListener;)V

    .line 302
    iget-object v3, v1, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    iget-object v8, v1, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/android/wm/shell/pip/phone/PipController-$$ExternalSyntheticLambda3;

    invoke-direct {v9, v8}, Lcom/android/wm/shell/pip/phone/PipController-$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V

    invoke-virtual {v3, v9}, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->setRegistrationListener(Lcom/android/wm/shell/pip/phone/PipInputConsumer$RegistrationListener;)V

    .line 304
    :cond_0
    invoke-virtual {p2, v6}, Lcom/android/wm/shell/common/DisplayController;->addDisplayChangingController(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V

    .line 305
    invoke-virtual {p2, v7}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 309
    iget-object v2, v1, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/pip/PipBoundsState;->setDisplayId(I)V

    .line 310
    iget-object v2, v1, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    new-instance v3, Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-direct {v3, p1, v6}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/pip/PipBoundsState;->setDisplayLayout(Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 313
    :try_start_0
    iget-object v0, v1, Lcom/android/wm/shell/pip/phone/PipController;->mWindowManagerShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;

    iget-object v2, v1, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedStackListener:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListener;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/WindowManagerShellWrapper;->addPinnedStackListener(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 315
    invoke-static {v5, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 320
    invoke-interface {v0, v2, v3}, Landroid/app/IActivityTaskManager;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, v1, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->registerInputConsumer()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 327
    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    :cond_1
    :goto_1
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipController$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipController$2;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    move-object/from16 v1, p12

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    return-void

    .line 259
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Non-primary Pip component not currently supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1000(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/phone/PipInputConsumer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/wm/shell/pip/phone/PipController;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/wm/shell/pip/phone/PipController;Ljava/io/PrintWriter;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/wm/shell/pip/phone/PipController;Landroid/content/ComponentName;Landroid/graphics/Rect;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->stopSwipePipToHome(Landroid/content/ComponentName;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/wm/shell/pip/phone/PipController;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;II)Landroid/graphics/Rect;
    .locals 0

    .line 73
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/pip/phone/PipController;->startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/wm/shell/pip/phone/PipController;Ljava/util/function/Consumer;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->setPipExclusionBoundsChangeListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/wm/shell/pip/phone/PipController;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->setPinnedStackAnimationType(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/wm/shell/pip/phone/PipController;Ljava/util/function/Consumer;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->setPinnedStackAnimationListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/wm/shell/pip/phone/PipController;ZI)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->setShelfHeight(ZI)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipController;->registerSessionListenerForCurrentUser()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/wm/shell/pip/phone/PipController;ZI)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->onSystemUiStateChanged(ZI)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/wm/shell/pip/phone/PipController;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsInFixedRotation:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipController;->onOverlayChanged()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipController;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/wm/shell/pip/phone/PipController;Landroid/content/res/Configuration;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipBoundsState;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/common/DisplayController;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/wm/shell/pip/phone/PipController;Lcom/android/wm/shell/common/DisplayLayout;Z)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/phone/PipTouchHandler;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/wm/shell/pip/phone/PipController;Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 73
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipMediaController;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/phone/PipAppOpsListener;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mAppOpsListener:Lcom/android/wm/shell/pip/phone/PipAppOpsListener;

    return-object p0
.end method

.method public static create(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/phone/PipAppOpsListener;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/phone/PipTouchHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/WindowManagerShellWrapper;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/pip/Pip;
    .locals 15

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PipController"

    const-string v1, "Device doesn\'t support Pip feature"

    .line 231
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 235
    :cond_0
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipController;

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v3, p1

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

    invoke-direct/range {v1 .. v14}, Lcom/android/wm/shell/pip/phone/PipController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/phone/PipAppOpsListener;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/phone/PipTouchHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/WindowManagerShellWrapper;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/common/ShellExecutor;)V

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mImpl:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    return-object v0
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "PipController"

    .line 622
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    const-string v1, "  "

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/pip/PipBoundsState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 628
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$0(IIILandroid/window/WindowContainerTransaction;)V
    .locals 11

    .line 104
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isDeferringEnterPipAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->getCurrentOrAnimatingBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 118
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTmpInsetBounds:Landroid/graphics/Rect;

    move-object v1, p0

    move-object v3, v0

    move v6, p1

    move v7, p2

    move v8, p3

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayRotationChanged(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/window/WindowContainerTransaction;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 123
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget-object p3, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTmpInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->adjustBoundsForRotation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 131
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsInFixedRotation:Z

    if-nez p1, :cond_1

    .line 135
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2}, Lcom/android/wm/shell/pip/PipBoundsState;->setShelfVisibility(ZIZ)V

    .line 137
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1, p2, p2}, Lcom/android/wm/shell/pip/PipBoundsState;->setImeVisibility(ZI)V

    .line 138
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p1, p2, p2}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onShelfVisibilityChanged(ZI)V

    .line 139
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p1, p2, p2}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onImeVisibilityChanged(ZI)V

    :cond_1
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, v0

    move-object v10, p4

    .line 142
    invoke-direct/range {v5 .. v10}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    :cond_2
    return-void

    .line 107
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayRotationChangedNotInPip(Landroid/content/Context;I)V

    .line 109
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getNormalBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/wm/shell/common/DisplayController;I)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/pip/PipBoundsState;->setDisplayId(I)V

    .line 279
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;Z)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 285
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private synthetic lambda$new$3(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 6

    .line 291
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onShelfVisibilityChanged(ZI)V

    .line 292
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onDisplayChanged$4(Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 7

    .line 382
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->setDisplayLayout(Lcom/android/wm/shell/common/DisplayLayout;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 383
    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 366
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->onConfigurationChanged(Landroid/content/Context;)V

    .line 367
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onConfigurationChanged()V

    .line 368
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->onConfigurationChanged()V

    return-void
.end method

.method private onDensityOrFontScaleChanged()V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onDensityOrFontScaleChanged(Landroid/content/Context;)V

    return-void
.end method

.method private onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;Z)V
    .locals 8

    .line 381
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipController-$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/pip/phone/PipController-$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/pip/phone/PipController;Lcom/android/wm/shell/common/DisplayLayout;)V

    if-eqz p2, :cond_0

    .line 391
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getSnapAlgorithm()Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    move-result-object v1

    .line 392
    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 393
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 394
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 395
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getStashedState()I

    move-result v2

    .line 393
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;I)F

    move-result v4

    .line 397
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 401
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v3

    .line 403
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 404
    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->getStashedState()I

    move-result v5

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 405
    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->getStashOffset()I

    move-result v6

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 406
    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v7

    move-object v2, p1

    .line 403
    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;FIILandroid/graphics/Rect;)V

    .line 408
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getMotionHelper()Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 410
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private onDisplayRotationChanged(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/window/WindowContainerTransaction;)Z
    .locals 13

    move-object v0, p0

    move-object v1, p2

    move/from16 v2, p7

    .line 581
    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayId()I

    move-result v3

    const/4 v4, 0x0

    move/from16 v5, p5

    if-ne v5, v3, :cond_2

    move/from16 v3, p6

    if-ne v3, v2, :cond_0

    goto :goto_0

    .line 588
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    const/4 v5, 0x2

    .line 589
    invoke-interface {v3, v5, v4}, Landroid/app/IActivityTaskManager;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    return v4

    .line 595
    :cond_1
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {v5}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getSnapAlgorithm()Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    move-result-object v6

    .line 598
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v7, p3

    invoke-direct {v5, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 599
    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 600
    invoke-virtual {v7, v5}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 601
    invoke-virtual {v8}, Lcom/android/wm/shell/pip/PipBoundsState;->getStashedState()I

    move-result v8

    .line 599
    invoke-virtual {v6, v5, v7, v8}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;I)F

    move-result v9

    .line 604
    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v7}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Lcom/android/wm/shell/common/DisplayLayout;->rotateTo(Landroid/content/res/Resources;I)V

    .line 608
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {v2, v5, v4}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v8

    .line 610
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 611
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getStashedState()I

    move-result v10

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getStashOffset()I

    move-result v11

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 612
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v12

    move-object v7, v5

    .line 610
    invoke-virtual/range {v6 .. v12}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;FIILandroid/graphics/Rect;)V

    .line 614
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    move-object/from16 v2, p4

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    .line 615
    invoke-virtual {p2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 616
    iget-object v0, v3, Landroid/app/ActivityTaskManager$RootTaskInfo;->token:Landroid/window/WindowContainerToken;

    move-object/from16 v2, p8

    invoke-virtual {v2, v0, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "PipController"

    const-string v2, "Failed to get RootTaskInfo for pinned task"

    .line 592
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return v4
.end method

.method private onDisplayRotationChangedNotInPip(Landroid/content/Context;I)V
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/common/DisplayLayout;->rotateTo(Landroid/content/res/Resources;I)V

    return-void
.end method

.method private onOverlayChanged()V
    .locals 3

    .line 376
    new-instance v0, Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;Z)V

    return-void
.end method

.method private onPipTransitionFinishedOrCanceled(I)V
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->setTouchEnabled(Z)V

    .line 534
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onPinnedStackAnimationEnded(I)V

    .line 535
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->onPinnedStackAnimationEnded()V

    return-void
.end method

.method private onSystemUiStateChanged(ZI)V
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onSystemUiStateChanged(Z)V

    return-void
.end method

.method private registerSessionListenerForCurrentUser()V
    .locals 0

    .line 415
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipMediaController;->registerSessionListenerForCurrentUser()V

    return-void
.end method

.method private setPinnedStackAnimationListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 471
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedStackAnimationRecentsCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method private setPinnedStackAnimationType(I)V
    .locals 0

    .line 467
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->setOneShotAnimationType(I)V

    return-void
.end method

.method private setPipExclusionBoundsChangeListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 493
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->setPipExclusionBoundsChangeListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private setShelfHeight(ZI)V
    .locals 0

    .line 458
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->setShelfHeightLocked(ZI)V

    return-void
.end method

.method private setShelfHeightLocked(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 463
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/PipBoundsState;->setShelfVisibility(ZI)V

    return-void
.end method

.method private startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;II)Landroid/graphics/Rect;
    .locals 1

    if-lez p5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 477
    :goto_0
    invoke-direct {p0, v0, p5}, Lcom/android/wm/shell/pip/phone/PipController;->setShelfHeightLocked(ZI)V

    .line 478
    iget-object p5, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p5, p4}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayRotationChangedNotInPip(Landroid/content/Context;I)V

    .line 479
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private stopSwipePipToHome(Landroid/content/ComponentName;Landroid/graphics/Rect;)V
    .locals 0

    .line 484
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->stopSwipePipToHome(Landroid/content/ComponentName;Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V
    .locals 7

    .line 543
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 544
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->rotation()I

    move-result p1

    .line 546
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTmpInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    .line 547
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getNormalBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipBoundsState;->setNormalBounds(Landroid/graphics/Rect;)V

    .line 548
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getDefaultBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    move-object v1, v6

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onMovementBoundsChanged(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    .line 555
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p2, v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResizeForMenu(Landroid/graphics/Rect;)V

    .line 556
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTmpInsetBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getNormalBounds()Landroid/graphics/Rect;

    move-result-object v2

    move-object v3, v6

    move v4, p3

    move v5, p4

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V

    return-void
.end method


# virtual methods
.method public hidePipMenu(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 437
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPipTransitionCanceled(I)V
    .locals 0

    .line 528
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->onPipTransitionFinishedOrCanceled(I)V

    return-void
.end method

.method public onPipTransitionFinished(I)V
    .locals 0

    .line 523
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->onPipTransitionFinishedOrCanceled(I)V

    return-void
.end method

.method public onPipTransitionStarted(ILandroid/graphics/Rect;)V
    .locals 0

    .line 498
    invoke-static {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 500
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip/phone/PipController;->saveReentryState(Landroid/graphics/Rect;)V

    .line 503
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->setTouchEnabled(Z)V

    .line 504
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedStackAnimationRecentsCallback:Ljava/util/function/Consumer;

    if-eqz p0, :cond_1

    .line 505
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public saveReentryState(Landroid/graphics/Rect;)V
    .locals 3

    .line 511
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getSnapFraction(Landroid/graphics/Rect;)F

    move-result p1

    .line 512
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->hasUserResizedPip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getUserResizeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 514
    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    .line 515
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0, v1, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->saveReentryState(Landroid/util/Size;F)V

    goto :goto_0

    .line 517
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->saveReentryState(Landroid/util/Size;F)V

    :goto_0
    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 0

    .line 444
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->showPictureInPictureMenu()V

    return-void
.end method
