.class public Lcom/android/systemui/settings/brightness/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/brightness/BrightnessController$Factory;,
        Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;,
        Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessStateChangeCallback;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_FOR_VR_FLOAT_URI:Landroid/net/Uri;

.field private static final BRIGHTNESS_MODE_URI:Landroid/net/Uri;


# instance fields
.field private volatile mAutomatic:Z

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private mBrightnessMax:F

.field private mBrightnessMin:F

.field private final mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

.field private mControlValueInitialized:Z

.field private final mDisplayId:I

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mExternalChange:Z

.field private final mHandler:Landroid/os/Handler;

.field private volatile mIsVrModeEnabled:Z

.field private mListening:Z

.field private final mMaximumBacklightForVr:F

.field private final mMinimumBacklightForVr:F

.field private mSliderAnimator:Landroid/animation/ValueAnimator;

.field private final mStartListeningRunnable:Ljava/lang/Runnable;

.field private final mStopListeningRunnable:Ljava/lang/Runnable;

.field private final mUpdateModeRunnable:Ljava/lang/Runnable;

.field private final mUpdateSliderRunnable:Ljava/lang/Runnable;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mVrManager:Landroid/service/vr/IVrManager;

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method public static synthetic $r8$lambda$WP6RiPtwyjjuHP_x2-_F9MKSWIo(Lcom/android/systemui/settings/brightness/BrightnessController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessController;->lambda$animateSliderTo$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "screen_brightness_mode"

    .line 68
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    const-string v0, "screen_brightness_for_vr_float"

    .line 70
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_FOR_VR_FLOAT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/brightness/ToggleSlider;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 2

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMin:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 108
    iput v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMax:F

    .line 161
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$2;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    .line 190
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$3;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    .line 217
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$4;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    .line 233
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$5;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    .line 250
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$6;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 258
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$7;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mHandler:Landroid/os/Handler;

    .line 287
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    .line 288
    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    const v1, 0xffff

    .line 289
    invoke-interface {p2, v1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setMax(I)V

    .line 290
    new-instance p2, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 291
    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessController$8;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/settings/brightness/BrightnessController$8;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 298
    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayId:I

    .line 301
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    const/4 p3, 0x5

    .line 302
    invoke-virtual {p2, p3}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result p3

    iput p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMinimumBacklightForVr:F

    const/4 p3, 0x6

    .line 304
    invoke-virtual {p2, p3}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMaximumBacklightForVr:F

    .line 307
    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo p1, "vrmanager"

    .line 308
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/brightness/BrightnessController;)Ljava/lang/Runnable;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/os/Handler;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/settings/brightness/BrightnessController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mListening:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/settings/brightness/BrightnessController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mListening:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/service/vr/IVrManager;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/service/vr/IVrStateCallbacks;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/settings/brightness/BrightnessController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/settings/brightness/BrightnessController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/settings/brightness/BrightnessController;)Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/settings/brightness/BrightnessController;)Lcom/android/systemui/settings/CurrentUserTracker;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/android/systemui/settings/brightness/BrightnessController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mAutomatic:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/systemui/settings/brightness/BrightnessController;F)F
    .locals 0

    .line 58
    iput p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMax:F

    return p1
.end method

.method static synthetic access$1802(Lcom/android/systemui/settings/brightness/BrightnessController;F)F
    .locals 0

    .line 58
    iput p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMin:F

    return p1
.end method

.method static synthetic access$1902(Lcom/android/systemui/settings/brightness/BrightnessController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mExternalChange:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/brightness/BrightnessController;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessController;->notifyCallbacks()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/settings/brightness/BrightnessController;FZ)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/settings/brightness/BrightnessController;->updateSlider(FZ)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/settings/brightness/BrightnessController;)Lcom/android/systemui/settings/brightness/ToggleSlider;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/settings/brightness/BrightnessController;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessController;->updateVrMode(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/settings/brightness/BrightnessController;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayId:I

    return p0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    .line 58
    sget-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/brightness/BrightnessController;)Ljava/lang/Runnable;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .locals 1

    .line 58
    sget-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_FOR_VR_FLOAT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/content/Context;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/hardware/display/DisplayManager$DisplayListener;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/os/Handler;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/hardware/display/DisplayManager;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method private animateSliderTo(I)V
    .locals 4

    .line 422
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControlValueInitialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    invoke-interface {v0, p1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setValue(I)V

    .line 425
    iput-boolean v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControlValueInitialized:Z

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    .line 430
    iget-object v3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    invoke-interface {v3}, Lcom/android/systemui/settings/brightness/ToggleSlider;->getValue()I

    move-result v3

    aput v3, v0, v2

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 431
    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 436
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 437
    invoke-interface {v0}, Lcom/android/systemui/settings/brightness/ToggleSlider;->getValue()I

    move-result v0

    sub-int/2addr v0, p1

    .line 436
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0xbb8

    const v0, 0xffff

    div-int/2addr p1, v0

    int-to-long v0, p1

    .line 438
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 439
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$animateSliderTo$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    const/4 v0, 0x1

    .line 432
    iput-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mExternalChange:Z

    .line 433
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setValue(I)V

    const/4 p1, 0x0

    .line 434
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mExternalChange:Z

    return-void
.end method

.method private notifyCallbacks()V
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 445
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessStateChangeCallback;

    invoke-interface {v2}, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setBrightness(F)V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayId:I

    invoke-virtual {v0, p0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(IF)V

    return-void
.end method

.method private updateSlider(FZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 403
    iget p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMinimumBacklightForVr:F

    .line 404
    iget v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMaximumBacklightForVr:F

    goto :goto_0

    .line 406
    :cond_0
    iget p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMin:F

    .line 407
    iget v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMax:F

    .line 410
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 411
    invoke-interface {v1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->getValue()I

    move-result v1

    invoke-static {v1, p2, v0}, Lcom/android/settingslib/display/BrightnessUtils;->convertGammaToLinearFloat(IFF)F

    move-result v1

    .line 410
    invoke-static {p1, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 417
    :cond_1
    invoke-static {p1, p2, v0}, Lcom/android/settingslib/display/BrightnessUtils;->convertLinearToGammaFloat(FFF)I

    move-result p1

    .line 418
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessController;->animateSliderTo(I)V

    return-void
.end method

.method private updateVrMode(Z)V
    .locals 1

    .line 393
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 394
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z

    .line 395
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public checkRestrictionAndSetEnabled()V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$10;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChanged(ZIZ)V
    .locals 3

    .line 332
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mExternalChange:Z

    if-eqz v0, :cond_0

    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 342
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x1f2

    .line 344
    iget v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMinimumBacklightForVr:F

    .line 345
    iget v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMaximumBacklightForVr:F

    goto :goto_1

    .line 347
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mAutomatic:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xdb

    goto :goto_0

    :cond_3
    const/16 v0, 0xda

    .line 350
    :goto_0
    iget v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMin:F

    .line 351
    iget v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMax:F

    .line 354
    :goto_1
    invoke-static {p2, v1, v2}, Lcom/android/settingslib/display/BrightnessUtils;->convertGammaToLinearFloat(IFF)F

    move-result p2

    .line 353
    invoke-static {p2, v2}, Landroid/util/MathUtils;->min(FF)F

    move-result p2

    if-eqz p3, :cond_4

    .line 358
    iget-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    .line 359
    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    .line 358
    invoke-static {p3, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 362
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/systemui/settings/brightness/BrightnessController;->setBrightness(F)V

    if-nez p1, :cond_5

    .line 364
    new-instance p1, Lcom/android/systemui/settings/brightness/BrightnessController$9;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/settings/brightness/BrightnessController$9;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;F)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 371
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessStateChangeCallback;

    .line 372
    invoke-interface {p1}, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public registerCallbacks()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterCallbacks()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 327
    iput-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControlValueInitialized:Z

    return-void
.end method
