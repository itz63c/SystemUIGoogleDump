.class final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$bouncerOrRun$1;
.super Ljava/lang/Object;
.source "ControlActionCoordinatorImpl.kt"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->bouncerOrRun(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $action:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

.field final synthetic $closeDialog:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$bouncerOrRun$1;->$closeDialog:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$bouncerOrRun$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$bouncerOrRun$1;->$action:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 3

    const-string v0, "ControlsUiController"

    const-string v1, "Device unlocked, invoking controls action"

    .line 152
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$bouncerOrRun$1;->$closeDialog:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$bouncerOrRun$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->getStartedFromGlobalActions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$bouncerOrRun$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    invoke-static {p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->access$getGlobalActionsComponent$p(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;)Lcom/android/systemui/globalactions/GlobalActionsComponent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsComponent;->handleShowGlobalActionsMenu()V

    goto :goto_0

    .line 157
    :cond_0
    new-instance v0, Lcom/android/systemui/controls/ui/ControlsDialog;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$bouncerOrRun$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    invoke-static {v1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->access$getContext$p(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$bouncerOrRun$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    invoke-static {v2}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->access$getBroadcastDispatcher$p(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;)Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/controls/ui/ControlsDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$bouncerOrRun$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    invoke-static {p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->access$getLazyUiController$p(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v1, "lazyUiController.get()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/systemui/controls/ui/ControlsUiController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/ui/ControlsDialog;->show(Lcom/android/systemui/controls/ui/ControlsUiController;)Lcom/android/systemui/controls/ui/ControlsDialog;

    goto :goto_0

    .line 160
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$bouncerOrRun$1;->$action:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->invoke()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
