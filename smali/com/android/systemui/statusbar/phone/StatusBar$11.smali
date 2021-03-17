.class Lcom/android/systemui/statusbar/phone/StatusBar$11;
.super Landroid/content/BroadcastReceiver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public static synthetic $r8$lambda$v7QHDCclaRSILBv2Np5MWKl3ewc(Lcom/android/systemui/statusbar/phone/StatusBar$11;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$11;->lambda$onReceive$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 2806
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 0

    .line 2835
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/bubbles/Bubbles;

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/Bubbles;->collapseStack()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "StatusBar#onReceive"

    .line 2809
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2811
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 2812
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2813
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    .line 2814
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1100(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2815
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1100(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/RemoteInputController;->closeRemoteInputs()V

    .line 2817
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubbles;

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/Bubbles;->isStackExpanded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2818
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubbles;

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/Bubbles;->collapseStack()V

    .line 2820
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isCurrentProfile(I)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "reason"

    .line 2822
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "recentapps"

    .line 2823
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    .line 2826
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(I)V

    goto :goto_0

    :cond_3
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 2829
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 2830
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    if-eqz p1, :cond_4

    .line 2831
    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setNotTouchable(Z)V

    .line 2833
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubbles;

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/Bubbles;->isStackExpanded()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2835
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$800(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/phone/StatusBar$11-$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$11-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$11;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2837
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 2838
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->resetUserExpandedStates()V

    goto :goto_0

    :cond_6
    const-string p2, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    .line 2840
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2841
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1800(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanelController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelController;->showDeviceMonitoringDialog()V

    .line 2843
    :cond_7
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
