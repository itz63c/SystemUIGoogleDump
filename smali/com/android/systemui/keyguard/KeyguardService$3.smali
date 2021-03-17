.class Lcom/android/systemui/keyguard/KeyguardService$3;
.super Lcom/android/internal/policy/IKeyguardService$Stub;
.source "KeyguardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardService;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardService;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 171
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    return-void
.end method

.method public dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 193
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 294
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardTimeout(Landroid/os/Bundle;)V

    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 312
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onBootCompleted()V

    return-void
.end method

.method public onDreamingStarted()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 199
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onDreamingStarted()V

    return-void
.end method

.method public onDreamingStopped()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 205
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onDreamingStopped()V

    return-void
.end method

.method public onFinishedGoingToSleep(IZ)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    .line 222
    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    move-result p1

    .line 221
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onFinishedGoingToSleep(IZ)V

    .line 224
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 1

    const-string v0, "KeyguardService.mBinder#onFinishedWakingUp"

    .line 240
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 242
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    .line 243
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onScreenTurnedOff()V

    .line 274
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    const-string v0, "KeyguardService.mBinder#onScreenTurnedOn"

    .line 257
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onScreenTurnedOn()V

    .line 260
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    .line 261
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onScreenTurningOff()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 267
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    return-void
.end method

.method public onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 1

    const-string v0, "KeyguardService.mBinder#onScreenTurningOn"

    .line 248
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 251
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    .line 252
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onShortPowerPressedGoHome()V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 331
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onShortPowerPressedGoHome()V

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    .line 212
    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    move-result v1

    .line 211
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onStartedGoingToSleep(I)V

    .line 213
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(II)V

    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 1

    const-string v0, "KeyguardService.mBinder#onStartedWakingUp"

    .line 230
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 232
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onStartedWakingUp()V

    .line 233
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(II)V

    .line 235
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onSystemReady()V
    .locals 1

    const-string v0, "KeyguardService.mBinder#onSystemReady"

    .line 285
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 287
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onSystemReady()V

    .line 288
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public setCurrentUser(I)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 306
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setCurrentUser(I)V

    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 280
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    return-void
.end method

.method public setOccluded(ZZ)V
    .locals 1

    const-string v0, "KeyguardService.mBinder#setOccluded"

    .line 184
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 186
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setOccluded(ZZ)V

    .line 187
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public setSwitchingUser(Z)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 300
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setSwitchingUser(Z)V

    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "KeyguardService.mBinder#startKeyguardExitAnimation"

    .line 322
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 324
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->startKeyguardExitAnimation(JJ)V

    .line 325
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 1

    const-string v0, "KeyguardService.mBinder#verifyUnlock"

    .line 176
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 178
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    .line 179
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
