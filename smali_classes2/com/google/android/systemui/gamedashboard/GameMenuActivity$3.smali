.class Lcom/google/android/systemui/gamedashboard/GameMenuActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "GameMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->createDndReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/GameMenuActivity;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$3;->this$0:Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 458
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$3;->this$0:Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->access$200(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 460
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 461
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$3;->this$0:Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->access$300(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)Lcom/google/android/systemui/gamedashboard/GameDashboardButton;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$3;->this$0:Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    invoke-static {p2}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->access$200(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->isGameModeDndOn()Z

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->setToggled(ZZ)V

    .line 462
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$3;->this$0:Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->access$400(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$3;->this$0:Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->access$200(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->isGameModeDndOn()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 463
    sget-object p0, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_ENABLE_DND:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    goto :goto_0

    .line 464
    :cond_0
    sget-object p0, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_DISABLE_DND:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 462
    :goto_0
    invoke-interface {p1, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_1
    return-void
.end method
