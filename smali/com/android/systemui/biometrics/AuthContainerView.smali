.class public Lcom/android/systemui/biometrics/AuthContainerView;
.super Landroid/widget/LinearLayout;
.source "AuthContainerView.java"

# interfaces
.implements Lcom/android/systemui/biometrics/AuthDialog;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/AuthContainerView$CredentialCallback;,
        Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;,
        Lcom/android/systemui/biometrics/AuthContainerView$Injector;,
        Lcom/android/systemui/biometrics/AuthContainerView$Builder;,
        Lcom/android/systemui/biometrics/AuthContainerView$Config;
    }
.end annotation


# instance fields
.field final mBackgroundView:Landroid/widget/ImageView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mBiometricCallback:Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mBiometricScrollView:Landroid/widget/ScrollView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

.field mContainerState:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mCredentialAttestation:[B

.field private final mCredentialCallback:Lcom/android/systemui/biometrics/AuthContainerView$CredentialCallback;

.field mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mEffectiveUserId:I

.field private final mFaceProps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mFpProps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field final mFrameLayout:Landroid/widget/FrameLayout;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/systemui/biometrics/AuthContainerView$Injector;

.field private final mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field private final mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

.field private final mPanelView:Landroid/view/View;

.field mPendingCallbackReason:Ljava/lang/Integer;

.field private final mTranslationY:F

.field final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$5DFP01E41Qpmt63psMZyXBeWF9w(Lcom/android/systemui/biometrics/AuthContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->lambda$onAttachedToWindowInternal$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$oMF-WSV5YVcuos3s6avRqh8LAbU(Lcom/android/systemui/biometrics/AuthContainerView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/AuthContainerView;->lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ozJ1uOI87fzZkGt7LC3iItwQ_mw(Lcom/android/systemui/biometrics/AuthContainerView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthContainerView;->lambda$animateAway$3(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ySF5tx7ooDt4ZBVBk1Bqeqn34DI(Lcom/android/systemui/biometrics/AuthContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->lambda$animateAway$2()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/biometrics/AuthContainerView$Config;Lcom/android/systemui/biometrics/AuthContainerView$Injector;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/AuthContainerView$Config;",
            "Lcom/android/systemui/biometrics/AuthContainerView$Injector;",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    .line 258
    iget-object v0, p1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWindowToken:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    .line 260
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 261
    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mInjector:Lcom/android/systemui/biometrics/AuthContainerView$Injector;

    .line 262
    iput-object p3, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFpProps:Ljava/util/List;

    .line 263
    iput-object p4, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFaceProps:Ljava/util/List;

    .line 265
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/android/systemui/biometrics/AuthContainerView$Injector;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mUserId:I

    .line 266
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mEffectiveUserId:I

    .line 268
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mHandler:Landroid/os/Handler;

    .line 269
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWindowManager:Landroid/view/WindowManager;

    .line 270
    const-class v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 272
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->biometric_dialog_animation_translation_offset:I

    .line 273
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    .line 274
    sget-object v1, Lcom/android/systemui/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 275
    new-instance v1, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricCallback:Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    .line 276
    new-instance v1, Lcom/android/systemui/biometrics/AuthContainerView$CredentialCallback;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthContainerView$CredentialCallback;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialCallback:Lcom/android/systemui/biometrics/AuthContainerView$CredentialCallback;

    .line 278
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 279
    invoke-virtual {p2, v1, p0}, Lcom/android/systemui/biometrics/AuthContainerView$Injector;->inflateContainerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/widget/FrameLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 281
    invoke-virtual {p2, v2}, Lcom/android/systemui/biometrics/AuthContainerView$Injector;->getPanelView(Landroid/widget/FrameLayout;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelView:Landroid/view/View;

    .line 282
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3, v2}, Lcom/android/systemui/biometrics/AuthContainerView$Injector;->getPanelController(Landroid/content/Context;Landroid/view/View;)Lcom/android/systemui/biometrics/AuthPanelController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 285
    iget-object p2, p1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSensorIds:[I

    array-length p2, p2

    .line 286
    iget-object v2, p1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {v2}, Lcom/android/systemui/biometrics/Utils;->isBiometricAllowed(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_10

    const-string v2, "BiometricPrompt/AuthContainerView"

    const/4 v5, 0x0

    if-ne p2, v4, :cond_5

    .line 288
    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSensorIds:[I

    aget p1, p1, v0

    .line 289
    invoke-static {p3, p1}, Lcom/android/systemui/biometrics/Utils;->containsSensorId(Ljava/util/List;I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 291
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 292
    iget p4, p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    if-ne p4, p1, :cond_0

    goto :goto_0

    :cond_1
    move-object p3, v5

    .line 298
    :goto_0
    invoke-virtual {p3}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 299
    sget p1, Lcom/android/systemui/R$layout;->auth_biometric_udfps_view:I

    .line 300
    invoke-virtual {v1, p1, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/AuthBiometricUdfpsView;

    .line 301
    invoke-virtual {p1, p3}, Lcom/android/systemui/biometrics/AuthBiometricUdfpsView;->setSensorProps(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    .line 302
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    goto/16 :goto_6

    .line 304
    :cond_2
    sget p1, Lcom/android/systemui/R$layout;->auth_biometric_fingerprint_view:I

    .line 305
    invoke-virtual {v1, p1, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    goto/16 :goto_6

    .line 307
    :cond_3
    invoke-static {p4, p1}, Lcom/android/systemui/biometrics/Utils;->containsSensorId(Ljava/util/List;I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 308
    sget p1, Lcom/android/systemui/R$layout;->auth_biometric_face_view:I

    .line 309
    invoke-virtual {v1, p1, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/AuthBiometricFaceView;

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    goto/16 :goto_6

    .line 312
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown sensorId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 314
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    .line 315
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    return-void

    :cond_5
    if-ne p2, v3, :cond_f

    .line 321
    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSensorIds:[I

    array-length p2, p1

    const/4 p3, -0x1

    move v6, p3

    move v7, v6

    move p4, v0

    :goto_1
    if-ge p4, p2, :cond_9

    aget v8, p1, p4

    .line 322
    iget-object v9, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFpProps:Ljava/util/List;

    invoke-static {v9, v8}, Lcom/android/systemui/biometrics/Utils;->containsSensorId(Ljava/util/List;I)Z

    move-result v9

    if-eqz v9, :cond_6

    move v6, v8

    goto :goto_2

    .line 325
    :cond_6
    iget-object v9, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFaceProps:Ljava/util/List;

    invoke-static {v9, v8}, Lcom/android/systemui/biometrics/Utils;->containsSensorId(Ljava/util/List;I)Z

    move-result v9

    if-eqz v9, :cond_7

    move v7, v8

    goto :goto_2

    :cond_7
    if-eq v6, p3, :cond_8

    if-eq v7, p3, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_9
    :goto_3
    if-eq v6, p3, :cond_e

    if-ne v7, p3, :cond_a

    goto :goto_5

    .line 344
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFpProps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 345
    iget p3, p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    if-ne p3, v6, :cond_b

    goto :goto_4

    :cond_c
    move-object p2, v5

    :goto_4
    if-eqz p2, :cond_d

    .line 352
    sget p1, Lcom/android/systemui/R$layout;->auth_biometric_face_to_fingerprint_view:I

    .line 353
    invoke-virtual {v1, p1, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView;

    .line 355
    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView;->setFingerprintSensorProps(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    .line 356
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    goto :goto_6

    .line 358
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fingerprint props not found for sensor ID: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 360
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    .line 361
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    return-void

    :cond_e
    :goto_5
    const-string p1, "Missing fingerprint or face for dual-sensor config"

    .line 336
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 338
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    .line 339
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    return-void

    .line 365
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported sensor array, length: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 367
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    .line 368
    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    return-void

    .line 373
    :cond_10
    :goto_6
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mInjector:Lcom/android/systemui/biometrics/AuthContainerView$Injector;

    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/AuthContainerView$Injector;->getBiometricScrollView(Landroid/widget/FrameLayout;)Landroid/widget/ScrollView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    .line 374
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mInjector:Lcom/android/systemui/biometrics/AuthContainerView$Injector;

    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/AuthContainerView$Injector;->getBackgroundView(Landroid/widget/FrameLayout;)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    .line 376
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 379
    new-instance p1, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 390
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 391
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 392
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/AuthContainerView;)Lcom/android/systemui/biometrics/AuthContainerView$Injector;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mInjector:Lcom/android/systemui/biometrics/AuthContainerView$Injector;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/AuthContainerView;)Landroid/os/Handler;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/AuthContainerView;ZZ)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthContainerView;->addCredentialView(ZZ)V

    return-void
.end method

.method private addBiometricView()V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-boolean v1, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequireConfirmation:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView;->setRequireConfirmation(Z)V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView;->setPanelController(Lcom/android/systemui/biometrics/AuthPanelController;)V

    .line 408
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v1, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView;->setPromptInfo(Landroid/hardware/biometrics/PromptInfo;)V

    .line 409
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricCallback:Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView;->setCallback(Lcom/android/systemui/biometrics/AuthBiometricView$Callback;)V

    .line 410
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView;->setBackgroundView(Landroid/view/View;)V

    .line 411
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget v1, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView;->setUserId(I)V

    .line 412
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView;->setEffectiveUserId(I)V

    .line 413
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addCredentialView(ZZ)V
    .locals 6

    .line 423
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mInjector:Lcom/android/systemui/biometrics/AuthContainerView$Injector;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mEffectiveUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/biometrics/AuthContainerView$Injector;->getCredentialType(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v2, :cond_2

    if-eq v1, v4, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown credential type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 430
    :cond_1
    sget v2, Lcom/android/systemui/R$layout;->auth_credential_pattern_view:I

    invoke-virtual {v0, v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/AuthCredentialView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    goto :goto_1

    .line 435
    :cond_2
    :goto_0
    sget v2, Lcom/android/systemui/R$layout;->auth_credential_password_view:I

    invoke-virtual {v0, v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/AuthCredentialView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    .line 445
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 448
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/AuthCredentialView;->setContainerView(Lcom/android/systemui/biometrics/AuthContainerView;)V

    .line 449
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget v2, v2, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/biometrics/AuthCredentialView;->setUserId(I)V

    .line 450
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-wide v2, v2, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mOperationId:J

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/biometrics/AuthCredentialView;->setOperationId(J)V

    .line 451
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mEffectiveUserId:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/biometrics/AuthCredentialView;->setEffectiveUserId(I)V

    .line 452
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthCredentialView;->setCredentialType(I)V

    .line 453
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialCallback:Lcom/android/systemui/biometrics/AuthContainerView$CredentialCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthCredentialView;->setCallback(Lcom/android/systemui/biometrics/AuthCredentialView$Callback;)V

    .line 454
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v1, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthCredentialView;->setPromptInfo(Landroid/hardware/biometrics/PromptInfo;)V

    .line 455
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/biometrics/AuthCredentialView;->setPanelController(Lcom/android/systemui/biometrics/AuthPanelController;Z)V

    .line 456
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/AuthCredentialView;->setShouldAnimateContents(Z)V

    .line 457
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private animateAway(ZI)V
    .locals 3

    .line 645
    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    const-string v1, "BiometricPrompt/AuthContainerView"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string p1, "startDismiss(): waiting for onDialogAnimatedIn"

    .line 646
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 647
    iput p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    return-void

    :cond_0
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 652
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already dismissing, sendReason: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " reason: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 655
    :cond_1
    iput v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    if-eqz p1, :cond_2

    .line 658
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 660
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    .line 663
    :goto_0
    new-instance p1, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    .line 668
    new-instance p2, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 738
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e1

    const v4, 0x1002000

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 744
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 745
    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string v0, "BiometricPrompt"

    .line 746
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 747
    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    return-object v6
.end method

.method private synthetic lambda$animateAway$2()V
    .locals 1

    const/4 v0, 0x4

    .line 664
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 665
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->removeWindowIfAttached()V

    return-void
.end method

.method private synthetic lambda$animateAway$3(Ljava/lang/Runnable;)V
    .locals 4

    .line 669
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    .line 670
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    .line 671
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 672
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 673
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 674
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 675
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 676
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    .line 677
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 678
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 679
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 680
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 681
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 682
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 683
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    .line 684
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 685
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 686
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 687
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 688
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 690
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 691
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 692
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 693
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 694
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 695
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 383
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->sendEarlyUserCanceled()V

    .line 385
    invoke-virtual {p0, p2}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(I)V

    :cond_1
    return p2
.end method

.method private synthetic lambda$onAttachedToWindowInternal$1()V
    .locals 5

    .line 523
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 524
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    .line 525
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 526
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    .line 528
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 529
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 530
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 531
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 532
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 533
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 536
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget v4, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setY(F)V

    .line 538
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 539
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 540
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 541
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 542
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 545
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 546
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 547
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 548
    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 549
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 550
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private removeWindowIfAttached()V
    .locals 2

    .line 708
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->sendPendingCallbackIfNotNull()V

    .line 710
    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    .line 713
    :cond_0
    iput v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    .line 714
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private sendPendingCallbackIfNotNull()V
    .locals 3

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pendingCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricPrompt/AuthContainerView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 702
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v1, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthDialogCallback;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialAttestation:[B

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/biometrics/AuthDialogCallback;->onDismissed(I[B)V

    const/4 v0, 0x0

    .line 703
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method private setScrollViewGravity(I)V
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    .line 557
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 558
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 559
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method animateAway(I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    .line 641
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(ZI)V

    return-void
.end method

.method public animateToCredentialUI()V
    .locals 0

    .line 636
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->startTransitionToCredentialUI()V

    return-void
.end method

.method public dismissFromSystemServer()V
    .locals 1

    const/4 v0, 0x0

    .line 592
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(ZI)V

    return-void
.end method

.method public dismissWithoutCallback(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 584
    invoke-direct {p0, p1, p1}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(ZI)V

    goto :goto_0

    .line 586
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->removeWindowIfAttached()V

    :goto_0
    return-void
.end method

.method public getOpPackageName()Ljava/lang/String;
    .locals 0

    .line 631
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mOpPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public isAllowDeviceCredentials()Z
    .locals 0

    .line 402
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {p0}, Lcom/android/systemui/biometrics/Utils;->isDeviceCredentialAllowed(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result p0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 468
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 469
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->onAttachedToWindowInternal()V

    return-void
.end method

.method onAttachedToWindowInternal()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 476
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {v0}, Lcom/android/systemui/biometrics/Utils;->isBiometricAllowed(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 477
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->addBiometricView()V

    goto :goto_0

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {v0}, Lcom/android/systemui/biometrics/Utils;->isDeviceCredentialAllowed(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 479
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->addCredentialView(ZZ)V

    .line 485
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    instance-of v0, v0, Lcom/android/systemui/biometrics/AuthBiometricUdfpsView;

    const/4 v2, 0x3

    if-eqz v0, :cond_4

    .line 486
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/16 v3, 0x51

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported display rotation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "BiometricPrompt/AuthContainerView"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthPanelController;->setPosition(I)V

    .line 507
    invoke-direct {p0, v3}, Lcom/android/systemui/biometrics/AuthContainerView;->setScrollViewGravity(I)V

    goto :goto_1

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/AuthPanelController;->setPosition(I)V

    const/16 v0, 0x13

    .line 500
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->setScrollViewGravity(I)V

    goto :goto_1

    .line 494
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/biometrics/AuthPanelController;->setPosition(I)V

    const/16 v0, 0x15

    .line 495
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->setScrollViewGravity(I)V

    goto :goto_1

    .line 489
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthPanelController;->setPosition(I)V

    .line 490
    invoke-direct {p0, v3}, Lcom/android/systemui/biometrics/AuthContainerView;->setScrollViewGravity(I)V

    .line 512
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-boolean v0, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSkipIntro:Z

    if-eqz v0, :cond_5

    .line 513
    iput v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    goto :goto_2

    .line 515
    :cond_5
    iput v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    .line 518
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 519
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    iget v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setY(F)V

    const/4 v0, 0x0

    .line 521
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 522
    new-instance v0, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    .line 481
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 482
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAuthenticationFailed(Ljava/lang/String;)V
    .locals 0

    .line 602
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->onAuthenticationFailed(Ljava/lang/String;)V

    return-void
.end method

.method public onAuthenticationSucceeded()V
    .locals 0

    .line 597
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onAuthenticationSucceeded()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 564
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 565
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method

.method onDialogAnimatedIn()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 719
    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "BiometricPrompt/AuthContainerView"

    const-string v1, "onDialogAnimatedIn(): mPendingDismissDialog=true, dismissing now"

    .line 720
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 721
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(I)V

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 724
    iput v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    .line 725
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthDialogCallback;

    invoke-interface {v0}, Lcom/android/systemui/biometrics/AuthDialogCallback;->onDialogAnimatedIn()V

    .line 727
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onDialogAnimatedIn()V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    .line 612
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onHelp(Ljava/lang/String;)V
    .locals 0

    .line 607
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->onHelp(Ljava/lang/String;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 462
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 463
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/biometrics/AuthPanelController;->setContainerDimensions(II)V

    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .locals 4

    .line 617
    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    const-string v1, "container_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 620
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "biometric_showing"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 622
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "credential_showing"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 624
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    if-eqz p0, :cond_2

    .line 625
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->onSaveState(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 1

    const/4 v0, 0x1

    .line 570
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(I)V

    return-void
.end method

.method sendEarlyUserCanceled()V
    .locals 1

    .line 396
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthDialogCallback;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/biometrics/AuthDialogCallback;->onSystemEvent(I)V

    return-void
.end method

.method public show(Landroid/view/WindowManager;Landroid/os/Bundle;)V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {v0, p2}, Lcom/android/systemui/biometrics/AuthBiometricView;->restoreState(Landroid/os/Bundle;)V

    .line 578
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWindowToken:Landroid/os/IBinder;

    invoke-static {p2}, Lcom/android/systemui/biometrics/AuthContainerView;->getLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
