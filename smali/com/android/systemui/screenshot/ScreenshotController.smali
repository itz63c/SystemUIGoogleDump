.class public Lcom/android/systemui/screenshot/ScreenshotController;
.super Ljava/lang/Object;
.source "ScreenshotController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;,
        Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;,
        Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mBgExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mCameraSound:Landroid/media/MediaActionSound;

.field private final mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field private final mConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

.field private final mContext:Landroid/app/WindowContext;

.field private mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

.field private mSaveInBgTask:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenshotAnimation:Landroid/animation/Animator;

.field private final mScreenshotHandler:Landroid/os/Handler;

.field private final mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

.field private mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

.field private final mScrollCaptureClient:Lcom/android/systemui/screenshot/ScrollCaptureClient;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mWindow:Lcom/android/internal/policy/PhoneWindow;

.field private final mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$54sFTbAngxgjWXYYND2ct4ZxJN4(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotController;->lambda$reloadAssets$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EEN6Qgvewc5IY3kx1tpm9U6maAA(Lcom/android/systemui/screenshot/ScreenshotController;Ljava/util/function/Consumer;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotController;->lambda$takeScreenshotPartial$0(Ljava/util/function/Consumer;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YcC7WpPqteLs0P7rf9l-bQDnVI0(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController;->showUiOnActionsReady(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YfnF1LnfIftRzvAG14OOvQNWElg(Lcom/android/systemui/screenshot/ScreenshotController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->lambda$getActionTransitionSupplier$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$eNhOf8NA9zeMG4-Omo2soNT4P9I(Lcom/android/systemui/screenshot/ScreenshotController;)Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->lambda$getActionTransitionSupplier$8()Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$htxcWj3I0hNMy4PsHIe34tLSPaE(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController;->lambda$saveScreenshot$3(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jqzBuDnqa9aq1YvXLTx3fGBo_PQ(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController;->lambda$showUiOnActionsReady$6(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pIo-EcgYVCTGoWDtBJ9gT_xxCL8(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController;->logSuccessOnActionsReady(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qAkzzSSQpbHWWMpZV-A2FIARH5c(Lcom/android/systemui/screenshot/ScreenshotController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->lambda$saveScreenshotAndToast$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$rIeCiU97JbYAC6QS_tUuQieECYY(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/ScreenshotController;->lambda$reloadAssets$2(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zU0KBOmKdED0SzX_JtIw4DqfySc(Lcom/android/systemui/screenshot/ScreenshotController;Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotController;->lambda$saveScreenshotAndToast$5(Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 101
    const-class v0, Lcom/android/systemui/screenshot/ScreenshotController;

    invoke-static {v0}, Lcom/android/systemui/screenshot/LogConfig;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/ScreenshotSmartActions;Lcom/android/systemui/screenshot/ScreenshotNotificationsController;Lcom/android/systemui/screenshot/ScrollCaptureClient;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/screenshot/ImageExporter;Ljava/util/concurrent/Executor;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/screenshot/ScreenshotController$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotHandler:Landroid/os/Handler;

    .line 214
    new-instance v2, Lcom/android/settingslib/applications/InterestingConfigChanges;

    const v3, -0x7fffdc7c

    invoke-direct {v2, v3}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    iput-object v2, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    move-object/from16 v3, p2

    .line 232
    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    move-object/from16 v3, p3

    .line 233
    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    move-object/from16 v3, p4

    .line 234
    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScrollCaptureClient:Lcom/android/systemui/screenshot/ScrollCaptureClient;

    move-object/from16 v3, p5

    .line 235
    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v3, p7

    .line 236
    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    move-object/from16 v3, p8

    .line 237
    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 238
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mBgExecutor:Ljava/util/concurrent/ExecutorService;

    .line 240
    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Landroid/hardware/display/DisplayManager;

    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 241
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x7f4

    const/4 v5, 0x0

    .line 242
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/WindowContext;

    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/app/WindowContext;

    .line 243
    const-class v4, Landroid/view/WindowManager;

    invoke-virtual {v3, v4}, Landroid/app/WindowContext;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowManager:Landroid/view/WindowManager;

    .line 245
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v6, p6

    .line 246
    iput-object v6, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 249
    new-instance v14, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x7f4

    const v12, 0xe0520

    const/4 v13, -0x3

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v14, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v6, "ScreenshotAnimation"

    .line 258
    invoke-virtual {v14, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v6, 0x3

    .line 259
    iput v6, v14, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 262
    iget v6, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v7, 0x20000000

    or-int/2addr v6, v7

    iput v6, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 264
    new-instance v6, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v6, v3}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 265
    invoke-virtual {v6, v4, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 266
    invoke-virtual {v6, v3}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    const/16 v3, 0xd

    .line 267
    invoke-virtual {v6, v3}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    const v3, 0x106000d

    .line 268
    invoke-virtual {v6, v3}, Lcom/android/internal/policy/PhoneWindow;->setBackgroundDrawableResource(I)V

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    .line 271
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->reloadAssets()V

    .line 274
    new-instance v1, Landroid/media/MediaActionSound;

    invoke-direct {v1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v0, 0x0

    .line 275
    invoke-virtual {v1, v0}, Landroid/media/MediaActionSound;->load(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/ScreenshotController;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/screenshot/ScreenshotController;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->resetTimeout()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/screenshot/ScreenshotController;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->finishDismiss()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/screenshot/ScreenshotController;)Lcom/android/systemui/screenshot/ScreenshotView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/graphics/Rect;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotController;->startAnimation(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method private static aspectRatiosMatch(Landroid/graphics/Bitmap;Landroid/graphics/Insets;Landroid/graphics/Rect;)Z
    .locals 3

    .line 818
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p1, Landroid/graphics/Insets;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v0, v1

    .line 819
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v1, v2

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v1, p1

    const/4 p1, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 821
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eqz v2, :cond_1

    .line 822
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p0, v0

    int-to-float v0, v1

    div-float/2addr p0, v0

    .line 831
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v0, p2

    sub-float/2addr p0, v0

    .line 833
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p2, 0x3dcccccd    # 0.1f

    cmpg-float p0, p0, p2

    if-gez p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    :goto_0
    return p1
.end method

.method private attachWindow()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 561
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 567
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method private cancelTimeout()V
    .locals 1

    .line 682
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private finishDismiss()V
    .locals 1

    .line 651
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->cancelTimeout()V

    .line 652
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->removeWindow()V

    .line 653
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotView;->reset()V

    .line 654
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    if-eqz v0, :cond_0

    .line 655
    invoke-interface {v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;->onFinish()V

    const/4 v0, 0x0

    .line 656
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    :cond_0
    return-void
.end method

.method private getActionTransitionSupplier()Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;",
            ">;"
        }
    .end annotation

    .line 736
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotController-$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotController-$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    return-object v0
.end method

.method private getDefaultDisplay()Landroid/view/Display;
    .locals 1

    .line 812
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method private isUserSetupComplete()Z
    .locals 2

    .line 780
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/app/WindowContext;

    invoke-virtual {p0}, Landroid/app/WindowContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private synthetic lambda$getActionTransitionSupplier$7()V
    .locals 0

    .line 761
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {p0}, Landroid/app/ActivityOptions;->stopSharedElementAnimation(Landroid/view/Window;)V

    return-void
.end method

.method private synthetic lambda$getActionTransitionSupplier$8()Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;
    .locals 5

    .line 737
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotController$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotController$7;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    .line 753
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 755
    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenshotView;->getScreenshotPreview()Landroid/view/View;

    move-result-object v3

    const-string v4, "screenshot_preview_image"

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    .line 754
    invoke-static {v1, v0, v3, v2}, Landroid/app/ActivityOptions;->startSharedElementAnimation(Landroid/view/Window;Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;[Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v0

    .line 757
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v1}, Landroid/app/ExitTransitionCoordinator;->startExit()V

    .line 759
    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;

    invoke-direct {v1}, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;-><init>()V

    .line 760
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;->bundle:Landroid/os/Bundle;

    .line 761
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotController-$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotController-$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    iput-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;->onCancelRunnable:Ljava/lang/Runnable;

    return-object v1
.end method

.method private synthetic lambda$reloadAssets$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 393
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 398
    invoke-direct {p0, p2}, Lcom/android/systemui/screenshot/ScreenshotController;->setWindowFocusable(Z)V

    :cond_0
    return p2
.end method

.method private synthetic lambda$reloadAssets$2(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 408
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController;->dismissScreenshot(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return p1
.end method

.method private static synthetic lambda$saveScreenshot$3(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 531
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0
.end method

.method private synthetic lambda$saveScreenshotAndToast$4()V
    .locals 2

    .line 620
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/app/WindowContext;

    sget v0, Lcom/android/systemui/R$string;->screenshot_saved_title:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 621
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$saveScreenshotAndToast$5(Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 1

    .line 613
    iget-object v0, p2, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->uri:Landroid/net/Uri;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 614
    iget-object p1, p2, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->uri:Landroid/net/Uri;

    if-nez p1, :cond_0

    .line 615
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_NOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 616
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    sget p1, Lcom/android/systemui/R$string;->screenshot_failed_to_save_text:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    goto :goto_0

    .line 619
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 620
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/screenshot/ScreenshotController-$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/ScreenshotController-$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$showUiOnActionsReady$6(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotAnimation:Landroid/animation/Animator;

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController$6;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 725
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView;->setChipIntents(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$takeScreenshotPartial$0(Ljava/util/function/Consumer;Landroid/graphics/Rect;)V
    .locals 0

    .line 321
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotController;->takeScreenshotInternal(Ljava/util/function/Consumer;Landroid/graphics/Rect;)V

    return-void
.end method

.method private logSuccessOnActionsReady(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 1

    .line 770
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->uri:Landroid/net/Uri;

    if-nez p1, :cond_0

    .line 771
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_NOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 772
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    sget p1, Lcom/android/systemui/R$string;->screenshot_failed_to_save_text:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    goto :goto_0

    .line 775
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :goto_0
    return-void
.end method

.method private reloadAssets()V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->clearContentView()V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/app/WindowContext;

    invoke-virtual {v0}, Landroid/app/WindowContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 373
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 374
    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    .line 373
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 377
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/app/WindowContext;

    .line 378
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->global_screenshot:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 379
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotController$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/ScreenshotController$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/screenshot/ScreenshotView;->init(Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/screenshot/ScreenshotView$ScreenshotViewCallback;)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/ScreenshotController-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 403
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/ScreenshotController-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 417
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method private resetTimeout()V
    .locals 3

    .line 686
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->cancelTimeout()V

    .line 688
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/app/WindowContext;

    const-string v1, "accessibility"

    .line 689
    invoke-virtual {v0, v1}, Landroid/app/WindowContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/16 v1, 0x1770

    const/4 v2, 0x4

    .line 690
    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v0

    int-to-long v0, v0

    .line 694
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    .line 695
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 694
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private saveScreenshot(Landroid/graphics/Bitmap;Ljava/util/function/Consumer;Landroid/graphics/Rect;Landroid/graphics/Insets;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Insets;",
            "Z)V"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;-><init>(I)V

    .line 468
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/app/WindowContext;

    .line 469
    invoke-virtual {v1}, Landroid/app/WindowContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->screenshot_saving_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/app/WindowContext;

    invoke-virtual {v1}, Landroid/app/WindowContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->reloadAssets()V

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 482
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotView;->isDismissing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 483
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REENTERED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotView;->reset()V

    .line 492
    :cond_3
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 494
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->isUserSetupComplete()Z

    move-result p1

    if-nez p1, :cond_4

    .line 495
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotController;->TAG:Ljava/lang/String;

    const-string p3, "User setup not complete, displaying toast only"

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-direct {p0, p2}, Lcom/android/systemui/screenshot/ScreenshotController;->saveScreenshotAndToast(Ljava/util/function/Consumer;)V

    return-void

    .line 503
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 504
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 506
    new-instance p1, Lcom/android/systemui/screenshot/ScreenshotController-$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/ScreenshotController-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/screenshot/ScreenshotController;->saveScreenshotInWorkerThread(Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;)V

    const/4 p1, 0x1

    .line 509
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController;->setWindowFocusable(Z)V

    .line 511
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->attachWindow()V

    .line 512
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/screenshot/ScreenshotController$3;

    invoke-direct {p2, p0, p3, p5}, Lcom/android/systemui/screenshot/ScreenshotController$3;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/graphics/Rect;Z)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 524
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2, p4}, Lcom/android/systemui/screenshot/ScreenshotView;->setScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Insets;)V

    .line 528
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController;->setContentView(Landroid/view/View;)V

    .line 530
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/screenshot/ScreenshotController-$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/screenshot/ScreenshotController-$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 532
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->cancelTimeout()V

    return-void
.end method

.method private saveScreenshotAndToast(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 605
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 607
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotController-$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController-$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Ljava/util/function/Consumer;)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotController;->saveScreenshotInWorkerThread(Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;)V

    return-void
.end method

.method private saveScreenshotInWorkerThread(Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;",
            ")V"
        }
    .end annotation

    .line 666
    new-instance v4, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    invoke-direct {v4}, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;-><init>()V

    .line 667
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    iput-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 668
    iput-object p1, v4, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->finisher:Ljava/util/function/Consumer;

    .line 669
    iput-object p2, v4, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->mActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;

    .line 671
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSaveInBgTask:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    if-eqz p1, :cond_0

    .line 673
    new-instance p2, Lcom/android/systemui/screenshot/ScreenshotController-$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/ScreenshotController-$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->setActionsReadyListener(Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;)V

    .line 676
    :cond_0
    new-instance p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/app/WindowContext;

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    .line 677
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->getActionTransitionSupplier()Ljava/util/function/Supplier;

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/android/systemui/screenshot/ImageExporter;Lcom/android/systemui/screenshot/ScreenshotSmartActions;Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;Ljava/util/function/Supplier;)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSaveInBgTask:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 678
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setContentView(Landroid/view/View;)V
    .locals 0

    .line 556
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private setWindowFocusable(Z)V
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz p1, :cond_0

    and-int/lit8 p1, v1, -0x9

    .line 795
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_0
    or-int/lit8 p1, v1, 0x8

    .line 797
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 799
    :goto_0
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-ne p1, v1, :cond_1

    return-void

    .line 805
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 806
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 807
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private showUiOnActionsReady(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 2

    .line 707
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController;->logSuccessOnActionsReady(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    .line 712
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->resetTimeout()V

    .line 714
    iget-object v0, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController-$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController-$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private startAnimation(Landroid/graphics/Rect;Z)V
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 635
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotView;->createScreenshotDropInAnimation(Landroid/graphics/Rect;Z)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotAnimation:Landroid/animation/Animator;

    .line 638
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/MediaActionSound;->play(I)V

    .line 643
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotAnimation:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private takeScreenshotInternal(Ljava/util/function/Consumer;Landroid/graphics/Rect;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 425
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 426
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 427
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 430
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 431
    invoke-virtual {v2}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v4

    .line 432
    instance-of v5, v4, Landroid/view/DisplayAddress$Physical;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 433
    sget-object p2, Lcom/android/systemui/screenshot/ScreenshotController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping Screenshot - Default display does not have a physical address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v1, v6

    goto :goto_1

    .line 436
    :cond_0
    check-cast v4, Landroid/view/DisplayAddress$Physical;

    .line 439
    invoke-virtual {v4}, Landroid/view/DisplayAddress$Physical;->getPhysicalDisplayId()J

    move-result-wide v4

    .line 438
    invoke-static {v4, v5}, Landroid/view/SurfaceControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v2

    .line 440
    new-instance v4, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    invoke-direct {v4, v2}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    .line 442
    invoke-virtual {v4, p2}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    .line 443
    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setSize(II)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object p2

    .line 444
    invoke-virtual {p2}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$DisplayCaptureArgs;

    move-result-object p2

    .line 446
    invoke-static {p2}, Landroid/view/SurfaceControl;->captureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 447
    :cond_1
    invoke-virtual {p2}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    :goto_1
    if-nez v1, :cond_3

    .line 451
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotController;->TAG:Ljava/lang/String;

    const-string p2, "takeScreenshotInternal: Screenshot bitmap was null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    sget p2, Lcom/android/systemui/R$string;->screenshot_failed_to_capture_text:I

    invoke-virtual {p1, p2}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    .line 454
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    if-eqz p0, :cond_2

    .line 455
    invoke-interface {p0}, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;->reportError()V

    :cond_2
    return-void

    .line 460
    :cond_3
    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/ScreenshotController;->saveScreenshot(Landroid/graphics/Bitmap;Ljava/util/function/Consumer;Landroid/graphics/Rect;Landroid/graphics/Insets;Z)V

    return-void
.end method


# virtual methods
.method dismissScreenshot(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotView;->isDismissing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 339
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->cancelTimeout()V

    if-eqz p1, :cond_1

    .line 341
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->finishDismiss()V

    goto :goto_0

    .line 343
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->animateDismissal()V

    :goto_0
    return-void
.end method

.method handleImageAsScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;IILandroid/content/ComponentName;Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Insets;",
            "II",
            "Landroid/content/ComponentName;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 293
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotController;->TAG:Ljava/lang/String;

    const-string p2, "Got null bitmap from screenshot message"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    sget p1, Lcom/android/systemui/R$string;->screenshot_failed_to_capture_text:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    .line 296
    invoke-interface {p8}, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;->reportError()V

    return-void

    .line 301
    :cond_0
    invoke-static {p1, p3, p2}, Lcom/android/systemui/screenshot/ScreenshotController;->aspectRatiosMatch(Landroid/graphics/Bitmap;Landroid/graphics/Insets;Landroid/graphics/Rect;)Z

    move-result p4

    const/4 p5, 0x0

    if-nez p4, :cond_1

    const/4 p3, 0x1

    .line 303
    sget-object p4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 304
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2, p5, p5, p6, v0}, Landroid/graphics/Rect;->set(IIII)V

    move v6, p3

    move-object v5, p4

    goto :goto_0

    :cond_1
    move-object v5, p3

    move v6, p5

    .line 306
    :goto_0
    iput-object p8, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p7

    move-object v4, p2

    .line 307
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/screenshot/ScreenshotController;->saveScreenshot(Landroid/graphics/Bitmap;Ljava/util/function/Consumer;Landroid/graphics/Rect;Landroid/graphics/Insets;Z)V

    return-void
.end method

.method isPendingSharedTransition()Z
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->isPendingSharedTransition()Z

    move-result p0

    return p0
.end method

.method releaseContext()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/app/WindowContext;

    invoke-virtual {v0}, Landroid/app/WindowContext;->release()V

    .line 356
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 357
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mBgExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method removeWindow()V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method takeScreenshotFullscreen(Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;",
            ")V"
        }
    .end annotation

    .line 279
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    .line 280
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 282
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotController;->takeScreenshotInternal(Ljava/util/function/Consumer;Landroid/graphics/Rect;)V

    return-void
.end method

.method takeScreenshotPartial(Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;",
            ")V"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotView;->reset()V

    .line 315
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    .line 317
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->attachWindow()V

    .line 318
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p2, v0}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;)V

    .line 320
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotController-$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController-$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Ljava/util/function/Consumer;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/screenshot/ScreenshotView;->takePartialScreenshot(Ljava/util/function/Consumer;)V

    return-void
.end method
