.class Lcom/android/systemui/tuner/TunerService$1;
.super Ljava/lang/Object;
.source "TunerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/TunerService;->showResetRequest(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$onDisabled:Ljava/lang/Runnable;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/Runnable;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerService$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/tuner/TunerService$1;->val$user:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/systemui/tuner/TunerService$1;->val$onDisabled:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcom/android/systemui/tuner/TunerService$1;->val$context:Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.android.systemui.action.CLEAR_TUNER"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    iget-object p1, p0, Lcom/android/systemui/tuner/TunerService$1;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/systemui/tuner/TunerService$1;->val$user:Landroid/os/UserHandle;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/systemui/tuner/TunerService;->setTunerEnabled(Landroid/content/Context;Landroid/os/UserHandle;Z)V

    .line 120
    iget-object p1, p0, Lcom/android/systemui/tuner/TunerService$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "seen_tuner_warning"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    iget-object p0, p0, Lcom/android/systemui/tuner/TunerService$1;->val$onDisabled:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 123
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
