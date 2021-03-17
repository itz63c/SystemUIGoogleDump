.class final Lcom/android/systemui/controls/ui/ControlsDialog$show$1;
.super Ljava/lang/Object;
.source "ControlsDialog.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlsDialog;->show(Lcom/android/systemui/controls/ui/ControlsUiController;)Lcom/android/systemui/controls/ui/ControlsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ControlsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsDialog$show$1;->this$0:Lcom/android/systemui/controls/ui/ControlsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsDialog$show$1;->this$0:Lcom/android/systemui/controls/ui/ControlsDialog;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlsDialog;->dismiss()V

    return-void
.end method
