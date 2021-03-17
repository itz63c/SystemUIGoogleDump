.class Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$1;
.super Ljava/lang/Object;
.source "KeyguardQsUserSwitchController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDozeAmountChanged(FF)V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->access$200(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;F)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->goingToFullShade()Z

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->access$000(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v1

    .line 88
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->access$100(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)I

    move-result v2

    .line 89
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    invoke-static {v3, p1}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->access$102(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;I)I

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->setKeyguardQsUserSwitchVisibility(IZZI)V

    return-void
.end method
