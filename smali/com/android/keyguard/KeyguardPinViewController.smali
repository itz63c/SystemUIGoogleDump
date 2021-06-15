.class public Lcom/android/keyguard/KeyguardPinViewController;
.super Lcom/android/keyguard/KeyguardPinBasedInputViewController;
.source "KeyguardPinViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/KeyguardPinBasedInputViewController<",
        "Lcom/android/keyguard/KeyguardPINView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public static synthetic $r8$lambda$diDiHdUp4vSQLIxLymlN25M94X8(Lcom/android/keyguard/KeyguardPinViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinViewController;->lambda$onViewAttached$0(Landroid/view/View;)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/keyguard/KeyguardPINView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p10}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;)V

    .line 42
    iput-object p2, p0, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method private synthetic lambda$onViewAttached$0(Landroid/view/View;)V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 53
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onCancelClicked()V

    return-void
.end method


# virtual methods
.method protected onViewAttached()V
    .locals 2

    .line 47
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->onViewAttached()V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPINView;

    sget v1, Lcom/android/systemui/R$id;->cancel_button:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v1, Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPinViewController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public reloadColors()V
    .locals 0

    .line 60
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->reloadColors()V

    .line 61
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardPINView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->reloadColors()V

    return-void
.end method

.method resetState()V
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->resetState()V

    .line 67
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPINView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 73
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result p0

    .line 72
    invoke-virtual {v0, p0, p1}, Lcom/android/keyguard/KeyguardPINView;->startDisappearAnimation(ZLjava/lang/Runnable;)Z

    move-result p0

    return p0
.end method
