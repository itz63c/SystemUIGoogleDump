.class public final Lcom/android/systemui/controls/ui/DetailDialog;
.super Landroid/app/Dialog;
.source "DetailDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/DetailDialog$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/ui/DetailDialog$Companion;


# instance fields
.field private final activityContext:Landroid/content/Context;

.field private final cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field private detailTaskId:I

.field private final intent:Landroid/content/Intent;

.field private final stateCallback:Lcom/android/wm/shell/TaskView$Listener;

.field private final taskView:Lcom/android/wm/shell/TaskView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/DetailDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/DetailDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/ui/DetailDialog;->Companion:Lcom/android/systemui/controls/ui/DetailDialog$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/TaskView;Landroid/content/Intent;Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 2

    const-string/jumbo v0, "taskView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cvh"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 48
    invoke-virtual {p4}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 49
    :goto_0
    sget v1, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog_Control_DetailPanel:I

    .line 47
    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 43
    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/android/systemui/controls/ui/DetailDialog;->taskView:Lcom/android/wm/shell/TaskView;

    .line 45
    iput-object p3, p0, Lcom/android/systemui/controls/ui/DetailDialog;->intent:Landroid/content/Intent;

    .line 46
    iput-object p4, p0, Lcom/android/systemui/controls/ui/DetailDialog;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const/4 p3, -0x1

    .line 59
    iput p3, p0, Lcom/android/systemui/controls/ui/DetailDialog;->detailTaskId:I

    .line 67
    new-instance p3, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    iput-object p3, p0, Lcom/android/systemui/controls/ui/DetailDialog;->stateCallback:Lcom/android/wm/shell/TaskView$Listener;

    if-nez p1, :cond_1

    .line 107
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7e4

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 111
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 112
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x20000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 114
    sget p1, Lcom/android/systemui/R$layout;->controls_detail_dialog:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 116
    sget p1, Lcom/android/systemui/R$id;->controls_activity_view:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/DetailDialog;->getTaskView()Lcom/android/wm/shell/TaskView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 120
    sget p1, Lcom/android/systemui/R$id;->control_detail_close:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 121
    new-instance v0, Lcom/android/systemui/controls/ui/DetailDialog$2$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/DetailDialog$2$1;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    sget p1, Lcom/android/systemui/R$id;->control_detail_open_in_app:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 125
    new-instance v0, Lcom/android/systemui/controls/ui/DetailDialog$3$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/controls/ui/DetailDialog$3$1;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/controls/ui/DetailDialog$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/DetailDialog$4;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 153
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 154
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 155
    sget p1, Lcom/android/systemui/R$dimen;->controls_activity_view_corner_radius:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    .line 156
    invoke-virtual {p2, p0}, Landroid/view/SurfaceView;->setCornerRadius(F)V

    .line 159
    :cond_2
    invoke-virtual {p4}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getUiExecutor()Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p0

    invoke-virtual {p2, p0, p3}, Lcom/android/wm/shell/TaskView;->setListener(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/TaskView$Listener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 163
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->taskView:Lcom/android/wm/shell/TaskView;

    invoke-virtual {v0}, Lcom/android/wm/shell/TaskView;->release()V

    .line 166
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final getActivityContext()Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public final getTaskView()Lcom/android/wm/shell/TaskView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->taskView:Lcom/android/wm/shell/TaskView;

    return-object p0
.end method

.method public final removeDetailTask()V
    .locals 3

    .line 62
    iget v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->detailTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/controls/ui/DetailDialog;->detailTaskId:I

    invoke-virtual {v0, v2}, Landroid/app/ActivityTaskManager;->removeTask(I)Z

    .line 64
    iput v1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->detailTaskId:I

    return-void
.end method

.method public final setDetailTaskId(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->detailTaskId:I

    return-void
.end method
