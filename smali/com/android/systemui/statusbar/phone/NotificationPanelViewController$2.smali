.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$2;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserSwitcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardUserSwitcherChanged(Z)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 305
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->isSimpleUserSwitcher()Z

    move-result v0

    if-nez v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 308
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 309
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    .line 307
    :cond_1
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V

    :cond_2
    :goto_0
    return-void
.end method
