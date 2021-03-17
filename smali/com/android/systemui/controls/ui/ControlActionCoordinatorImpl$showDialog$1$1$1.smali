.class final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1$1;
.super Ljava/lang/Object;
.source "ControlActionCoordinatorImpl.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/wm/shell/TaskView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field final synthetic $intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1$1;->$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/wm/shell/TaskView;)V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    new-instance v1, Lcom/android/systemui/controls/ui/DetailDialog;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const-string v3, "it"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1$1;->$intent:Landroid/content/Intent;

    invoke-direct {v1, v2, p1, v3}, Lcom/android/systemui/controls/ui/DetailDialog;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/wm/shell/TaskView;Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 185
    new-instance p1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1$1$1$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1$1$1$1;-><init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;)V

    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 186
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/DetailDialog;->show()V

    .line 187
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 184
    invoke-static {v0, v1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->access$setDialog$p(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Landroid/app/Dialog;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/wm/shell/TaskView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDialog$1$1$1;->accept(Lcom/android/wm/shell/TaskView;)V

    return-void
.end method
