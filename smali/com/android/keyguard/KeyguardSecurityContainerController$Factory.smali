.class Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityContainerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# instance fields
.field private final mAdminSecondaryLockScreenControllerFactory:Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mView:Lcom/android/keyguard/KeyguardSecurityContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mView:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 495
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mAdminSecondaryLockScreenControllerFactory:Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;

    .line 496
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 497
    iput-object p4, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 498
    iput-object p5, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 499
    iput-object p6, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 500
    iput-object p7, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 501
    iput-object p8, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 502
    iput-object p9, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    .line 503
    iput-object p10, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    return-void
.end method


# virtual methods
.method public create(Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;)Lcom/android/keyguard/KeyguardSecurityContainerController;
    .locals 14

    .line 508
    new-instance v13, Lcom/android/keyguard/KeyguardSecurityContainerController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mView:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mAdminSecondaryLockScreenControllerFactory:Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v10, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    iget-object v11, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    const/4 v12, 0x0

    move-object v0, v13

    move-object v9, p1

    invoke-direct/range {v0 .. v12}, Lcom/android/keyguard/KeyguardSecurityContainerController;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardSecurityContainerController$1;)V

    return-object v13
.end method
