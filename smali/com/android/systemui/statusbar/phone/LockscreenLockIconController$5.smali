.class Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;
.super Ljava/lang/Object;
.source "LockscreenLockIconController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardFadingAwayChanged()V
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1800(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1900(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1902(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z

    .line 522
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1000(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)V

    :cond_0
    return-void
.end method

.method public onKeyguardShowingChanged()V
    .locals 4

    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1700(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Z

    move-result v0

    .line 505
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1800(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1702(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 506
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1700(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1900(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 507
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1902(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z

    move v2, v1

    :cond_0
    if-nez v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1700(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->setBouncerHideAmount(F)V

    .line 512
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$2002(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z

    .line 514
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0, v2}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1000(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)V

    return-void
.end method

.method public onUnlockedChanged()V
    .locals 0

    .line 529
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$100(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    return-void
.end method
