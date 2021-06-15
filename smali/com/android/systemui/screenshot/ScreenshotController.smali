.class public Lcom/android/systemui/screenshot/ScreenshotController;
.super Ljava/lang/Object;
.source "ScreenshotController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/ScreenshotController$QuickShareActionReadyListener;,
        Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;,
        Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;,
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

.field private final mContext:Landroid/window/WindowContext;

.field private mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

.field private mLastScrollCaptureRequest:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/view/ScrollCaptureResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mLastScrollCaptureResponse:Landroid/view/ScrollCaptureResponse;

.field private final mLongScreenshotHolder:Lcom/android/systemui/screenshot/LongScreenshotHolder;

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

.field private mSaveInBgTask:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenshotAnimation:Landroid/animation/Animator;

.field private final mScreenshotHandler:Landroid/os/Handler;

.field private final mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

.field private mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

.field private final mScrollCaptureClient:Lcom/android/systemui/screenshot/ScrollCaptureClient;

.field private final mScrollCaptureController:Lcom/android/systemui/screenshot/ScrollCaptureController;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mWindow:Lcom/android/internal/policy/PhoneWindow;

.field private final mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$0gXOexza0oTf6j51Im5Q--IdU6c(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController;->lambda$saveScreenshot$4(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$54sFTbAngxgjWXYYND2ct4ZxJN4(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotController;->lambda$reloadAssets$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5MMvtjtknVZoyHV8XEjdX9D1aXw(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController;->lambda$showUiOnQuickShareActionReady$10(Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EEN6Qgvewc5IY3kx1tpm9U6maAA(Lcom/android/systemui/screenshot/ScreenshotController;Ljava/util/function/Consumer;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotController;->lambda$takeScreenshotPartial$0(Ljava/util/function/Consumer;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J27xRUqKDzKgy6ZqfNvk5H1jc20(Lcom/android/systemui/screenshot/ScreenshotController;Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotController;->lambda$saveScreenshotAndToast$8(Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JQgJuMCMhyNwmrjyER1gXmE3rBQ(Lcom/android/systemui/screenshot/ScreenshotController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->lambda$saveScreenshotAndToast$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$YV1KsuWI1w-bOG3wGhT9ex4oxMQ(Lcom/android/systemui/screenshot/ScreenshotController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->lambda$saveScreenshot$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$YcC7WpPqteLs0P7rf9l-bQDnVI0(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController;->showUiOnActionsReady(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aXM_0RtlXjdqOGt2U9Oa-52Cqms(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController;->showUiOnQuickShareActionReady(Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bK_kBahZy5AHnpiBo84V3IuIWmM(Lcom/android/systemui/screenshot/ScreenshotController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->lambda$getActionTransitionSupplier$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$nj1qmqF1SaIzxOdeWOSIf9qEDgw(Lcom/android/systemui/screenshot/ScreenshotController;)Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->lambda$getActionTransitionSupplier$12()Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nm_YJ4tH_0SrnMK9C6EwEupHQek(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController;->lambda$showUiOnActionsReady$9(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pIo-EcgYVCTGoWDtBJ9gT_xxCL8(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController;->logSuccessOnActionsReady(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rIeCiU97JbYAC6QS_tUuQieECYY(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/ScreenshotController;->lambda$reloadAssets$2(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 105
    const-class v0, Lcom/android/systemui/screenshot/ScreenshotController;

    invoke-static {v0}, Lcom/android/systemui/screenshot/LogConfig;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/ScreenshotSmartActions;Lcom/android/systemui/screenshot/ScreenshotNotificationsController;Lcom/android/systemui/screenshot/ScrollCaptureClient;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/screenshot/ImageExporter;Ljava/util/concurrent/Executor;Lcom/android/systemui/screenshot/ScrollCaptureController;Lcom/android/systemui/screenshot/LongScreenshotHolder;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/screenshot/ScreenshotController$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotHandler:Landroid/os/Handler;

    .line 243
    new-instance v2, Lcom/android/settingslib/applications/InterestingConfigChanges;

    const v3, -0x7fffdc7c

    invoke-direct {v2, v3}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    iput-object v2, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    move-object/from16 v3, p2

    .line 262
    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    move-object/from16 v3, p3

    .line 263
    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    move-object/from16 v3, p4

    .line 264
    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScrollCaptureClient:Lcom/android/systemui/screenshot/ScrollCaptureClient;

    move-object/from16 v3, p5

    .line 265
    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v3, p6

    .line 266
    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    move-object/from16 v3, p7

    .line 267
    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mMainExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v3, p8

    .line 268
    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScrollCaptureController:Lcom/android/systemui/screenshot/ScrollCaptureController;

    move-object/from16 v3, p9

    .line 269
    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mLongScreenshotHolder:Lcom/android/systemui/screenshot/LongScreenshotHolder;

    .line 270
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mBgExecutor:Ljava/util/concurrent/ExecutorService;

    .line 272
    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Landroid/hardware/display/DisplayManager;

    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 273
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x7f4

    const/4 v5, 0x0

    .line 274
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContext;

    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    .line 275
    const-class v4, Landroid/view/WindowManager;

    invoke-virtual {v3, v4}, Landroid/window/WindowContext;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowManager:Landroid/view/WindowManager;

    .line 277
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 280
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x7f4

    const v12, 0xe0520

    const/4 v13, -0x3

    move-object/from16 p2, v6

    move/from16 p3, v7

    move/from16 p4, v8

    move/from16 p5, v9

    move/from16 p6, v10

    move/from16 p7, v11

    move/from16 p8, v12

    move/from16 p9, v13

    invoke-direct/range {p2 .. p9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v6, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v7, "ScreenshotAnimation"

    .line 289
    invoke-virtual {v6, v7}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v7, 0x3

    .line 290
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 293
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v8, 0x20000000

    or-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 295
    new-instance v6, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v6, v3}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 296
    invoke-virtual {v6, v4, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 297
    invoke-virtual {v6, v3}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    const/16 v3, 0xd

    .line 298
    invoke-virtual {v6, v3}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    const v3, 0x106000d

    .line 299
    invoke-virtual {v6, v3}, Lcom/android/internal/policy/PhoneWindow;->setBackgroundDrawableResource(I)V

    .line 301
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    .line 302
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->reloadAssets()V

    .line 305
    new-instance v1, Landroid/media/MediaActionSound;

    invoke-direct {v1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v0, 0x0

    .line 306
    invoke-virtual {v1, v0}, Landroid/media/MediaActionSound;->load(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/ScreenshotController;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/screenshot/ScreenshotController;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->resetTimeout()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/screenshot/ScreenshotController;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->finishDismiss()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/screenshot/ScreenshotController;)Lcom/android/systemui/screenshot/ScreenshotView;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/graphics/Rect;Z)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotController;->startAnimation(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method private static aspectRatiosMatch(Landroid/graphics/Bitmap;Landroid/graphics/Insets;Landroid/graphics/Rect;)Z
    .locals 3

    .line 925
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p1, Landroid/graphics/Insets;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v0, v1

    .line 926
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v1, v2

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v1, p1

    const/4 p1, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 928
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eqz v2, :cond_1

    .line 929
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p0, v0

    int-to-float v0, v1

    div-float/2addr p0, v0

    .line 938
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v0, p2

    sub-float/2addr p0, v0

    .line 940
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

    .line 657
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 658
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 664
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method private cancelTimeout()V
    .locals 1

    .line 765
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private finishDismiss()V
    .locals 1

    .line 731
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->cancelTimeout()V

    .line 732
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->removeWindow()V

    .line 733
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotView;->reset()V

    .line 734
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    if-eqz v0, :cond_0

    .line 735
    invoke-interface {v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;->onFinish()V

    const/4 v0, 0x0

    .line 736
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

    .line 843
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    return-object v0
.end method

.method private getDefaultDisplay()Landroid/view/Display;
    .locals 1

    .line 919
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method private isUserSetupComplete()Z
    .locals 2

    .line 887
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    invoke-virtual {p0}, Landroid/window/WindowContext;->getContentResolver()Landroid/content/ContentResolver;

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

.method private synthetic lambda$getActionTransitionSupplier$11()V
    .locals 0

    .line 868
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {p0}, Landroid/app/ActivityOptions;->stopSharedElementAnimation(Landroid/view/Window;)V

    return-void
.end method

.method private synthetic lambda$getActionTransitionSupplier$12()Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;
    .locals 5

    .line 844
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotController$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotController$7;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    .line 860
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 862
    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenshotView;->getScreenshotPreview()Landroid/view/View;

    move-result-object v3

    const-string v4, "screenshot_preview_image"

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    .line 861
    invoke-static {v1, v0, v3, v2}, Landroid/app/ActivityOptions;->startSharedElementAnimation(Landroid/view/Window;Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;[Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v0

    .line 864
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v1}, Landroid/app/ExitTransitionCoordinator;->startExit()V

    .line 866
    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;

    invoke-direct {v1}, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;-><init>()V

    .line 867
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;->bundle:Landroid/os/Bundle;

    .line 868
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    iput-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;->onCancelRunnable:Ljava/lang/Runnable;

    return-object v1
.end method

.method private synthetic lambda$reloadAssets$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 430
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 435
    invoke-direct {p0, p2}, Lcom/android/systemui/screenshot/ScreenshotController;->setWindowFocusable(Z)V

    :cond_0
    return p2
.end method

.method private synthetic lambda$reloadAssets$2(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 445
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController;->dismissScreenshot(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return p1
.end method

.method private synthetic lambda$saveScreenshot$3()V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScrollCaptureClient:Lcom/android/systemui/screenshot/ScrollCaptureClient;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScrollCaptureClient;->setHostWindowToken(Landroid/os/IBinder;)V

    .line 553
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mLastScrollCaptureRequest:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 554
    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$saveScreenshot$4(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 581
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0
.end method

.method private synthetic lambda$saveScreenshotAndToast$7()V
    .locals 2

    .line 699
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    sget v0, Lcom/android/systemui/R$string;->screenshot_saved_title:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 700
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$saveScreenshotAndToast$8(Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 1

    .line 692
    iget-object v0, p2, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->uri:Landroid/net/Uri;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 693
    iget-object p1, p2, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->uri:Landroid/net/Uri;

    if-nez p1, :cond_0

    .line 694
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_NOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 695
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    sget p1, Lcom/android/systemui/R$string;->screenshot_failed_to_save_text:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    goto :goto_0

    .line 698
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 699
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$showUiOnActionsReady$9(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 2

    .line 799
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotAnimation:Landroid/animation/Animator;

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController$5;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 808
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView;->setChipIntents(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showUiOnQuickShareActionReady$10(Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;)V
    .locals 2

    .line 823
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotAnimation:Landroid/animation/Animator;

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController$6;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 832
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;->quickShareAction:Landroid/app/Notification$Action;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView;->addQuickShareChip(Landroid/app/Notification$Action;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$takeScreenshotPartial$0(Ljava/util/function/Consumer;Landroid/graphics/Rect;)V
    .locals 0

    .line 353
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotController;->takeScreenshotInternal(Ljava/util/function/Consumer;Landroid/graphics/Rect;)V

    return-void
.end method

.method private logSuccessOnActionsReady(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 1

    .line 877
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->uri:Landroid/net/Uri;

    if-nez p1, :cond_0

    .line 878
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_NOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 879
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    sget p1, Lcom/android/systemui/R$string;->screenshot_failed_to_save_text:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    goto :goto_0

    .line 882
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :goto_0
    return-void
.end method

.method private reloadAssets()V
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->clearContentView()V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    invoke-virtual {v0}, Landroid/window/WindowContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 410
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 411
    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    .line 410
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 414
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    .line 415
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->global_screenshot:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 416
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotController$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/ScreenshotController$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/screenshot/ScreenshotView;->init(Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/screenshot/ScreenshotView$ScreenshotViewCallback;)V

    .line 429
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 454
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method private resetTimeout()V
    .locals 3

    .line 769
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->cancelTimeout()V

    .line 771
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    const-string v1, "accessibility"

    .line 772
    invoke-virtual {v0, v1}, Landroid/window/WindowContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/16 v1, 0x1770

    const/4 v2, 0x4

    .line 773
    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v0

    int-to-long v0, v0

    .line 777
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    .line 778
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 777
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

    .line 502
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;-><init>(I)V

    .line 505
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    .line 506
    invoke-virtual {v1}, Landroid/window/WindowContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->screenshot_saving_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 505
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    invoke-virtual {v1}, Landroid/window/WindowContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->reloadAssets()V

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 519
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotView;->isDismissing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 520
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REENTERED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 526
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotView;->reset()V

    .line 529
    :cond_3
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 531
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->isUserSetupComplete()Z

    move-result p1

    if-nez p1, :cond_4

    .line 532
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotController;->TAG:Ljava/lang/String;

    const-string p3, "User setup not complete, displaying toast only"

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-direct {p0, p2}, Lcom/android/systemui/screenshot/ScreenshotController;->saveScreenshotAndToast(Ljava/util/function/Consumer;)V

    return-void

    .line 540
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 541
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 543
    new-instance p1, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    invoke-direct {p0, p2, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotController;->saveScreenshotInWorkerThread(Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;Lcom/android/systemui/screenshot/ScreenshotController$QuickShareActionReadyListener;)V

    const/4 p1, 0x1

    .line 547
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController;->setWindowFocusable(Z)V

    .line 551
    new-instance p1, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController;->withWindowAttached(Ljava/lang/Runnable;)V

    .line 561
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->attachWindow()V

    .line 562
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/screenshot/ScreenshotController$3;

    invoke-direct {p2, p0, p3, p5}, Lcom/android/systemui/screenshot/ScreenshotController$3;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/graphics/Rect;Z)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 574
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2, p4}, Lcom/android/systemui/screenshot/ScreenshotView;->setScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Insets;)V

    .line 578
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController;->setContentView(Landroid/view/View;)V

    .line 580
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 582
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

    .line 684
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 686
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Ljava/util/function/Consumer;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/screenshot/ScreenshotController;->saveScreenshotInWorkerThread(Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;Lcom/android/systemui/screenshot/ScreenshotController$QuickShareActionReadyListener;)V

    return-void
.end method

.method private saveScreenshotInWorkerThread(Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;Lcom/android/systemui/screenshot/ScreenshotController$QuickShareActionReadyListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;",
            "Lcom/android/systemui/screenshot/ScreenshotController$QuickShareActionReadyListener;",
            ")V"
        }
    .end annotation

    .line 748
    new-instance v4, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    invoke-direct {v4}, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;-><init>()V

    .line 749
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    iput-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 750
    iput-object p1, v4, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->finisher:Ljava/util/function/Consumer;

    .line 751
    iput-object p2, v4, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->mActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;

    .line 752
    iput-object p3, v4, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->mQuickShareActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$QuickShareActionReadyListener;

    .line 754
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSaveInBgTask:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    if-eqz p1, :cond_0

    .line 756
    new-instance p2, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->setActionsReadyListener(Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;)V

    .line 759
    :cond_0
    new-instance p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    .line 760
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->getActionTransitionSupplier()Ljava/util/function/Supplier;

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/android/systemui/screenshot/ImageExporter;Lcom/android/systemui/screenshot/ScreenshotSmartActions;Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;Ljava/util/function/Supplier;)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSaveInBgTask:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 761
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setContentView(Landroid/view/View;)V
    .locals 0

    .line 653
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private setWindowFocusable(Z)V
    .locals 2

    .line 900
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz p1, :cond_0

    and-int/lit8 p1, v1, -0x9

    .line 902
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_0
    or-int/lit8 p1, v1, 0x8

    .line 904
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 906
    :goto_0
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-ne p1, v1, :cond_1

    return-void

    .line 912
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 913
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 914
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private showUiOnActionsReady(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 2

    .line 790
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController;->logSuccessOnActionsReady(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    .line 795
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->resetTimeout()V

    .line 797
    iget-object v0, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private showUiOnQuickShareActionReady(Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;)V
    .locals 2

    .line 821
    iget-object v0, p1, Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;->quickShareAction:Landroid/app/Notification$Action;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private startAnimation(Landroid/graphics/Rect;Z)V
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 715
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotView;->createScreenshotDropInAnimation(Landroid/graphics/Rect;Z)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotAnimation:Landroid/animation/Animator;

    .line 718
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/MediaActionSound;->play(I)V

    .line 723
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

    .line 462
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 463
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 464
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 467
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 468
    invoke-virtual {v2}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v4

    .line 469
    instance-of v5, v4, Landroid/view/DisplayAddress$Physical;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 470
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

    .line 473
    :cond_0
    check-cast v4, Landroid/view/DisplayAddress$Physical;

    .line 476
    invoke-virtual {v4}, Landroid/view/DisplayAddress$Physical;->getPhysicalDisplayId()J

    move-result-wide v4

    .line 475
    invoke-static {v4, v5}, Landroid/view/SurfaceControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v2

    .line 477
    new-instance v4, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    invoke-direct {v4, v2}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    .line 479
    invoke-virtual {v4, p2}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    .line 480
    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setSize(II)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object p2

    .line 481
    invoke-virtual {p2}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$DisplayCaptureArgs;

    move-result-object p2

    .line 483
    invoke-static {p2}, Landroid/view/SurfaceControl;->captureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 484
    :cond_1
    invoke-virtual {p2}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    :goto_1
    if-nez v1, :cond_3

    .line 488
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotController;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "takeScreenshotInternal: Screenshot bitmap was null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    sget p2, Lcom/android/systemui/R$string;->screenshot_failed_to_capture_text:I

    invoke-virtual {p1, p2}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    .line 491
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    if-eqz p0, :cond_2

    .line 492
    invoke-interface {p0}, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;->reportError()V

    :cond_2
    return-void

    .line 497
    :cond_3
    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/ScreenshotController;->saveScreenshot(Landroid/graphics/Bitmap;Ljava/util/function/Consumer;Landroid/graphics/Rect;Landroid/graphics/Insets;Z)V

    return-void
.end method

.method private withWindowAttached(Ljava/lang/Runnable;)V
    .locals 3

    .line 633
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 634
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 637
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotController$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/screenshot/ScreenshotController$4;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method dismissScreenshot(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotView;->isDismissing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 371
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->cancelTimeout()V

    if-eqz p1, :cond_1

    .line 373
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->finishDismiss()V

    goto :goto_0

    .line 375
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->animateDismissal()V

    .line 378
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mLastScrollCaptureResponse:Landroid/view/ScrollCaptureResponse;

    if-eqz p1, :cond_2

    .line 379
    invoke-virtual {p1}, Landroid/view/ScrollCaptureResponse;->close()V

    const/4 p1, 0x0

    .line 380
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mLastScrollCaptureResponse:Landroid/view/ScrollCaptureResponse;

    :cond_2
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

    .line 324
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotController;->TAG:Ljava/lang/String;

    const-string p2, "Got null bitmap from screenshot message"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    sget p1, Lcom/android/systemui/R$string;->screenshot_failed_to_capture_text:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    .line 327
    invoke-interface {p8}, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;->reportError()V

    return-void

    .line 332
    :cond_0
    invoke-static {p1, p3, p2}, Lcom/android/systemui/screenshot/ScreenshotController;->aspectRatiosMatch(Landroid/graphics/Bitmap;Landroid/graphics/Insets;Landroid/graphics/Rect;)Z

    move-result p4

    const/4 p5, 0x0

    if-nez p4, :cond_1

    const/4 p3, 0x1

    .line 334
    sget-object p4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 335
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

    .line 337
    :goto_0
    iput-object p8, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p7

    move-object v4, p2

    .line 338
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/screenshot/ScreenshotController;->saveScreenshot(Landroid/graphics/Bitmap;Ljava/util/function/Consumer;Landroid/graphics/Rect;Landroid/graphics/Insets;Z)V

    return-void
.end method

.method isPendingSharedTransition()Z
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->isPendingSharedTransition()Z

    move-result p0

    return p0
.end method

.method releaseContext()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    invoke-virtual {v0}, Landroid/window/WindowContext;->release()V

    .line 393
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 394
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mBgExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method removeWindow()V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
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

    .line 310
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    .line 311
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 312
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 313
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

    .line 345
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotView;->reset()V

    .line 346
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    .line 348
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->attachWindow()V

    .line 349
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p2, v0}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;)V

    .line 350
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    .line 352
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Ljava/util/function/Consumer;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/screenshot/ScreenshotView;->takePartialScreenshot(Ljava/util/function/Consumer;)V

    return-void
.end method
