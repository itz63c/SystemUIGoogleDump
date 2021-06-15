.class public Lcom/android/systemui/ScreenDecorations;
.super Lcom/android/systemui/SystemUI;
.source "ScreenDecorations.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;,
        Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;,
        Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
    }
.end annotation


# static fields
.field private static final DEBUG_COLOR:Z

.field private static final DEBUG_DISABLE_SCREEN_DECORATIONS:Z

.field private static final DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z


# instance fields
.field mBottomLeftDot:Landroid/view/View;

.field mBottomRightDot:Landroid/view/View;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mCameraListener:Lcom/android/systemui/CameraAvailabilityListener;

.field private mCameraTransitionCallback:Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;

.field private mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

.field private mDensity:F

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

.field private mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private mHandler:Landroid/os/Handler;

.field protected mIsRegistered:Z

.field private mIsRoundedCornerMultipleRadius:Z

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field protected mOverlays:[Landroid/view/View;

.field private mPendingRotationChange:Z

.field private mRotation:I

.field protected mRoundedDefault:Landroid/graphics/Point;

.field protected mRoundedDefaultBottom:Landroid/graphics/Point;

.field protected mRoundedDefaultTop:Landroid/graphics/Point;

.field private final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field private mStatusBarHeightLandscape:I

.field private mStatusBarHeightPortrait:I

.field private final mThreadFactory:Lcom/android/systemui/util/concurrency/ThreadFactory;

.field mTopLeftDot:Landroid/view/View;

.field mTopRightDot:Landroid/view/View;

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field private final mUserSwitchIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$J7dp1dgvJmII-ORis5pXRPnmN8g(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->lambda$setupDecorations$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$_227L6eVgtfFHarBxo51NVITL_E(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->lambda$onConfigurationChanged$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$bRx4s-frKyGv-SmpobluoualBbQ(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->startOnScreenDecorationsThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$fog4MC1rA1fysXZQcsQe_LHII5s(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->lambda$setupDecorations$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$xi2zA8Q_uH2uPcJnu2KkL7NuooE(Lcom/android/systemui/ScreenDecorations;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ScreenDecorations;->lambda$onTuningChanged$3(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.disable_screen_decorations"

    const/4 v1, 0x0

    .line 115
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_DISABLE_SCREEN_DECORATIONS:Z

    const-string v0, "debug.screenshot_rounded_corners"

    .line 117
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    .line 119
    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_COLOR:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/util/concurrency/ThreadFactory;)V
    .locals 1

    .line 223
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    .line 137
    new-instance p1, Landroid/graphics/Point;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:Landroid/graphics/Point;

    .line 139
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:Landroid/graphics/Point;

    .line 141
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:Landroid/graphics/Point;

    .line 163
    new-instance p1, Lcom/android/systemui/ScreenDecorations$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/ScreenDecorations$1;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mCameraTransitionCallback:Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;

    .line 570
    new-instance p1, Lcom/android/systemui/ScreenDecorations$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/ScreenDecorations$5;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mUserSwitchIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 224
    iput-object p2, p0, Lcom/android/systemui/ScreenDecorations;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 225
    iput-object p3, p0, Lcom/android/systemui/ScreenDecorations;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 226
    iput-object p4, p0, Lcom/android/systemui/ScreenDecorations;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 227
    iput-object p5, p0, Lcom/android/systemui/ScreenDecorations;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 228
    iput-object p6, p0, Lcom/android/systemui/ScreenDecorations;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 229
    iput-object p7, p0, Lcom/android/systemui/ScreenDecorations;->mDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    .line 230
    iput-object p8, p0, Lcom/android/systemui/ScreenDecorations;->mThreadFactory:Lcom/android/systemui/util/concurrency/ThreadFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ScreenDecorations;)[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/ScreenDecorations;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/ScreenDecorations;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/ScreenDecorations;I)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->updateColorInversion(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/qs/SecureSetting;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    return-object p0
.end method

.method static synthetic access$900(II)I
    .locals 0

    .line 107
    invoke-static {p0, p1}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result p0

    return p0
.end method

.method private createOverlay(I)V
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    new-array v0, v1, [Landroid/view/View;

    .line 405
    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    if-nez v0, :cond_1

    new-array v0, v1, [Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 409
    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v1, v0, p1

    if-eqz v1, :cond_2

    return-void

    .line 415
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->overlayForPosition(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, p1

    .line 417
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    new-instance v1, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;-><init>(Landroid/content/Context;ILcom/android/systemui/ScreenDecorations;)V

    aput-object v1, v0, p1

    .line 418
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 420
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 422
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 424
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->updateView(I)V

    .line 426
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    new-instance v1, Lcom/android/systemui/ScreenDecorations$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/ScreenDecorations$4;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object p1, v2, p1

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private static getBoundPositionFromRotation(II)I
    .locals 0

    sub-int/2addr p0, p1

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x4

    :cond_0
    return p0
.end method

.method private getHeightLayoutParamByPos(I)I
    .locals 0

    .line 518
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {p1, p0}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x2

    :goto_1
    return p0
.end method

.method private getOverlayWindowGravity(I)I
    .locals 2

    .line 539
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {p1, p0}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result p0

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    const/16 p0, 0x50

    return p0

    .line 550
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown bound position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    const/16 p0, 0x30

    return p0

    :cond_3
    return v0
.end method

.method private getRoundedCornerGravity(IZ)I
    .locals 3

    .line 725
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {p1, p0}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result p0

    const/16 p1, 0x33

    const/16 v0, 0x53

    if-eqz p0, :cond_6

    const/4 v1, 0x1

    const/16 v2, 0x35

    if-eq p0, v1, :cond_4

    const/4 p1, 0x2

    const/16 v1, 0x55

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 736
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Incorrect position: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    return v2

    :cond_4
    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    move p1, v2

    :goto_2
    return p1

    :cond_6
    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    move p1, v0

    :goto_3
    return p1
.end method

.method private getWidthLayoutParamByPos(I)I
    .locals 0

    .line 512
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {p1, p0}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method private static getWindowTitleByPos(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "ScreenDecorOverlayBottom"

    return-object p0

    .line 534
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown bound position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "ScreenDecorOverlayRight"

    return-object p0

    :cond_2
    const-string p0, "ScreenDecorOverlay"

    return-object p0

    :cond_3
    const-string p0, "ScreenDecorOverlayLeft"

    return-object p0
.end method

.method private hasRoundedCorners()Z
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-gtz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mIsRoundedCornerMultipleRadius:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$onConfigurationChanged$2()V
    .locals 1

    const/4 v0, 0x0

    .line 623
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    .line 624
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    .line 625
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerRadii()V

    .line 627
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 628
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-eqz v0, :cond_0

    .line 633
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onTuningChanged$3(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 823
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "sysui_rounded_size"

    .line 824
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 825
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:Landroid/graphics/Point;

    .line 826
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:Landroid/graphics/Point;

    .line 827
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:Landroid/graphics/Point;

    if-eqz p2, :cond_1

    .line 830
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    int-to-float p2, p2

    iget v2, p0, Lcom/android/systemui/ScreenDecorations;->mDensity:F

    mul-float/2addr p2, v2

    float-to-int p2, p2

    .line 831
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p2, p2}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    .line 835
    :catch_0
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerSize(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setupDecorations$0()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "sysui_rounded_size"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setupDecorations$1()V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method private overlayForPosition(I)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown bounds position"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 458
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$layout;->rounded_corners_bottom:I

    .line 459
    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 460
    sget v0, Lcom/android/systemui/R$id;->privacy_dot_left_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomLeftDot:Landroid/view/View;

    .line 461
    sget v0, Lcom/android/systemui/R$id;->privacy_dot_right_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomRightDot:Landroid/view/View;

    return-object p1

    .line 451
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$layout;->rounded_corners_top:I

    .line 452
    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 453
    sget v0, Lcom/android/systemui/R$id;->privacy_dot_left_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mTopLeftDot:Landroid/view/View;

    .line 454
    sget v0, Lcom/android/systemui/R$id;->privacy_dot_right_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mTopRightDot:Landroid/view/View;

    return-object p1
.end method

.method public static rectsToRegion(Ljava/util/List;)Landroid/graphics/Region;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Region;"
        }
    .end annotation

    .line 203
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 205
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private removeAllOverlays()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 388
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 389
    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->removeOverlay(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 392
    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    return-void
.end method

.method private removeOverlay(I)V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-eqz v0, :cond_1

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    aget-object v0, v0, p1

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 400
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    const/4 v0, 0x0

    aput-object v0, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method private setRoundedCornerOrientation(Landroid/view/View;I)V
    .locals 1

    const/4 p0, 0x0

    .line 749
    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 750
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 751
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    const/16 p0, 0x33

    if-eq p2, p0, :cond_3

    const/16 p0, 0x35

    const/high16 v0, -0x40800000    # -1.0f

    if-eq p2, p0, :cond_2

    const/16 p0, 0x53

    if-eq p2, p0, :cond_1

    const/16 p0, 0x55

    if-ne p2, p0, :cond_0

    const/high16 p0, 0x43340000    # 180.0f

    .line 762
    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    return-void

    .line 765
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported gravity: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 759
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 756
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    :cond_3
    return-void
.end method

.method private setupCameraListener()V
    .locals 3

    .line 561
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 562
    sget v1, Lcom/android/systemui/R$bool;->config_enableDisplayCutoutProtection:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    sget-object v0, Lcom/android/systemui/CameraAvailabilityListener;->Factory:Lcom/android/systemui/CameraAvailabilityListener$Factory;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/CameraAvailabilityListener$Factory;->build(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/android/systemui/CameraAvailabilityListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCameraListener:Lcom/android/systemui/CameraAvailabilityListener;

    .line 565
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mCameraTransitionCallback:Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/CameraAvailabilityListener;->addTransitionCallback(Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;)V

    .line 566
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mCameraListener:Lcom/android/systemui/CameraAvailabilityListener;

    invoke-virtual {p0}, Lcom/android/systemui/CameraAvailabilityListener;->startListening()V

    :cond_0
    return-void
.end method

.method private setupDecorations()V
    .locals 8

    .line 299
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->removeAllOverlays()V

    goto :goto_4

    .line 300
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateStatusBarHeight()V

    .line 301
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 302
    :cond_2
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v0

    :goto_1
    move v2, v1

    :goto_2
    const/4 v3, 0x4

    if-ge v2, v3, :cond_6

    .line 305
    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {v2, v3}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result v3

    if-eqz v0, :cond_3

    .line 306
    aget-object v3, v0, v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 307
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/systemui/ScreenDecorations;->shouldShowRoundedCorner(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 308
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/systemui/ScreenDecorations;->createOverlay(I)V

    goto :goto_3

    .line 310
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/systemui/ScreenDecorations;->removeOverlay(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 315
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mTopLeftDot:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mTopRightDot:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mBottomLeftDot:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/ScreenDecorations;->mBottomRightDot:Landroid/view/View;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->initialize(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 321
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->hasOverlays()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 322
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    if-eqz v0, :cond_7

    return-void

    .line 325
    :cond_7
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 326
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 327
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mDensity:F

    .line 329
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v2, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    if-nez v0, :cond_8

    .line 333
    new-instance v0, Lcom/android/systemui/ScreenDecorations$3;

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v5, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 335
    invoke-interface {v2}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result v7

    const-string v6, "accessibility_display_inversion_enabled"

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/ScreenDecorations$3;-><init>(Lcom/android/systemui/ScreenDecorations;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 342
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 343
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->onChange(Z)V

    .line 345
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 346
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mUserSwitchIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 349
    iput-boolean v2, p0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    goto :goto_5

    .line 351
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 353
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    if-eqz v0, :cond_a

    .line 354
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 357
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mUserSwitchIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 358
    iput-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    :goto_5
    return-void
.end method

.method private shouldDrawCutout()Z
    .locals 0

    .line 796
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static shouldDrawCutout(Landroid/content/Context;)Z
    .locals 1

    .line 800
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11100e3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private shouldShowRoundedCorner(I)Z
    .locals 6

    .line 776
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 780
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 782
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isBoundsEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v2

    .line 785
    :goto_1
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {v2, v4}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result v4

    .line 786
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v5, 0x3

    invoke-static {v5, p0}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result p0

    if-nez v3, :cond_6

    .line 787
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 788
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v0

    aget-object p0, v0, p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    const/4 p0, 0x2

    if-ne p1, p0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1

    :cond_6
    :goto_2
    if-eq p1, v2, :cond_7

    if-ne p1, v5, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    return v1
.end method

.method private startOnScreenDecorationsThread()V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 247
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 248
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 249
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_roundedCornerMultipleRadius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mIsRoundedCornerMultipleRadius:Z

    .line 251
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerRadii()V

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 253
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupCameraListener()V

    .line 255
    new-instance v0, Lcom/android/systemui/ScreenDecorations$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$2;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 294
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 295
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    return-void
.end method

.method private updateColorInversion(I)V
    .locals 8

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x1000000

    .line 585
    :goto_0
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_COLOR:Z

    if-eqz v0, :cond_1

    const/high16 p1, -0x10000

    .line 588
    :cond_1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 590
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_8

    .line 594
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v4, v3, v2

    if-nez v4, :cond_3

    goto :goto_4

    .line 597
    :cond_3
    aget-object v3, v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_7

    .line 600
    iget-object v5, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v5, v5, v2

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 601
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcom/android/systemui/R$id;->privacy_dot_left_container:I

    if-eq v6, v7, :cond_6

    .line 602
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcom/android/systemui/R$id;->privacy_dot_right_container:I

    if-ne v6, v7, :cond_4

    goto :goto_3

    .line 606
    :cond_4
    instance-of v6, v5, Landroid/widget/ImageView;

    if-eqz v6, :cond_5

    .line 607
    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 608
    :cond_5
    instance-of v6, v5, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    if-eqz v6, :cond_6

    .line 609
    check-cast v5, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v5, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setColor(I)V

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method private updateLayoutParams()V
    .locals 4

    .line 805
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 809
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v2, v1, v0

    if-nez v2, :cond_1

    goto :goto_1

    .line 812
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    aget-object v1, v1, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateOrientation()V
    .locals 4

    .line 639
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "must call on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 640
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", but was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 639
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 644
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-eq v1, v0, :cond_1

    .line 645
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNewRotation(I)V

    .line 648
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    if-eqz v1, :cond_2

    return-void

    .line 651
    :cond_2
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-eq v0, v1, :cond_4

    .line 652
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 654
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-eqz v0, :cond_4

    .line 655
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    :goto_1
    const/4 v0, 0x4

    if-ge v2, v0, :cond_4

    .line 657
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, v2

    if-nez v0, :cond_3

    goto :goto_2

    .line 660
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/systemui/ScreenDecorations;->updateView(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private updateRoundedCornerRadii()V
    .locals 5

    .line 680
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050255

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 682
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050259

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 684
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050257

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 687
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    if-ne v4, v0, :cond_1

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v4, v1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-eq v4, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_3

    .line 694
    iget-boolean v4, p0, Lcom/android/systemui/ScreenDecorations;->mIsRoundedCornerMultipleRadius:Z

    if-eqz v4, :cond_2

    .line 695
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->rounded:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 696
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 697
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->rounded_corner_top:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 698
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 699
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->rounded_corner_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 700
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_2

    .line 702
    :cond_2
    invoke-virtual {v3, v0, v0}, Landroid/graphics/Point;->set(II)V

    .line 703
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 704
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:Landroid/graphics/Point;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Point;->set(II)V

    :goto_2
    const/4 v0, 0x0

    const-string/jumbo v1, "sysui_rounded_size"

    .line 706
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/ScreenDecorations;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private updateRoundedCornerSize(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3

    .line 844
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 847
    :cond_0
    iget v0, p2, Landroid/graphics/Point;->x:I

    if-nez v0, :cond_1

    move-object p2, p1

    .line 850
    :cond_1
    iget v0, p3, Landroid/graphics/Point;->x:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p3

    :goto_0
    const/4 p3, 0x0

    :goto_1
    const/4 v0, 0x4

    if-ge p3, v0, :cond_9

    .line 855
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v1, v0, p3

    if-nez v1, :cond_3

    goto/16 :goto_3

    :cond_3
    const/4 v1, 0x3

    if-eqz p3, :cond_6

    const/4 v2, 0x2

    if-ne p3, v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    if-ne p3, v2, :cond_5

    .line 867
    aget-object v0, v0, p3

    sget v1, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;Landroid/graphics/Point;)V

    .line 868
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p3

    sget v1, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;Landroid/graphics/Point;)V

    goto :goto_3

    :cond_5
    if-ne p3, v1, :cond_8

    .line 870
    aget-object v0, v0, p3

    sget v1, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;Landroid/graphics/Point;)V

    .line 871
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p3

    sget v1, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;Landroid/graphics/Point;)V

    goto :goto_3

    .line 859
    :cond_6
    :goto_2
    iget v2, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-ne v2, v1, :cond_7

    .line 860
    aget-object v0, v0, p3

    sget v1, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;Landroid/graphics/Point;)V

    .line 861
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p3

    sget v1, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;Landroid/graphics/Point;)V

    goto :goto_3

    .line 863
    :cond_7
    aget-object v0, v0, p3

    sget v1, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;Landroid/graphics/Point;)V

    .line 864
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p3

    sget v1, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;Landroid/graphics/Point;)V

    :cond_8
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method private updateRoundedCornerView(II)V
    .locals 3

    .line 711
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 715
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 716
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->shouldShowRoundedCorner(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 717
    sget v1, Lcom/android/systemui/R$id;->left:I

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ScreenDecorations;->getRoundedCornerGravity(IZ)I

    move-result p1

    .line 718
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 719
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/ScreenDecorations;->setRoundedCornerOrientation(Landroid/view/View;I)V

    .line 720
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private updateStatusBarHeight()V
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050271

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mStatusBarHeightLandscape:I

    .line 669
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050272

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mStatusBarHeightPortrait:I

    .line 671
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mStatusBarHeightLandscape:I

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setStatusBarHeights(II)V

    return-void
.end method

.method private updateView(I)V
    .locals 3

    .line 469
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-eqz v0, :cond_1

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->left:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerView(II)V

    .line 475
    sget v0, Lcom/android/systemui/R$id;->right:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerView(II)V

    .line 476
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:Landroid/graphics/Point;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerSize(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 479
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    if-eqz v0, :cond_1

    aget-object v1, v0, p1

    if-eqz v1, :cond_1

    .line 480
    aget-object p1, v0, p1

    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setRotation(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method getCutout()Landroid/view/DisplayCutout;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method getWindowLayoutParams(I)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 486
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 487
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->getWidthLayoutParamByPos(I)I

    move-result v1

    .line 488
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->getHeightLayoutParamByPos(I)I

    move-result v2

    const/16 v3, 0x7e8

    const v4, 0x20800128

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 496
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x50

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 499
    sget-boolean v1, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    if-nez v1, :cond_0

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    .line 500
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 503
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->getWindowTitleByPos(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 504
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->getOverlayWindowGravity(I)I

    move-result p0

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p0, 0x3

    .line 505
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 p0, 0x0

    .line 506
    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 507
    iget p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 p1, 0x1000000

    or-int/2addr p0, p1

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v6
.end method

.method hasOverlays()Z
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 374
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 378
    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    return v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 617
    sget-boolean p1, Lcom/android/systemui/ScreenDecorations;->DEBUG_DISABLE_SCREEN_DECORATIONS:Z

    if-eqz p1, :cond_0

    const-string p0, "ScreenDecorations"

    const-string p1, "ScreenDecorations is disabled"

    .line 618
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 621
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 818
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_DISABLE_SCREEN_DECORATIONS:Z

    if-eqz v0, :cond_0

    const-string p0, "ScreenDecorations"

    const-string p1, "ScreenDecorations is disabled"

    .line 819
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/ScreenDecorations;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setSize(Landroid/view/View;Landroid/graphics/Point;)V
    .locals 1

    .line 878
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 879
    iget v0, p2, Landroid/graphics/Point;->x:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 880
    iget p2, p2, Landroid/graphics/Point;->y:I

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 881
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 235
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_DISABLE_SCREEN_DECORATIONS:Z

    const-string v1, "ScreenDecorations"

    if-eqz v0, :cond_0

    const-string p0, "ScreenDecorations is disabled"

    .line 236
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mThreadFactory:Lcom/android/systemui/util/concurrency/ThreadFactory;

    invoke-interface {v0, v1}, Lcom/android/systemui/util/concurrency/ThreadFactory;->builderHandlerOnNewThread(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 240
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mThreadFactory:Lcom/android/systemui/util/concurrency/ThreadFactory;

    invoke-interface {v1, v0}, Lcom/android/systemui/util/concurrency/ThreadFactory;->buildDelayableExecutorOnHandler(Landroid/os/Handler;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 241
    new-instance v1, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 242
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setUiExecutor(Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    return-void
.end method
