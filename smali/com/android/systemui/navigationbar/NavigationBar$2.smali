.class Lcom/android/systemui/navigationbar/NavigationBar$2;
.super Ljava/lang/Object;
.source "NavigationBar.java"

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/NavigationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Z)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$300(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateStates()V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$400(Lcom/android/systemui/navigationbar/NavigationBar;)V

    if-eqz p1, :cond_0

    .line 303
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$500(Lcom/android/systemui/navigationbar/NavigationBar;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->access$600(Lcom/android/systemui/navigationbar/NavigationBar;Z)V

    :cond_0
    return-void
.end method

.method public onNavBarButtonAlphaChanged(FZ)V
    .locals 4

    .line 332
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1200(Lcom/android/systemui/navigationbar/NavigationBar;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 338
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {v1}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1300(Lcom/android/systemui/navigationbar/NavigationBar;)I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isSwipeUpMode(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 339
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$300(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    goto :goto_0

    .line 340
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {v1}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1300(Lcom/android/systemui/navigationbar/NavigationBar;)I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 341
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1400(Lcom/android/systemui/navigationbar/NavigationBar;)Z

    move-result v0

    .line 342
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$300(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    move v3, v0

    move-object v0, p0

    move p0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move p0, v2

    :goto_1
    if-eqz v0, :cond_6

    if-nez p0, :cond_4

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x4

    .line 345
    :cond_4
    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    if-eqz p0, :cond_5

    const/high16 p1, 0x3f800000    # 1.0f

    .line 347
    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setAlpha(FZ)V

    :cond_6
    return-void
.end method

.method public onOverviewShown(Z)V
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$300(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/navigationbar/RotationButtonController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->setSkipOverrideUserLockPrefsOnce()V

    return-void
.end method

.method public onQuickSwitchToNewTask(I)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->access$802(Lcom/android/systemui/navigationbar/NavigationBar;I)I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 320
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$902(Lcom/android/systemui/navigationbar/NavigationBar;Z)Z

    .line 322
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1000(Lcom/android/systemui/navigationbar/NavigationBar;)V

    return-void
.end method

.method public onToggleRecentApps()V
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$300(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/navigationbar/RotationButtonController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->setSkipOverrideUserLockPrefsOnce()V

    return-void
.end method

.method public startAssistant(Landroid/os/Bundle;)V
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1100(Lcom/android/systemui/navigationbar/NavigationBar;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    return-void
.end method
