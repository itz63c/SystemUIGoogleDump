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
.field private final activityView:Lcom/android/wm/shell/TaskView;

.field private final cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field private detailTaskId:I

.field private final intent:Landroid/content/Intent;

.field private final stateCallback:Lcom/android/wm/shell/TaskView$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/DetailDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/DetailDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/ui/DetailDialog;->Companion:Lcom/android/systemui/controls/ui/DetailDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/wm/shell/TaskView;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "cvh"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog_Control_DetailPanel:I

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 43
    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 44
    iput-object p2, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityView:Lcom/android/wm/shell/TaskView;

    .line 45
    iput-object p3, p0, Lcom/android/systemui/controls/ui/DetailDialog;->intent:Landroid/content/Intent;

    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->detailTaskId:I

    .line 65
    new-instance p1, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->stateCallback:Lcom/android/wm/shell/TaskView$Listener;

    .line 95
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p3, 0x7e4

    invoke-virtual {p1, p3}, Landroid/view/Window;->setType(I)V

    .line 97
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p3, 0x20

    invoke-virtual {p1, p3}, Landroid/view/Window;->addFlags(I)V

    .line 98
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 p3, 0x20000000

    invoke-virtual {p1, p3}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 100
    sget p1, Lcom/android/systemui/R$layout;->controls_detail_dialog:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 102
    sget p1, Lcom/android/systemui/R$id;->controls_activity_view:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/DetailDialog;->getActivityView()Lcom/android/wm/shell/TaskView;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    sget p1, Lcom/android/systemui/R$id;->control_detail_close:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 107
    new-instance p3, Lcom/android/systemui/controls/ui/DetailDialog$2$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/controls/ui/DetailDialog$2$1;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    sget p1, Lcom/android/systemui/R$id;->control_detail_open_in_app:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 111
    new-instance p3, Lcom/android/systemui/controls/ui/DetailDialog$3$1;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/controls/ui/DetailDialog$3$1;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/controls/ui/DetailDialog$4;

    invoke-direct {p3, p0}, Lcom/android/systemui/controls/ui/DetailDialog$4;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 134
    sget p1, Lcom/android/systemui/R$id;->control_detail_root:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/DetailDialog;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/DetailDialog;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 138
    sget v1, Lcom/android/systemui/R$dimen;->controls_activity_view_top_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const-string v1, "systemui.controls_panel_top_offset"

    .line 139
    invoke-static {p3, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    .line 141
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 142
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    new-instance p3, Lcom/android/systemui/controls/ui/DetailDialog$5$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/controls/ui/DetailDialog$5$1;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type android.view.View"

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    new-instance p3, Lcom/android/systemui/controls/ui/DetailDialog$5$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/controls/ui/DetailDialog$5$2;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 151
    sget p1, Lcom/android/systemui/R$dimen;->controls_activity_view_corner_radius:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    .line 152
    invoke-virtual {p2, p0}, Landroid/view/SurfaceView;->setCornerRadius(F)V

    :cond_0
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
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityView:Lcom/android/wm/shell/TaskView;

    invoke-virtual {v0}, Lcom/android/wm/shell/TaskView;->release()V

    .line 166
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final getActivityView()Lcom/android/wm/shell/TaskView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityView:Lcom/android/wm/shell/TaskView;

    return-object p0
.end method

.method public final getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    return-object p0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public final removeDetailTask()V
    .locals 3

    .line 60
    iget v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->detailTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/controls/ui/DetailDialog;->detailTaskId:I

    invoke-virtual {v0, v2}, Landroid/app/ActivityTaskManager;->removeTask(I)Z

    .line 62
    iput v1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->detailTaskId:I

    return-void
.end method

.method public final setDetailTaskId(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->detailTaskId:I

    return-void
.end method

.method public show()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityView:Lcom/android/wm/shell/TaskView;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getUiExecutor()Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/controls/ui/DetailDialog;->stateCallback:Lcom/android/wm/shell/TaskView$Listener;

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/TaskView;->setListener(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/TaskView$Listener;)V

    .line 159
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
