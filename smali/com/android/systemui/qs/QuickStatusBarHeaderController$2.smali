.class Lcom/android/systemui/qs/QuickStatusBarHeaderController$2;
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

    .line 113
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$2;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$2;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$600(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/statusbar/policy/Clock;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$2;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$700(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SHOW_ALARMS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$2;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$000(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/privacy/OngoingPrivacyChip;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 121
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$2;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$800(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/privacy/PrivacyChipEvent;->ONGOING_INDICATORS_CHIP_CLICK:Lcom/android/systemui/privacy/PrivacyChipEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 122
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$2;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$1000(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/privacy/PrivacyDialogController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$2;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$900(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/privacy/PrivacyDialogController;->showDialog(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
