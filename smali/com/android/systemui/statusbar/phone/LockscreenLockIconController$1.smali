.class Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;
.super Ljava/lang/Object;
.source "LockscreenLockIconController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


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

    .line 383
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDozeAmountChanged(FF)V
    .locals 0

    .line 394
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 395
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$300(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setDozeAmount(F)V

    :cond_0
    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$000(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$002(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z

    .line 388
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$100(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$400(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;I)V

    return-void
.end method
