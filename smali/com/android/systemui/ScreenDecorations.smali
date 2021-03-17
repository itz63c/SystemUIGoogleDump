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
.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mCameraListener:Lcom/android/systemui/CameraAvailabilityListener;

.field private mCameraTransitionCallback:Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;

.field private mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

.field private mDensity:F

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mHandler:Landroid/os/Handler;

.field protected mIsRegistered:Z

.field private mIsRoundedCornerMultipleRadius:Z

.field private final mMainHandler:Landroid/os/Handler;

.field protected mOverlays:[Landroid/view/View;

.field private mPendingRotationChange:Z

.field private mRotation:I

.field protected mRoundedDefault:Landroid/graphics/Point;

.field protected mRoundedDefaultBottom:Landroid/graphics/Point;

.field protected mRoundedDefaultTop:Landroid/graphics/Point;

.field private final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

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

    .line 112
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_DISABLE_SCREEN_DECORATIONS:Z

    const-string v0, "debug.screenshot_rounded_corners"

    .line 114
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    .line 116
    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_COLOR:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/settings/UserTracker;)V
    .locals 1

    .line 208
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    .line 132
    new-instance p1, Landroid/graphics/Point;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:Landroid/graphics/Point;

    .line 134
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:Landroid/graphics/Point;

    .line 136
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:Landroid/graphics/Point;

    .line 150
    new-instance p1, Lcom/android/systemui/ScreenDecorations$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/ScreenDecorations$1;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mCameraTransitionCallback:Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;

    .line 546
    new-instance p1, Lcom/android/systemui/ScreenDecorations$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/ScreenDecorations$5;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mUserSwitchIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    iput-object p2, p0, Lcom/android/systemui/ScreenDecorations;->mMainHandler:Landroid/os/Handler;

    .line 210
    iput-object p3, p0, Lcom/android/systemui/ScreenDecorations;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 211
    iput-object p4, p0, Lcom/android/systemui/ScreenDecorations;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 212
    iput-object p5, p0, Lcom/android/systemui/ScreenDecorations;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 213
    iput-object p6, p0, Lcom/android/systemui/ScreenDecorations;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ScreenDecorations;)[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/ScreenDecorations;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/ScreenDecorations;Z)Z
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/ScreenDecorations;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->updateColorInversion(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/qs/SecureSetting;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    return-object p0
.end method

.method static synthetic access$900(II)I
    .locals 0

    .line 104
    invoke-static {p0, p1}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result p0

    return p0
.end method

.method private createOverlay(I)V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    new-array v0, v1, [Landroid/view/View;

    .line 388
    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    if-nez v0, :cond_1

    new-array v0, v1, [Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 392
    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v1, v0, p1

    if-eqz v1, :cond_2

    return-void

    .line 398
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->overlayForPosition(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, p1

    .line 400
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    new-instance v1, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;-><init>(Landroid/content/Context;ILcom/android/systemui/ScreenDecorations;)V

    aput-object v1, v0, p1

    .line 401
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 403
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 405
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 407
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->updateView(I)V

    .line 409
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    new-instance v1, Lcom/android/systemui/ScreenDecorations$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/ScreenDecorations$4;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 423
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

    .line 494
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

    .line 515
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

    .line 526
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown bound position: "

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

    .line 683
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

    .line 694
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

    .line 488
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

    .line 510
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown bound position: "

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

    .line 727
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

    .line 594
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    .line 595
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    .line 596
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerRadii()V

    .line 598
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 599
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-eqz v0, :cond_0

    .line 604
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onTuningChanged$3(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 781
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "sysui_rounded_size"

    .line 782
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 783
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:Landroid/graphics/Point;

    .line 784
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:Landroid/graphics/Point;

    .line 785
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:Landroid/graphics/Point;

    if-eqz p2, :cond_1

    .line 788
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    int-to-float p2, p2

    iget v2, p0, Lcom/android/systemui/ScreenDecorations;->mDensity:F

    mul-float/2addr p2, v2

    float-to-int p2, p2

    .line 789
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p2, p2}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    .line 793
    :catch_0
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerSize(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setupDecorations$0()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string v1, "sysui_rounded_size"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setupDecorations$1()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method private overlayForPosition(I)Landroid/view/View;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 439
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$layout;->rounded_corners:I

    .line 440
    invoke-virtual {p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 436
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$layout;->rounded_corners_bottom:I

    .line 437
    invoke-virtual {p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 433
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$layout;->rounded_corners_top:I

    .line 434
    invoke-virtual {p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
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

    .line 190
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 192
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

    .line 193
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private removeAllOverlays()V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 371
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 372
    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->removeOverlay(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 375
    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    return-void
.end method

.method private removeOverlay(I)V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-eqz v0, :cond_1

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    aget-object v0, v0, p1

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 383
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

    .line 707
    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 708
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 709
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

    .line 720
    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    return-void

    .line 723
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

    .line 717
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 714
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    :cond_3
    return-void
.end method

.method private setupCameraListener()V
    .locals 4

    .line 537
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 538
    sget v1, Lcom/android/systemui/R$bool;->config_enableDisplayCutoutProtection:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    sget-object v0, Lcom/android/systemui/CameraAvailabilityListener;->Factory:Lcom/android/systemui/CameraAvailabilityListener$Factory;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/mediarouter/media/MediaRoute2Provider-$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Landroidx/mediarouter/media/MediaRoute2Provider-$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/CameraAvailabilityListener$Factory;->build(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/android/systemui/CameraAvailabilityListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCameraListener:Lcom/android/systemui/CameraAvailabilityListener;

    .line 541
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mCameraTransitionCallback:Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/CameraAvailabilityListener;->addTransitionCallback(Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;)V

    .line 542
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mCameraListener:Lcom/android/systemui/CameraAvailabilityListener;

    invoke-virtual {p0}, Lcom/android/systemui/CameraAvailabilityListener;->startListening()V

    :cond_0
    return-void
.end method

.method private setupDecorations()V
    .locals 8

    .line 287
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->removeAllOverlays()V

    goto :goto_4

    .line 288
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 289
    :cond_2
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v0

    :goto_1
    move v2, v1

    :goto_2
    const/4 v3, 0x4

    if-ge v2, v3, :cond_6

    .line 292
    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {v2, v3}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result v3

    if-eqz v0, :cond_3

    .line 293
    aget-object v3, v0, v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 294
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/systemui/ScreenDecorations;->shouldShowRoundedCorner(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 295
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/systemui/ScreenDecorations;->createOverlay(I)V

    goto :goto_3

    .line 297
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/systemui/ScreenDecorations;->removeOverlay(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 304
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->hasOverlays()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 305
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    if-eqz v0, :cond_7

    return-void

    .line 308
    :cond_7
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 309
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 310
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mDensity:F

    .line 312
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/ScreenDecorations-$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/systemui/ScreenDecorations-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    if-nez v0, :cond_8

    .line 316
    new-instance v0, Lcom/android/systemui/ScreenDecorations$3;

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v5, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 318
    invoke-interface {v2}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result v7

    const-string v6, "accessibility_display_inversion_enabled"

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/ScreenDecorations$3;-><init>(Lcom/android/systemui/ScreenDecorations;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 325
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->onChange(Z)V

    .line 328
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 329
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mUserSwitchIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/os/HandlerExecutor;

    iget-object v5, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 332
    iput-boolean v2, p0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    goto :goto_5

    .line 334
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/ScreenDecorations-$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/ScreenDecorations-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    if-eqz v0, :cond_a

    .line 337
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 340
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mUserSwitchIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 341
    iput-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    :goto_5
    return-void
.end method

.method private shouldDrawCutout()Z
    .locals 0

    .line 754
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static shouldDrawCutout(Landroid/content/Context;)Z
    .locals 1

    .line 758
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110095

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private shouldShowRoundedCorner(I)Z
    .locals 6

    .line 734
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 738
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 740
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

    .line 743
    :goto_1
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {v2, v4}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result v4

    .line 744
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v5, 0x3

    invoke-static {v5, p0}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result p0

    if-nez v3, :cond_6

    .line 745
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 746
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

    .line 234
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 235
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 236
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 237
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_roundedCornerMultipleRadius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mIsRoundedCornerMultipleRadius:Z

    .line 239
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerRadii()V

    .line 240
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 241
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupCameraListener()V

    .line 243
    new-instance v0, Lcom/android/systemui/ScreenDecorations$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$2;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 282
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 283
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    return-void
.end method

.method private updateColorInversion(I)V
    .locals 7

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x1000000

    .line 561
    :goto_0
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_COLOR:Z

    if-eqz v0, :cond_1

    const/high16 p1, -0x10000

    .line 564
    :cond_1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 566
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_7

    .line 570
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v4, v3, v2

    if-nez v4, :cond_3

    goto :goto_4

    .line 573
    :cond_3
    aget-object v3, v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_6

    .line 576
    iget-object v5, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v5, v5, v2

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 577
    instance-of v6, v5, Landroid/widget/ImageView;

    if-eqz v6, :cond_4

    .line 578
    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 579
    :cond_4
    instance-of v6, v5, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    if-eqz v6, :cond_5

    .line 580
    check-cast v5, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v5, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setColor(I)V

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method private updateLayoutParams()V
    .locals 4

    .line 763
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 767
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v2, v1, v0

    if-nez v2, :cond_1

    goto :goto_1

    .line 770
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

    .line 610
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

    .line 611
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", but was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 610
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 613
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    if-eqz v0, :cond_1

    return-void

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 617
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-eq v0, v1, :cond_3

    .line 618
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 620
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-eqz v0, :cond_3

    .line 621
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    :goto_1
    const/4 v0, 0x4

    if-ge v2, v0, :cond_3

    .line 623
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, v2

    if-nez v0, :cond_2

    goto :goto_2

    .line 626
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/systemui/ScreenDecorations;->updateView(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateRoundedCornerRadii()V
    .locals 5

    .line 638
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050255

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 640
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050259

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 642
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050257

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 645
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

    .line 652
    iget-boolean v4, p0, Lcom/android/systemui/ScreenDecorations;->mIsRoundedCornerMultipleRadius:Z

    if-eqz v4, :cond_2

    .line 653
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->rounded:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 654
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 655
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->rounded_corner_top:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 656
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 657
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->rounded_corner_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 658
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_2

    .line 660
    :cond_2
    invoke-virtual {v3, v0, v0}, Landroid/graphics/Point;->set(II)V

    .line 661
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 662
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:Landroid/graphics/Point;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Point;->set(II)V

    :goto_2
    const/4 v0, 0x0

    const-string v1, "sysui_rounded_size"

    .line 664
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/ScreenDecorations;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private updateRoundedCornerSize(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3

    .line 802
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 805
    :cond_0
    iget v0, p2, Landroid/graphics/Point;->x:I

    if-nez v0, :cond_1

    move-object p2, p1

    .line 808
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

    .line 813
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

    .line 825
    aget-object v0, v0, p3

    sget v1, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;Landroid/graphics/Point;)V

    .line 826
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p3

    sget v1, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;Landroid/graphics/Point;)V

    goto :goto_3

    :cond_5
    if-ne p3, v1, :cond_8

    .line 828
    aget-object v0, v0, p3

    sget v1, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;Landroid/graphics/Point;)V

    .line 829
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p3

    sget v1, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;Landroid/graphics/Point;)V

    goto :goto_3

    .line 817
    :cond_6
    :goto_2
    iget v2, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-ne v2, v1, :cond_7

    .line 818
    aget-object v0, v0, p3

    sget v1, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;Landroid/graphics/Point;)V

    .line 819
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p3

    sget v1, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;Landroid/graphics/Point;)V

    goto :goto_3

    .line 821
    :cond_7
    aget-object v0, v0, p3

    sget v1, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;Landroid/graphics/Point;)V

    .line 822
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

    .line 669
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 673
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 674
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->shouldShowRoundedCorner(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 675
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

    .line 676
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 677
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/ScreenDecorations;->setRoundedCornerOrientation(Landroid/view/View;I)V

    .line 678
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private updateView(I)V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-eqz v0, :cond_1

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->left:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerView(II)V

    .line 451
    sget v0, Lcom/android/systemui/R$id;->right:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerView(II)V

    .line 452
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:Landroid/graphics/Point;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerSize(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 455
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    if-eqz v0, :cond_1

    aget-object v1, v0, p1

    if-eqz v1, :cond_1

    .line 456
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

    .line 347
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method getWindowLayoutParams(I)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 462
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 463
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->getWidthLayoutParamByPos(I)I

    move-result v1

    .line 464
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->getHeightLayoutParamByPos(I)I

    move-result v2

    const/16 v3, 0x7e8

    const v4, 0x20800128

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 472
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x50

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 475
    sget-boolean v1, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    if-nez v1, :cond_0

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    .line 476
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 479
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->getWindowTitleByPos(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 480
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->getOverlayWindowGravity(I)I

    move-result p0

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p0, 0x3

    .line 481
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 p0, 0x0

    .line 482
    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 483
    iget p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 p1, 0x1000000

    or-int/2addr p0, p1

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v6
.end method

.method hasOverlays()Z
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 357
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

    .line 361
    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    return v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 588
    sget-boolean p1, Lcom/android/systemui/ScreenDecorations;->DEBUG_DISABLE_SCREEN_DECORATIONS:Z

    if-eqz p1, :cond_0

    const-string p0, "ScreenDecorations"

    const-string p1, "ScreenDecorations is disabled"

    .line 589
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 592
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/ScreenDecorations-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 776
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_DISABLE_SCREEN_DECORATIONS:Z

    if-eqz v0, :cond_0

    const-string p0, "ScreenDecorations"

    const-string p1, "ScreenDecorations is disabled"

    .line 777
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/ScreenDecorations-$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/ScreenDecorations-$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/ScreenDecorations;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected setSize(Landroid/view/View;Landroid/graphics/Point;)V
    .locals 1

    .line 836
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 837
    iget v0, p2, Landroid/graphics/Point;->x:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 838
    iget p2, p2, Landroid/graphics/Point;->y:I

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 839
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 218
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_DISABLE_SCREEN_DECORATIONS:Z

    if-eqz v0, :cond_0

    const-string p0, "ScreenDecorations"

    const-string v0, "ScreenDecorations is disabled"

    .line 219
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->startHandlerThread()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 223
    new-instance v1, Lcom/android/systemui/ScreenDecorations-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/ScreenDecorations-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method startHandlerThread()Landroid/os/Handler;
    .locals 1

    .line 228
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "ScreenDecorations"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 230
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
