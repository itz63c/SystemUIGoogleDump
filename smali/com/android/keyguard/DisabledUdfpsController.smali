.class public Lcom/android/keyguard/DisabledUdfpsController;
.super Lcom/android/systemui/util/ViewController;
.source "DisabledUdfpsController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/keyguard/DisabledUdfpsView;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# instance fields
.field private mAuthenticated:Z

.field private mIsBouncerShowing:Z

.field private mIsDozing:Z

.field private mIsKeyguardShowing:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRunningFPS:Z

.field private mShowButton:Z

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/DisabledUdfpsView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/biometrics/AuthController;Lcom/android/keyguard/KeyguardViewController;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 112
    new-instance p1, Lcom/android/keyguard/DisabledUdfpsController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/DisabledUdfpsController$1;-><init>(Lcom/android/keyguard/DisabledUdfpsController;)V

    iput-object p1, p0, Lcom/android/keyguard/DisabledUdfpsController;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 119
    new-instance v0, Lcom/android/keyguard/DisabledUdfpsController$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/DisabledUdfpsController$2;-><init>(Lcom/android/keyguard/DisabledUdfpsController;)V

    iput-object v0, p0, Lcom/android/keyguard/DisabledUdfpsController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 134
    new-instance v0, Lcom/android/keyguard/DisabledUdfpsController$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/DisabledUdfpsController$3;-><init>(Lcom/android/keyguard/DisabledUdfpsController;)V

    iput-object v0, p0, Lcom/android/keyguard/DisabledUdfpsController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/DisabledUdfpsView;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/DisabledUdfpsView;

    invoke-virtual {p4}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsProps()Ljava/util/List;

    move-result-object p4

    const/4 v0, 0x0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p1, p4}, Lcom/android/keyguard/DisabledUdfpsView;->setSensorProperties(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    .line 69
    iput-object p2, p0, Lcom/android/keyguard/DisabledUdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 70
    iput-object p3, p0, Lcom/android/keyguard/DisabledUdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 71
    iput-object p5, p0, Lcom/android/keyguard/DisabledUdfpsController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/DisabledUdfpsController;)Lcom/android/keyguard/KeyguardViewController;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/keyguard/DisabledUdfpsController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/keyguard/DisabledUdfpsController;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/android/keyguard/DisabledUdfpsController;->mIsKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/DisabledUdfpsController;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/keyguard/DisabledUdfpsController;->updateButtonVisibility()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/keyguard/DisabledUdfpsController;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/android/keyguard/DisabledUdfpsController;->mIsDozing:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/keyguard/DisabledUdfpsController;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/android/keyguard/DisabledUdfpsController;->mIsBouncerShowing:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/keyguard/DisabledUdfpsController;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/android/keyguard/DisabledUdfpsController;->mRunningFPS:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/keyguard/DisabledUdfpsController;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/android/keyguard/DisabledUdfpsController;->mAuthenticated:Z

    return p1
.end method

.method private updateButtonVisibility()V
    .locals 2

    .line 92
    iget-boolean v0, p0, Lcom/android/keyguard/DisabledUdfpsController;->mAuthenticated:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/DisabledUdfpsController;->mIsDozing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/DisabledUdfpsController;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/DisabledUdfpsController;->mIsBouncerShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/DisabledUdfpsController;->mRunningFPS:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/DisabledUdfpsController;->mShowButton:Z

    if-eqz v0, :cond_1

    .line 95
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/DisabledUdfpsView;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 97
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/DisabledUdfpsView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "DisabledUdfpsController state:"

    .line 103
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mShowBouncerButton: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/DisabledUdfpsController;->mShowButton:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIsDozing: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/DisabledUdfpsController;->mIsDozing:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIsKeyguardShowing: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/DisabledUdfpsController;->mIsKeyguardShowing:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIsBouncerShowing: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/DisabledUdfpsController;->mIsBouncerShowing:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mRunningFPS: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/DisabledUdfpsController;->mRunningFPS:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mAuthenticated: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/DisabledUdfpsController;->mAuthenticated:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected onViewAttached()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/android/keyguard/DisabledUdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/DisabledUdfpsController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 77
    iget-object v0, p0, Lcom/android/keyguard/DisabledUdfpsController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/DisabledUdfpsController;->mIsBouncerShowing:Z

    .line 79
    iget-object v0, p0, Lcom/android/keyguard/DisabledUdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/keyguard/DisabledUdfpsController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 80
    iget-object v0, p0, Lcom/android/keyguard/DisabledUdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/DisabledUdfpsController;->mIsKeyguardShowing:Z

    .line 81
    iget-object v0, p0, Lcom/android/keyguard/DisabledUdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/DisabledUdfpsController;->mIsDozing:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/keyguard/DisabledUdfpsController;->mAuthenticated:Z

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/keyguard/DisabledUdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/DisabledUdfpsController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 88
    iget-object v0, p0, Lcom/android/keyguard/DisabledUdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p0, p0, Lcom/android/keyguard/DisabledUdfpsController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method
