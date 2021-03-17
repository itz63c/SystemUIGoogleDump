.class Lcom/android/systemui/qs/QuickStatusBarHeaderController$5;
.super Ljava/lang/Object;
.source "QuickStatusBarHeaderController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickStatusBarHeaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$5;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$5;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$1500(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/statusbar/policy/Clock;

    move-result-object v0

    const-string v1, "android.intent.action.SHOW_ALARMS"

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 188
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$5;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$1600(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$5;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$1700(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$5;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$1700(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$5;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$100(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 192
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$5;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$1600(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$5;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    .line 193
    invoke-static {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$100(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object p0

    .line 192
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    const-string p1, "QuickStatusBarHeader"

    const-string v0, "No PendingIntent for next alarm. Using default intent"

    .line 195
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$5;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$1600(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$5;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$800(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/privacy/OngoingPrivacyChip;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 201
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$5;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$1800(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/privacy/PrivacyChipEvent;->ONGOING_INDICATORS_CHIP_CLICK:Lcom/android/systemui/privacy/PrivacyChipEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 202
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$5;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$2000(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/privacy/PrivacyDialogController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$5;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$1900(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/privacy/PrivacyDialogController;->showDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$5;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$2100(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$5;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$2100(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isVisibleToUser()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 204
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$5;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$1600(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.SOUND_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :cond_4
    :goto_0
    return-void
.end method
