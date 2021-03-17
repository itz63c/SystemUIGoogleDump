.class public Lcom/google/android/systemui/fingerprint/UdfpsControllerGoogle;
.super Lcom/android/systemui/biometrics/UdfpsController;
.source "UdfpsControllerGoogle.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UdfpsControllerGoogle"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "udfps_jni"

    .line 56
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/hardware/fingerprint/FingerprintManager;Landroid/view/WindowManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/biometrics/UdfpsController;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/hardware/fingerprint/FingerprintManager;Landroid/view/WindowManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method private native setHbmNative(Landroid/view/Surface;Z)V
.end method


# virtual methods
.method public disableHbm(Landroid/view/Surface;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/fingerprint/UdfpsControllerGoogle;->setHbmNative(Landroid/view/Surface;Z)V

    return-void
.end method

.method public enableHbm(Landroid/view/Surface;)V
    .locals 1

    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/fingerprint/UdfpsControllerGoogle;->setHbmNative(Landroid/view/Surface;Z)V

    return-void
.end method
