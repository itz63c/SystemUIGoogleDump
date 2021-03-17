.class public Lcom/android/systemui/biometrics/UdfpsController;
.super Ljava/lang/Object;
.source "UdfpsController.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeReceiver;
.implements Lcom/android/systemui/biometrics/HbmCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;
    }
.end annotation


# static fields
.field private static final AOD_INTERRUPT_TIMEOUT_MILLIS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "UdfpsController"


# instance fields
.field private mCancelAodTimeoutAction:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

.field private final mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIsAodInterruptActive:Z

.field private mIsOverlayRequested:Z

.field private mIsOverlayShowing:Z

.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end field

.field private mRequestReason:I

.field final mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mView:Lcom/android/systemui/biometrics/UdfpsView;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$87RtbLWSYXi0PZ14GfkKs_SbhlE(Lcom/android/systemui/biometrics/UdfpsController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsController;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$C2KPZ5_ds8saaFnXdzLJOBq8FZ4(Lcom/android/systemui/biometrics/UdfpsController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->lambda$hideUdfpsOverlay$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$K2enMb-gUz7zqU4xMEpqis0NmnU(Lcom/android/systemui/biometrics/UdfpsController;IIFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/biometrics/UdfpsController;->lambda$onFingerDown$3(IIFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$zQz8Q_I5s2r9qLMOUZ1Kp8_oF3w(Lcom/android/systemui/biometrics/UdfpsController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsController;->lambda$showUdfpsOverlay$1(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/hardware/fingerprint/FingerprintManager;Landroid/view/WindowManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance p2, Lcom/android/systemui/biometrics/UdfpsController-$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/UdfpsController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 167
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    .line 170
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 171
    iput-object p5, p0, Lcom/android/systemui/biometrics/UdfpsController;->mWindowManager:Landroid/view/WindowManager;

    .line 172
    iput-object p7, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 173
    iput-object p6, p0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->findFirstUdfps()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    move p5, p4

    .line 177
    :goto_0
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 179
    new-instance p5, Landroid/view/WindowManager$LayoutParams;

    const/16 p7, 0x7e5

    const v0, 0x1000120

    const/4 v1, -0x3

    invoke-direct {p5, p7, v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iput-object p5, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string p7, "UdfpsController"

    .line 186
    invoke-virtual {p5, p7}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {p5, p4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/16 p7, 0x33

    .line 188
    iput p7, p5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p7, 0x3

    .line 189
    iput p7, p5, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/high16 p7, 0x20000000

    .line 191
    iput p7, p5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 193
    sget p5, Lcom/android/systemui/R$layout;->udfps_view:I

    const/4 p7, 0x0

    invoke-virtual {p3, p5, p7, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/biometrics/UdfpsView;

    iput-object p3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    .line 194
    invoke-virtual {p3, p2}, Lcom/android/systemui/biometrics/UdfpsView;->setSensorProperties(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    .line 195
    invoke-virtual {p3, p0}, Lcom/android/systemui/biometrics/UdfpsView;->setHbmCallback(Lcom/android/systemui/biometrics/HbmCallback;)V

    .line 197
    invoke-virtual {p8, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->addExpansionChangedListener(Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;)V

    .line 198
    invoke-interface {p6, p3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 200
    new-instance p2, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    invoke-virtual {p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V

    .line 201
    iput-boolean p4, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsOverlayShowing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/UdfpsController;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsController;->showOverlay(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/UdfpsController;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->hideOverlay()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/biometrics/UdfpsView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    return-object p0
.end method

.method private computeLayoutParams(Lcom/android/systemui/biometrics/UdfpsAnimation;)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 254
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsAnimation;->getPaddingX()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 255
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsAnimation;->getPaddingY()I

    move-result v0

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v3, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationX:I

    iget v4, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 259
    iget v2, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationY:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v0

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    mul-int/lit8 v2, v4, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    .line 260
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v4, v2

    .line 261
    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 263
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 265
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 268
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    goto :goto_1

    .line 277
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v4, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationY:I

    sub-int/2addr p1, v4

    iget v4, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    sub-int/2addr p1, v4

    sub-int/2addr p1, v1

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 279
    iget p1, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationX:I

    sub-int/2addr p1, v4

    sub-int/2addr p1, v0

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 270
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v4, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationY:I

    iget v5, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 272
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v1, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationX:I

    sub-int/2addr p1, v1

    sub-int/2addr p1, v5

    sub-int/2addr p1, v0

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 286
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCoreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method private findFirstUdfps()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .locals 2

    .line 207
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

    .line 208
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getUdfpsAnimationForReason(I)Lcom/android/systemui/biometrics/UdfpsAnimation;
    .locals 2

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUdfpsAnimationForReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UdfpsController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 331
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Animation for reason "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not supported yet"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 329
    :cond_0
    new-instance p1, Lcom/android/systemui/biometrics/UdfpsAnimationFpmOther;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsAnimationFpmOther;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 327
    :cond_1
    new-instance p1, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-direct {p1, v0, v1, p0}, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    return-object p1

    .line 325
    :cond_2
    new-instance p1, Lcom/android/systemui/biometrics/UdfpsAnimationEnroll;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsAnimationEnroll;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method private hideOverlay()V
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsOverlayRequested:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsOverlayRequested:Z

    .line 241
    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mRequestReason:I

    .line 242
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->updateOverlay()V

    return-void
.end method

.method private hideUdfpsOverlay()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsController-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsController-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$hideUdfpsOverlay$2()V
    .locals 2

    .line 338
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsOverlayShowing:Z

    const-string v1, "UdfpsController"

    if-eqz v0, :cond_0

    const-string v0, "hideUdfpsOverlay | removing window"

    .line 339
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/biometrics/UdfpsView;->setExtras(Lcom/android/systemui/biometrics/UdfpsAnimation;Lcom/android/systemui/biometrics/UdfpsEnrollHelper;)V

    .line 341
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 343
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp()V

    .line 344
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 345
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsOverlayShowing:Z

    goto :goto_0

    :cond_0
    const-string p0, "hideUdfpsOverlay | the overlay is already hidden"

    .line 347
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 131
    check-cast p1, Lcom/android/systemui/biometrics/UdfpsView;

    .line 132
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsView;->isIlluminationRequested()Z

    move-result v0

    .line 133
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 p1, 0x3

    if-eq v1, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz v0, :cond_1

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp()V

    :cond_1
    return v2

    .line 136
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 137
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v4

    .line 136
    invoke-virtual {p1, v1, v3, v4}, Lcom/android/systemui/biometrics/UdfpsView;->isValidTouch(FFF)Z

    move-result p1

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getTouchMinor()F

    move-result v1

    .line 140
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result p2

    .line 139
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerDown(IIFF)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp()V

    :cond_4
    :goto_0
    return v2
.end method

.method private synthetic lambda$onFingerDown$3(IIFF)V
    .locals 6

    .line 393
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->onPointerDown(IIIFF)V

    return-void
.end method

.method private synthetic lambda$showUdfpsOverlay$1(I)V
    .locals 3

    .line 302
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsOverlayShowing:Z

    const-string v1, "UdfpsController"

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "showUdfpsOverlay | adding window"

    .line 304
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsController;->getUdfpsAnimationForReason(I)Lcom/android/systemui/biometrics/UdfpsAnimation;

    move-result-object p1

    .line 306
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/biometrics/UdfpsView;->setExtras(Lcom/android/systemui/biometrics/UdfpsAnimation;Lcom/android/systemui/biometrics/UdfpsEnrollHelper;)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsController;->computeLayoutParams(Lcom/android/systemui/biometrics/UdfpsAnimation;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x1

    .line 309
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsOverlayShowing:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "showUdfpsOverlay | failed to add window"

    .line 311
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p0, "showUdfpsOverlay | the overlay is already showing"

    .line 314
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onFingerDown(IIFF)V
    .locals 8

    .line 392
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    new-instance v7, Lcom/android/systemui/biometrics/UdfpsController-$$ExternalSyntheticLambda4;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/biometrics/UdfpsController-$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/biometrics/UdfpsController;IIFF)V

    invoke-virtual {v0, v7}, Lcom/android/systemui/biometrics/UdfpsView;->startIllumination(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onFingerUp()V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->onPointerUp(I)V

    .line 399
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsView;->stopIllumination()V

    return-void
.end method

.method private showOverlay(I)V
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsOverlayRequested:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsOverlayRequested:Z

    .line 232
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mRequestReason:I

    .line 233
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->updateOverlay()V

    return-void
.end method

.method private showUdfpsOverlay(I)V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsController-$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/biometrics/UdfpsController-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/biometrics/UdfpsController;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateOverlay()V
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsOverlayRequested:Z

    if-eqz v0, :cond_0

    .line 247
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mRequestReason:I

    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/UdfpsController;->showUdfpsOverlay(I)V

    goto :goto_0

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->hideUdfpsOverlay()V

    :goto_0
    return-void
.end method


# virtual methods
.method public disableHbm(Landroid/view/Surface;)V
    .locals 0

    return-void
.end method

.method public dozeTimeTick()V
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsView;->dozeTimeTick()V

    return-void
.end method

.method public enableHbm(Landroid/view/Surface;)V
    .locals 0

    return-void
.end method

.method public getSensorLocation()Landroid/graphics/RectF;
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mView:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsView;->getSensorRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method onAodInterrupt(IIFF)V
    .locals 4

    .line 359
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 362
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    .line 366
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsController-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsController-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    const-wide/16 v2, 0x3e8

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCancelAodTimeoutAction:Ljava/lang/Runnable;

    .line 369
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerDown(IIFF)V

    return-void
.end method

.method onCancelAodInterrupt()V
    .locals 1

    .line 379
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    if-nez v0, :cond_0

    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCancelAodTimeoutAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 383
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 384
    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCancelAodTimeoutAction:Ljava/lang/Runnable;

    :cond_1
    const/4 v0, 0x0

    .line 386
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    .line 387
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp()V

    return-void
.end method

.method onConfigurationChanged()V
    .locals 0

    .line 294
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->hideUdfpsOverlay()V

    .line 297
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController;->updateOverlay()V

    return-void
.end method
