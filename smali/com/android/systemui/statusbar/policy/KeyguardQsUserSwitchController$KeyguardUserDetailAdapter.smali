.class Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$KeyguardUserDetailAdapter;
.super Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserDetailAdapter;
.source "KeyguardQsUserSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyguardUserDetailAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$KeyguardUserDetailAdapter;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    .line 327
    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserDetailAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;)V

    return-void
.end method


# virtual methods
.method public onDoneButtonClicked()Z
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$KeyguardUserDetailAdapter;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->access$400(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$KeyguardUserDetailAdapter;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->access$400(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateCloseQs(Z)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldAnimate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
