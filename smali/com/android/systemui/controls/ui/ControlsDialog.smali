.class public final Lcom/android/systemui/controls/ui/ControlsDialog;
.super Landroid/app/Dialog;
.source "ControlsDialog.kt"


# instance fields
.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final receiver:Lcom/android/systemui/controls/ui/ControlsDialog$receiver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 1

    const-string v0, "thisContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget v0, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog_Control_LockScreen:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 38
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsDialog;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 41
    new-instance p1, Lcom/android/systemui/controls/ui/ControlsDialog$receiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/ControlsDialog$receiver$1;-><init>(Lcom/android/systemui/controls/ui/ControlsDialog;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsDialog;->receiver:Lcom/android/systemui/controls/ui/ControlsDialog$receiver$1;

    .line 51
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d9

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 52
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 p2, 0xa0000

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 55
    sget p1, Lcom/android/systemui/R$layout;->controls_in_dialog:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 57
    sget p1, Lcom/android/systemui/R$id;->control_detail_root:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 58
    new-instance p2, Lcom/android/systemui/controls/ui/ControlsDialog$1$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/controls/ui/ControlsDialog$1$1;-><init>(Lcom/android/systemui/controls/ui/ControlsDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    new-instance p2, Lcom/android/systemui/controls/ui/ControlsDialog$1$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/controls/ui/ControlsDialog$1$2;-><init>(Lcom/android/systemui/controls/ui/ControlsDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsDialog;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsDialog;->receiver:Lcom/android/systemui/controls/ui/ControlsDialog$receiver$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 87
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final show(Lcom/android/systemui/controls/ui/ControlsUiController;)Lcom/android/systemui/controls/ui/ControlsDialog;
    .locals 9

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 68
    sget v0, Lcom/android/systemui/R$id;->global_actions_controls:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    const-string/jumbo v1, "vg"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/controls/ui/ControlsDialog$show$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/ui/ControlsDialog$show$1;-><init>(Lcom/android/systemui/controls/ui/ControlsDialog;)V

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/controls/ui/ControlsUiController;->show(Landroid/view/ViewGroup;Ljava/lang/Runnable;Z)V

    .line 72
    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 74
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 77
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 78
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlsDialog;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlsDialog;->receiver:Lcom/android/systemui/controls/ui/ControlsDialog$receiver$1;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/Object;)V

    return-object p0
.end method
