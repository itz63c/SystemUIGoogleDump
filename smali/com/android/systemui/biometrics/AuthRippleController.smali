.class public final Lcom/android/systemui/biometrics/AuthRippleController;
.super Lcom/android/systemui/util/ViewController;
.source "AuthRippleController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/AuthRippleController$AuthRippleCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/biometrics/AuthRippleView;",
        ">;"
    }
.end annotation


# instance fields
.field private final authController:Lcom/android/systemui/biometrics/AuthController;

.field private final commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

.field private final configurationChangedListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private faceSensorLocation:Landroid/graphics/PointF;

.field private fingerprintSensorLocation:Landroid/graphics/PointF;

.field private final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field private final sysuiContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/biometrics/AuthRippleView;)V
    .locals 1

    const-string/jumbo v0, "sysuiContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardUpdateMonitor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandRegistry"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationShadeWindowController"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p7}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 42
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->sysuiContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthRippleController;->authController:Lcom/android/systemui/biometrics/AuthController;

    .line 44
    iput-object p3, p0, Lcom/android/systemui/biometrics/AuthRippleController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 45
    iput-object p4, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 46
    iput-object p5, p0, Lcom/android/systemui/biometrics/AuthRippleController;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    .line 47
    iput-object p6, p0, Lcom/android/systemui/biometrics/AuthRippleController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 101
    new-instance p1, Lcom/android/systemui/biometrics/AuthRippleController$keyguardUpdateMonitorCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/AuthRippleController$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleController;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 112
    new-instance p1, Lcom/android/systemui/biometrics/AuthRippleController$configurationChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/AuthRippleController$configurationChangedListener$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleController;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->configurationChangedListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    return-void
.end method

.method public static final synthetic access$getFaceSensorLocation$p(Lcom/android/systemui/biometrics/AuthRippleController;)Landroid/graphics/PointF;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->faceSensorLocation:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static final synthetic access$getFingerprintSensorLocation$p(Lcom/android/systemui/biometrics/AuthRippleController;)Landroid/graphics/PointF;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->fingerprintSensorLocation:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static final synthetic access$getMView$p(Lcom/android/systemui/biometrics/AuthRippleController;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getNotificationShadeWindowController$p(Lcom/android/systemui/biometrics/AuthRippleController;)Lcom/android/systemui/statusbar/NotificationShadeWindowController;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    return-object p0
.end method

.method public static final synthetic access$showRipple(Lcom/android/systemui/biometrics/AuthRippleController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->showRipple()V

    return-void
.end method

.method public static final synthetic access$showRipple(Lcom/android/systemui/biometrics/AuthRippleController;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthRippleController;->showRipple(Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method public static final synthetic access$updateRippleColor(Lcom/android/systemui/biometrics/AuthRippleController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->updateRippleColor()V

    return-void
.end method

.method public static final synthetic access$updateSensorLocation(Lcom/android/systemui/biometrics/AuthRippleController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->updateSensorLocation()V

    return-void
.end method

.method private final showRipple()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setForcePluginOpen(ZLjava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/biometrics/AuthRippleView;

    new-instance v1, Lcom/android/systemui/biometrics/AuthRippleController$showRipple$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthRippleController$showRipple$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthRippleView;->startRipple(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final showRipple(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 72
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->fingerprintSensorLocation:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    .line 74
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/biometrics/AuthRippleView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/biometrics/AuthRippleView;->setSensorLocation(Landroid/graphics/PointF;)V

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->showRipple()V

    goto :goto_0

    .line 76
    :cond_0
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_1

    .line 77
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->faceSensorLocation:Landroid/graphics/PointF;

    if-eqz p1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/biometrics/AuthRippleView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/biometrics/AuthRippleView;->setSensorLocation(Landroid/graphics/PointF;)V

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->showRipple()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final updateRippleColor()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/biometrics/AuthRippleView;

    .line 97
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->sysuiContext:Landroid/content/Context;

    const v1, 0x1010435

    invoke-static {p0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    .line 96
    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/AuthRippleView;->setColor(I)V

    return-void
.end method

.method private final updateSensorLocation()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->authController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsSensorLocation()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->fingerprintSensorLocation:Landroid/graphics/PointF;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->authController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthController;->getFaceAuthSensorLocation()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->faceSensorLocation:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public onViewAttached()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->updateRippleColor()V

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->updateSensorLocation()V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->configurationChangedListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    new-instance v1, Lcom/android/systemui/biometrics/AuthRippleController$onViewAttached$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthRippleController$onViewAttached$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleController;)V

    const-string p0, "auth-ripple"

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onViewDetached()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->configurationChangedListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    const-string v1, "auth-ripple"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->unregisterCommand(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setForcePluginOpen(ZLjava/lang/Object;)V

    return-void
.end method
