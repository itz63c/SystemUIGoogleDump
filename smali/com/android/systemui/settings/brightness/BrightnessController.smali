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
.field private static final BRIGHTNESS_FLOAT_URI:Landroid/net/Uri;

.field private static final BRIGHTNESS_FOR_VR_FLOAT_URI:Landroid/net/Uri;

.field private static final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field private static final BRIGHTNESS_URI:Landroid/net/Uri;


# instance fields
.field private volatile mAutomatic:Z

.field private final mAutomaticAvailable:Z

.field private final mBackgroundHandler:Landroid/os/Handler;

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

.field private final mDefaultBacklight:F

.field private final mDefaultBacklightForVr:F

.field private final mDisplayId:I

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mExternalChange:Z

.field private final mHandler:Landroid/os/Handler;

.field private volatile mIsVrModeEnabled:Z

.field private mListening:Z

.field private final mMaximumBacklight:F

.field private final mMaximumBacklightForVr:F

.field private final mMinimumBacklight:F

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

    .line 67
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    const-string v0, "screen_brightness"

    .line 69
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_URI:Landroid/net/Uri;

    const-string v0, "screen_brightness_float"

    .line 71
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_FLOAT_URI:Landroid/net/Uri;

    const-string v0, "screen_brightness_for_vr_float"

    .line 73
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_FOR_VR_FLOAT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/brightness/ToggleSlider;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 2

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    .line 194
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$2;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    .line 221
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$3;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    .line 241
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$4;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    .line 262
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$5;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 270
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$6;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mHandler:Landroid/os/Handler;

    .line 302
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    .line 303
    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    const v1, 0xffff

    .line 304
    invoke-interface {p2, v1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setMax(I)V

    .line 305
    new-instance p2, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 306
    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessController$7;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/settings/brightness/BrightnessController$7;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 313
    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayId:I

    .line 316
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    const/4 p3, 0x0

    .line 317
    invoke-virtual {p2, p3}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result p3

    iput p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMinimumBacklight:F

    const/4 p3, 0x1

    .line 319
    invoke-virtual {p2, p3}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result p3

    iput p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMaximumBacklight:F

    .line 321
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Display;->getBrightnessDefault()F

    move-result p3

    iput p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDefaultBacklight:F

    const/4 p3, 0x5

    .line 322
    invoke-virtual {p2, p3}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result p3

    iput p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMinimumBacklightForVr:F

    const/4 p3, 0x6

    .line 324
    invoke-virtual {p2, p3}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result p3

    iput p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMaximumBacklightForVr:F

    const/4 p3, 0x7

    .line 326
    invoke-virtual {p2, p3}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDefaultBacklightForVr:F

    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x111002d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mAutomaticAvailable:Z

    .line 332
    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo p1, "vrmanager"

    .line 333
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/brightness/BrightnessController;)Ljava/lang/Runnable;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/service/vr/IVrManager;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/service/vr/IVrStateCallbacks;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/settings/brightness/BrightnessController;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/settings/brightness/BrightnessController;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/settings/brightness/BrightnessController;)Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/settings/brightness/BrightnessController;)Lcom/android/systemui/settings/CurrentUserTracker;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/os/Handler;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/settings/brightness/BrightnessController;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mAutomaticAvailable:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/android/systemui/settings/brightness/BrightnessController;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mAutomatic:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/settings/brightness/BrightnessController;)F
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDefaultBacklightForVr:F

    return p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/settings/brightness/BrightnessController;)F
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDefaultBacklight:F

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/os/Handler;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/android/systemui/settings/brightness/BrightnessController;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mExternalChange:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/settings/brightness/BrightnessController;FZ)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/settings/brightness/BrightnessController;->updateSlider(FZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/settings/brightness/BrightnessController;)Lcom/android/systemui/settings/brightness/ToggleSlider;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/settings/brightness/BrightnessController;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessController;->updateVrMode(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/brightness/BrightnessController;)Ljava/lang/Runnable;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_FLOAT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_FOR_VR_FLOAT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/settings/brightness/BrightnessController;)Ljava/util/ArrayList;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/content/Context;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/settings/brightness/BrightnessController;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mListening:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/settings/brightness/BrightnessController;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mListening:Z

    return p1
.end method

.method private animateSliderTo(I)V
    .locals 4

    .line 458
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControlValueInitialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    invoke-interface {v0, p1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setValue(I)V

    .line 461
    iput-boolean v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControlValueInitialized:Z

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    .line 466
    iget-object v3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    invoke-interface {v3}, Lcom/android/systemui/settings/brightness/ToggleSlider;->getValue()I

    move-result v3

    aput v3, v0, v2

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 467
    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 472
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 473
    invoke-interface {v0}, Lcom/android/systemui/settings/brightness/ToggleSlider;->getValue()I

    move-result v0

    sub-int/2addr v0, p1

    .line 472
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0xbb8

    const v0, 0xffff

    div-int/2addr p1, v0

    int-to-long v0, p1

    .line 474
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 475
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$animateSliderTo$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    const/4 v0, 0x1

    .line 468
    iput-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mExternalChange:Z

    .line 469
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setValue(I)V

    const/4 p1, 0x0

    .line 470
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mExternalChange:Z

    return-void
.end method

.method private setBrightness(F)V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayId:I

    invoke-virtual {v0, p0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(IF)V

    return-void
.end method

.method private updateSlider(FZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 439
    iget p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMinimumBacklightForVr:F

    .line 440
    iget v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMaximumBacklightForVr:F

    goto :goto_0

    .line 442
    :cond_0
    iget p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMinimumBacklight:F

    .line 443
    iget v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMaximumBacklight:F

    .line 446
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 447
    invoke-interface {v1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->getValue()I

    move-result v1

    invoke-static {v1, p2, v0}, Lcom/android/settingslib/display/BrightnessUtils;->convertGammaToLinearFloat(IFF)F

    move-result v1

    .line 446
    invoke-static {p1, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 453
    :cond_1
    invoke-static {p1, p2, v0}, Lcom/android/settingslib/display/BrightnessUtils;->convertLinearToGammaFloat(FFF)I

    move-result p1

    .line 454
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessController;->animateSliderTo(I)V

    return-void
.end method

.method private updateVrMode(Z)V
    .locals 1

    .line 429
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 430
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z

    .line 431
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public checkRestrictionAndSetEnabled()V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$9;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChanged(ZZIZ)V
    .locals 3

    .line 358
    iget-boolean p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mExternalChange:Z

    if-eqz p2, :cond_0

    return-void

    .line 360
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    .line 361
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 369
    :cond_1
    iget-boolean p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z

    if-eqz p2, :cond_2

    const/16 p2, 0x1f2

    .line 371
    iget v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMinimumBacklightForVr:F

    .line 372
    iget v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMaximumBacklightForVr:F

    const-string v2, "screen_brightness_for_vr_float"

    goto :goto_1

    .line 375
    :cond_2
    iget-boolean p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mAutomatic:Z

    if-eqz p2, :cond_3

    const/16 p2, 0xdb

    goto :goto_0

    :cond_3
    const/16 p2, 0xda

    .line 378
    :goto_0
    iget v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMinimumBacklight:F

    .line 379
    iget v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMaximumBacklight:F

    const-string v2, "screen_brightness_float"

    .line 382
    :goto_1
    invoke-static {p3, v0, v1}, Lcom/android/settingslib/display/BrightnessUtils;->convertGammaToLinearFloat(IFF)F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, v0}, Landroid/util/MathUtils;->min(FF)F

    move-result p3

    if-eqz p4, :cond_4

    .line 387
    iget-object p4, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    .line 388
    invoke-static {p3}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v0

    .line 387
    invoke-static {p4, p2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 391
    :cond_4
    invoke-direct {p0, p3}, Lcom/android/systemui/settings/brightness/BrightnessController;->setBrightness(F)V

    if-nez p1, :cond_5

    .line 393
    new-instance p1, Lcom/android/systemui/settings/brightness/BrightnessController$8;

    invoke-direct {p1, p0, v2, p3}, Lcom/android/systemui/settings/brightness/BrightnessController$8;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;Ljava/lang/String;F)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 401
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

    .line 402
    invoke-interface {p1}, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public registerCallbacks()V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterCallbacks()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControlValueInitialized:Z

    return-void
.end method
