.class Lcom/android/keyguard/KeyguardUpdateMonitor$14;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsUdfpsRunningWhileDozing:Z

.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 1308
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method

.method private cancelAodInterrupt()V
    .locals 5

    .line 1356
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->mIsUdfpsRunningWhileDozing:Z

    if-eqz v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x4

    const-string v4, "com.android.systemui:AOD_INTERRUPT_END"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 1360
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/systemui/biometrics/AuthController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthController;->onCancelUdfps()V

    const/4 v0, 0x0

    .line 1361
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->mIsUdfpsRunningWhileDozing:Z

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 0

    .line 1338
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2300(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    .line 1332
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2200(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V

    .line 1333
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->cancelAodInterrupt()V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .line 1313
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 1314
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->cancelAodInterrupt()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1327
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor#onAuthenticationSucceeded"

    .line 1319
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1320
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->isStrongBiometric()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2000(Lcom/android/keyguard/KeyguardUpdateMonitor;IZ)V

    .line 1321
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->cancelAodInterrupt()V

    .line 1322
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onUdfpsPointerDown(I)V
    .locals 2

    .line 1343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUdfpsPointerDown, sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardUpdateMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1346
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->mIsUdfpsRunningWhileDozing:Z

    :cond_0
    return-void
.end method

.method public onUdfpsPointerUp(I)V
    .locals 1

    .line 1352
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUdfpsPointerUp, sensorId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardUpdateMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
