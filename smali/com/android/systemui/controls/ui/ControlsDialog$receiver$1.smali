.class public final Lcom/android/systemui/controls/ui/ControlsDialog$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "ControlsDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlsDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ControlsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsDialog$receiver$1;->this$0:Lcom/android/systemui/controls/ui/ControlsDialog;

    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsDialog$receiver$1;->this$0:Lcom/android/systemui/controls/ui/ControlsDialog;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlsDialog;->dismiss()V

    :cond_0
    return-void
.end method
