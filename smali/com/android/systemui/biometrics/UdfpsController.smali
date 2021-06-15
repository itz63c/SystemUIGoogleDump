.class public Lcom/android/systemui/biometrics/UdfpsController;
.super Ljava/lang/Object;
.source "UdfpsController.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;,
        Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;
    }
.end annotation


# static fields
.field static final VIBRATION_SONIFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAcquiredVibration:Ljava/lang/Runnable;

.field private mActivePointerId:I

.field private mAodInterruptRunnable:Ljava/lang/Runnable;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCancelAodTimeoutAction:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mDoubleClick:Landroid/os/VibrationEffect;

.field private final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field final mEffectClick:Landroid/os/VibrationEffect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mEffectHeavy:Landroid/os/VibrationEffect;

.field private final mEffectTextureTick:Landroid/os/VibrationEffect;

.field private final mEffectTick:Landroid/os/VibrationEffect;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mHbmCallback:Lcom/android/systemui/biometrics/UdfpsHbmCallback;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsAodInterruptActive:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mOnHoverListener:Landroid/view/View$OnHoverListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end field

.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end field

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mScreenOn:Z

.field final mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mServerRequest:Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

.field private mTouchLogTime:J

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVibrator:Landroid/os/Vibrator;

.field private mView:Lcom/android/systemui/biometrics/UdfpsView;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$0AXkyi8mXuaGbMdTDIPYNaTd4ao(Lcom/android/systemui/biometrics/UdfpsController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsController;->lambda$new$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$1K9hRezdovD6BPZoHu44dpIk-bc(Lcom/android/systemui/biometrics/UdfpsController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsController;->lambda$showUdfpsOverlay$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$87RtbLWSYXi0PZ14GfkKs_SbhlE(Lcom/android/systemui/biometrics/UdfpsController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsController;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UUpOzsDvURtkKeH0EyQpEo-lg3c(Lcom/android/systemui/biometrics/UdfpsController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsController;->lambda$new$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_MxP7C_6aiSN04CMcSN4IgMS-7c(Lcom/android/systemui/biometrics/UdfpsController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->lambda$onFingerDown$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$nY6rWxfVBX7tbphK8Y1ekFU_vSU(Lcom/android/systemui/biometrics/UdfpsController;IIFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/biometrics/UdfpsController;->lambda$onAodInterrupt$5(IIFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$xAvbt0z0qxBJrvwLrn8CKJrkNOU(Lcom/android/systemui/biometrics/UdfpsController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->lambda$hideUdfpsOverlay$4()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 141
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 143
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 144
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/biometrics/UdfpsController;->VIBRATION_SONIFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/hardware/fingerprint/FingerprintManager;Landroid/view/WindowManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/plugins/FalsingManager;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/keyguard/ScreenLifecycle;Landroid/os/Vibrator;Ljava/util/Optional;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/LayoutInflater;",
            "Landroid/hardware/fingerprint/FingerprintManager;",
            "Landroid/view/WindowManager;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Landroid/os/PowerManager;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Landroid/os/Vibrator;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/biometrics/UdfpsHbmCallback;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p7

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, -0x1

    .line 123
    iput v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    const/4 v3, 0x2

    .line 147
    invoke-static {v3}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mEffectTick:Landroid/os/VibrationEffect;

    const/16 v4, 0x15

    .line 149
    invoke-static {v4}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mEffectTextureTick:Landroid/os/VibrationEffect;

    const/4 v4, 0x0

    .line 151
    invoke-static {v4}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/biometrics/UdfpsController;->mEffectClick:Landroid/os/VibrationEffect;

    const/4 v5, 0x5

    .line 153
    invoke-static {v5}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/biometrics/UdfpsController;->mEffectHeavy:Landroid/os/VibrationEffect;

    const/4 v5, 0x1

    .line 155
    invoke-static {v5}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/biometrics/UdfpsController;->mDoubleClick:Landroid/os/VibrationEffect;

    .line 156
    new-instance v6, Lcom/android/systemui/biometrics/UdfpsController$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/biometrics/UdfpsController$1;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    iput-object v6, v0, Lcom/android/systemui/biometrics/UdfpsController;->mAcquiredVibration:Ljava/lang/Runnable;

    .line 168
    new-instance v6, Lcom/android/systemui/biometrics/UdfpsController$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/biometrics/UdfpsController$2;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    iput-object v6, v0, Lcom/android/systemui/biometrics/UdfpsController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 279
    new-instance v7, Lcom/android/systemui/biometrics/UdfpsController$3;

    invoke-direct {v7, p0}, Lcom/android/systemui/biometrics/UdfpsController$3;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 302
    new-instance v8, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    iput-object v8, v0, Lcom/android/systemui/biometrics/UdfpsController;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 306
    new-instance v8, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    iput-object v8, v0, Lcom/android/systemui/biometrics/UdfpsController;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    .line 310
    new-instance v8, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    iput-object v8, v0, Lcom/android/systemui/biometrics/UdfpsController;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 473
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    .line 475
    new-instance v8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v8, v0, Lcom/android/systemui/biometrics/UdfpsController;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v8, p16

    .line 476
    iput-object v8, v0, Lcom/android/systemui/biometrics/UdfpsController;->mVibrator:Landroid/os/Vibrator;

    move-object v8, p2

    .line 477
    iput-object v8, v0, Lcom/android/systemui/biometrics/UdfpsController;->mInflater:Landroid/view/LayoutInflater;

    .line 480
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v8, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object v9, p4

    .line 481
    iput-object v9, v0, Lcom/android/systemui/biometrics/UdfpsController;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v9, p6

    .line 482
    iput-object v9, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 483
    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v9, p5

    .line 484
    iput-object v9, v0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v9, p8

    .line 485
    iput-object v9, v0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v9, p9

    .line 486
    iput-object v9, v0, Lcom/android/systemui/biometrics/UdfpsController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object/from16 v9, p10

    .line 487
    iput-object v9, v0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v9, p11

    .line 488
    iput-object v9, v0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object/from16 v9, p12

    .line 489
    iput-object v9, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v9, p13

    .line 490
    iput-object v9, v0, Lcom/android/systemui/biometrics/UdfpsController;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v9, p14

    .line 491
    iput-object v9, v0, Lcom/android/systemui/biometrics/UdfpsController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v9, 0x0

    move-object/from16 v10, p17

    .line 492
    invoke-virtual {v10, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/biometrics/UdfpsHbmCallback;

    iput-object v9, v0, Lcom/android/systemui/biometrics/UdfpsController;->mHbmCallback:Lcom/android/systemui/biometrics/UdfpsHbmCallback;

    move-object/from16 v9, p15

    .line 493
    invoke-virtual {v9, v6}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 494
    invoke-virtual/range {p15 .. p15}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v6

    if-ne v6, v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mScreenOn:Z

    .line 496
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->findFirstUdfps()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v5, v4

    .line 498
    :goto_1
    invoke-static {v5}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 499
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->getSensorLocation()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->setSensorRect(Landroid/graphics/RectF;)V

    .line 501
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d9

    .line 503
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->getCoreLayoutParamFlags()I

    move-result v5

    const/4 v6, -0x3

    invoke-direct {v2, v3, v5, v6}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v3, "UdfpsController"

    .line 505
    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 506
    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/16 v3, 0x33

    .line 507
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, 0x3

    .line 508
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/high16 v3, 0x20000000

    .line 510
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 512
    new-instance v2, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;

    invoke-direct {v2, p0}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    invoke-virtual {v8, v2}, Landroid/hardware/fingerprint/FingerprintManager;->setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V

    .line 514
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 515
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p1, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/UdfpsController;)Landroid/os/Vibrator;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/UdfpsController;)Landroid/content/Context;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/UdfpsController;)Landroid/os/VibrationEffect;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mEffectTick:Landroid/os/VibrationEffect;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/UdfpsController;Ljava/lang/String;Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsController;->getVibration(Ljava/lang/String;Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/biometrics/UdfpsController;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/biometrics/UdfpsController;)Ljava/lang/Runnable;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAodInterruptRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/systemui/biometrics/UdfpsController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAodInterruptRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/biometrics/UdfpsController;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->updateOverlay()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/biometrics/UdfpsView;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    return-object p0
.end method

.method private computeLayoutParams(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 568
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getPaddingX()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 569
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getPaddingY()I

    move-result v0

    .line 571
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->getCoreLayoutParamFlags()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz p1, :cond_2

    .line 572
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->listenForTouchesOutsideView()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 573
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x40000

    or-int/2addr v2, v3

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 577
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v3, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationX:I

    iget v4, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 578
    iget v2, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationY:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v0

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    mul-int/lit8 v2, v4, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    .line 579
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v4, v2

    .line 580
    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 582
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 584
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 587
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    goto :goto_1

    .line 596
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v4, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationY:I

    sub-int/2addr p1, v4

    iget v4, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    sub-int/2addr p1, v4

    sub-int/2addr p1, v1

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 598
    iget p1, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationX:I

    sub-int/2addr p1, v4

    sub-int/2addr p1, v0

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 589
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v4, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationY:I

    iget v5, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 591
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v1, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationX:I

    sub-int/2addr p1, v1

    sub-int/2addr p1, v5

    sub-int/2addr p1, v0

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 605
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method private static computePointerSpeed(Landroid/view/VelocityTracker;I)F
    .locals 4

    .line 274
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    .line 275
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 276
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double p0, p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private findFirstUdfps()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .locals 2

    .line 529
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 530
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCoreLayoutParamFlags()I
    .locals 0

    const p0, 0x1000128

    return p0
.end method

.method private getVibration(Ljava/lang/String;Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .locals 2

    .line 800
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 804
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "double_tap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "heavy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "click"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "tick"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "texture_tick"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p2

    .line 814
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mDoubleClick:Landroid/os/VibrationEffect;

    return-object p0

    .line 808
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mEffectHeavy:Landroid/os/VibrationEffect;

    return-object p0

    .line 806
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mEffectClick:Landroid/os/VibrationEffect;

    return-object p0

    .line 812
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mEffectTick:Landroid/os/VibrationEffect;

    return-object p0

    .line 810
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mEffectTextureTick:Landroid/os/VibrationEffect;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x599cd1bf -> :sswitch_4
        0x36519d -> :sswitch_3
        0x5a5c588 -> :sswitch_2
        0x5e8f0c7 -> :sswitch_1
        0x2e701a35 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hideUdfpsOverlay()V
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private inflateUdfpsAnimation(I)Lcom/android/systemui/biometrics/UdfpsAnimationViewController;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 694
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Animation for reason "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not supported yet"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UdfpsController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 684
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/systemui/R$layout;->udfps_fpm_other_view:I

    .line 685
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/UdfpsFpmOtherView;

    .line 686
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 687
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsFpmOtherViewController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/systemui/biometrics/UdfpsFpmOtherViewController;-><init>(Lcom/android/systemui/biometrics/UdfpsFpmOtherView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/dump/DumpManager;)V

    return-object v0

    .line 659
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/systemui/R$layout;->udfps_keyguard_view:I

    .line 660
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    .line 661
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 662
    new-instance p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v5, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v7, p0, Lcom/android/systemui/biometrics/UdfpsController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    iget-object v8, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object v0, p1

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/biometrics/UdfpsController;)V

    return-object p1

    .line 675
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/systemui/R$layout;->udfps_bp_view:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/UdfpsBpView;

    .line 676
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 677
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsBpViewController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/systemui/biometrics/UdfpsBpViewController;-><init>(Lcom/android/systemui/biometrics/UdfpsBpView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/dump/DumpManager;)V

    return-object v0

    .line 648
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/systemui/R$layout;->udfps_enroll_view:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/biometrics/UdfpsEnrollView;

    .line 650
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 651
    new-instance p1, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mServerRequest:Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;

    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v4, p0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v5, p0, Lcom/android/systemui/biometrics/UdfpsController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollView;Lcom/android/systemui/biometrics/UdfpsEnrollHelper;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/dump/DumpManager;)V

    return-object p1
.end method

.method private isWithinSensorArea(Lcom/android/systemui/biometrics/UdfpsView;FFZ)Z
    .locals 0

    if-eqz p4, :cond_0

    .line 323
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/biometrics/UdfpsView;->isWithinSensorArea(FF)Z

    move-result p0

    return p0

    .line 326
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    const/4 p4, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsView;->getAnimationViewController()Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 330
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsView;->getAnimationViewController()Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shouldPauseAuth()Z

    move-result p1

    if-nez p1, :cond_2

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->getSensorLocation()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p4, 0x1

    :cond_2
    :goto_0
    return p4
.end method

.method private synthetic lambda$hideUdfpsOverlay$4()V
    .locals 3

    .line 701
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    const-string v1, "UdfpsController"

    if-eqz v0, :cond_0

    const-string v0, "hideUdfpsOverlay | removing window"

    .line 702
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp()V

    .line 705
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 706
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 707
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 708
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/UdfpsView;->setAnimationViewController(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V

    .line 709
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 711
    iput-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    goto :goto_0

    :cond_0
    const-string p0, "hideUdfpsOverlay | the overlay is already hidden"

    .line 713
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 304
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/biometrics/UdfpsController;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;Z)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 308
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/biometrics/UdfpsController;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;Z)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$2(Z)V
    .locals 0

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->updateTouchListener()V

    return-void
.end method

.method private synthetic lambda$onAodInterrupt$5(IIFF)V
    .locals 4

    const/4 v0, 0x1

    .line 730
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    .line 735
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    const-wide/16 v2, 0x3e8

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCancelAodTimeoutAction:Ljava/lang/Runnable;

    .line 738
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerDown(IIFF)V

    return-void
.end method

.method private synthetic lambda$onFingerDown$6()V
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager;->onUiReady(I)V

    const-string p0, "UdfpsController#startIllumination"

    const/4 v0, 0x1

    .line 782
    invoke-static {p0, v0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$showUdfpsOverlay$3(I)V
    .locals 5

    .line 621
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    const-string v1, "UdfpsController"

    if-nez v0, :cond_0

    .line 623
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUdfpsOverlay | adding window reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/systemui/R$layout;->udfps_view:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    .line 625
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v0, v2}, Lcom/android/systemui/biometrics/UdfpsView;->setSensorProperties(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    .line 626
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mHbmCallback:Lcom/android/systemui/biometrics/UdfpsHbmCallback;

    invoke-virtual {v0, v2}, Lcom/android/systemui/biometrics/UdfpsView;->setHbmCallback(Lcom/android/systemui/biometrics/UdfpsHbmCallback;)V

    .line 627
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsController;->inflateUdfpsAnimation(I)Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    move-result-object p1

    .line 628
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 629
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/biometrics/UdfpsView;->setAnimationViewController(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V

    .line 631
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsController;->computeLayoutParams(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 632
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 634
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->updateTouchListener()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "showUdfpsOverlay | failed to add window"

    .line 636
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p0, "showUdfpsOverlay | the overlay is already showing"

    .line 639
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onFingerDown(IIFF)V
    .locals 6

    .line 772
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    if-nez v0, :cond_0

    const-string p0, "UdfpsController"

    const-string p1, "Null view in onFingerDown"

    .line 773
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->onPointerDown(IIIFF)V

    const-string p1, "UdfpsController#ACTION_DOWN"

    const/4 p2, 0x1

    .line 777
    invoke-static {p1, p2}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    const-string p1, "UdfpsController#startIllumination"

    .line 779
    invoke-static {p1, p2}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 780
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/UdfpsView;->startIllumination(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onFingerUp()V
    .locals 2

    const/4 v0, -0x1

    .line 788
    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    .line 789
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAcquiredVibration:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 790
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    if-nez v0, :cond_0

    const-string p0, "UdfpsController"

    const-string v0, "Null view in onFingerUp"

    .line 791
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->onPointerUp(I)V

    .line 795
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsView;->stopIllumination()V

    return-void
.end method

.method private onTouch(Landroid/view/View;Landroid/view/MotionEvent;Z)Z
    .locals 12

    .line 335
    check-cast p1, Lcom/android/systemui/biometrics/UdfpsView;

    .line 336
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsView;->isIlluminationRequested()Z

    move-result v0

    .line 338
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    const/4 v4, -0x1

    const-string v5, "UdfpsController"

    if-eq v1, v2, :cond_8

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v1, v8, :cond_1

    if-eq v1, v7, :cond_8

    if-eq v1, v6, :cond_0

    const/4 v9, 0x7

    if-eq v1, v9, :cond_1

    const/16 v6, 0x9

    if-eq v1, v6, :cond_b

    const/16 p1, 0xa

    if-eq v1, p1, :cond_8

    goto/16 :goto_3

    .line 340
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsView;->onTouchOutsideView()V

    goto/16 :goto_3

    .line 367
    :cond_1
    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    if-ne v1, v4, :cond_2

    .line 368
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    goto :goto_0

    .line 369
    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 370
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-ne v1, v4, :cond_d

    .line 371
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 372
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 373
    invoke-direct {p0, p1, v4, v9, p3}, Lcom/android/systemui/biometrics/UdfpsController;->isWithinSensorArea(Lcom/android/systemui/biometrics/UdfpsView;FFZ)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 374
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_3

    .line 377
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 379
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 381
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 p3, 0x3e8

    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 383
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget p3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    invoke-static {p1, p3}, Lcom/android/systemui/biometrics/UdfpsController;->computePointerSpeed(Landroid/view/VelocityTracker;I)F

    move-result p1

    .line 384
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result p3

    .line 385
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result p2

    const v1, 0x443b8000    # 750.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    .line 389
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v6, v3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v6, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v6, v8

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v7

    const-string p1, "minor: %.1f, major: %.1f, v: %.1f, exceedsVelocityThreshold: %b"

    .line 387
    invoke-static {p1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v10, p0, Lcom/android/systemui/biometrics/UdfpsController;->mTouchLogTime:J

    sub-long/2addr v6, v10

    if-nez v0, :cond_6

    if-nez v1, :cond_6

    float-to-int v0, v4

    float-to-int v1, v9

    .line 392
    invoke-direct {p0, v0, v1, p3, p2}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerDown(IIFF)V

    .line 393
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onTouch | finger down: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mTouchLogTime:J

    .line 395
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3, v8, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 399
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVibrator:Landroid/os/Vibrator;

    if-eqz p1, :cond_e

    .line 400
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    .line 401
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "udfps_start"

    .line 402
    invoke-static {p1, p2, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_5

    const-string/jumbo p2, "udfps_start_type"

    .line 405
    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 407
    iget-object p3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mEffectClick:Landroid/os/VibrationEffect;

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/biometrics/UdfpsController;->getVibration(Ljava/lang/String;Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/biometrics/UdfpsController;->VIBRATION_SONIFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p3, p2, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    :cond_5
    const-string/jumbo p2, "udfps_acquired"

    .line 411
    invoke-static {p1, p2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_e

    const/16 p2, 0x1f4

    const-string/jumbo p3, "udfps_acquired_delay"

    .line 414
    invoke-static {p1, p3, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 416
    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mMainHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAcquiredVibration:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 417
    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAcquiredVibration:Ljava/lang/Runnable;

    int-to-long v0, p1

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    :cond_6
    const-wide/16 p2, 0x32

    cmp-long p2, v6, p2

    if-ltz p2, :cond_d

    .line 423
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onTouch | finger move: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mTouchLogTime:J

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_d

    const-string p1, "onTouch | finger outside"

    .line 427
    invoke-static {v5, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp()V

    goto :goto_3

    .line 436
    :cond_8
    iput v4, p0, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    .line 437
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_9

    .line 438
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 439
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_9
    if-eqz v0, :cond_a

    const-string p1, "onTouch | finger up"

    .line 442
    invoke-static {v5, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp()V

    .line 445
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/16 p1, 0xd

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    goto :goto_3

    .line 346
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_c

    .line 347
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_2

    .line 351
    :cond_c
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 353
    :goto_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/android/systemui/biometrics/UdfpsController;->isWithinSensorArea(Lcom/android/systemui/biometrics/UdfpsView;FFZ)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "UdfpsController#ACTION_DOWN"

    .line 354
    invoke-static {p1, v2}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 359
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    .line 360
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_4

    :cond_d
    :goto_3
    move v2, v3

    :cond_e
    :goto_4
    return v2
.end method

.method private showUdfpsOverlay(I)V
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/biometrics/UdfpsController;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateOverlay()V
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mServerRequest:Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;

    if-eqz v0, :cond_0

    .line 560
    iget v0, v0, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->mRequestReason:I

    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/UdfpsController;->showUdfpsOverlay(I)V

    goto :goto_0

    .line 562
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->hideUdfpsOverlay()V

    :goto_0
    return-void
.end method

.method private updateTouchListener()V
    .locals 3

    .line 821
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    if-nez v0, :cond_0

    return-void

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 827
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 830
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    .line 539
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    if-eqz p0, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsView;->dozeTimeTick()V

    :cond_0
    return-void
.end method

.method public getSensorLocation()Landroid/graphics/RectF;
    .locals 5

    .line 552
    new-instance v0, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationX:I

    iget v2, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    sub-int v3, v1, v2

    int-to-float v3, v3

    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationY:I

    sub-int v4, p0, v2

    int-to-float v4, v4

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-int/2addr p0, v2

    int-to-float p0, p0

    invoke-direct {v0, v3, v4, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method onAodInterrupt(IIFF)V
    .locals 7

    .line 725
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    if-eqz v0, :cond_0

    return-void

    .line 729
    :cond_0
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda7;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p4

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/biometrics/UdfpsController;IIFF)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAodInterruptRunnable:Ljava/lang/Runnable;

    .line 741
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mScreenOn:Z

    if-eqz p1, :cond_1

    .line 742
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 743
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAodInterruptRunnable:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method onCancelUdfps()V
    .locals 1

    .line 759
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp()V

    .line 760
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    if-nez v0, :cond_0

    return-void

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCancelAodTimeoutAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 764
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 765
    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCancelAodTimeoutAction:Ljava/lang/Runnable;

    :cond_1
    const/4 v0, 0x0

    .line 767
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    return-void
.end method

.method onConfigurationChanged()V
    .locals 0

    .line 613
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->hideUdfpsOverlay()V

    .line 616
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->updateOverlay()V

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 299
    :cond_0
    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/biometrics/UdfpsController;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;Z)Z

    move-result p0

    return p0
.end method
