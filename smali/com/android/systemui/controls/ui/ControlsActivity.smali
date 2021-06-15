.class public final Lcom/android/systemui/controls/ui/ControlsActivity;
.super Lcom/android/systemui/util/LifecycleActivity;
.source "ControlsActivity.kt"


# instance fields
.field private parent:Landroid/view/ViewGroup;

.field private final uiController:Lcom/android/systemui/controls/ui/ControlsUiController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlsUiController;)V
    .locals 1

    const-string/jumbo v0, "uiController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleActivity;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 40
    invoke-super {p0, p1}, Lcom/android/systemui/util/LifecycleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget p1, Lcom/android/systemui/R$layout;->controls_fullscreen:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/util/LifecycleActivity;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    .line 45
    sget-object v0, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    .line 46
    sget v1, Lcom/android/systemui/R$id;->control_detail_root:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "requireViewById<ViewGroup>(R.id.control_detail_root)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup;

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "intent"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/systemui/controls/management/ControlsAnimations;->observerForAnimations(Landroid/view/ViewGroup;Landroid/view/Window;Landroid/content/Intent;)Landroidx/lifecycle/LifecycleObserver;

    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 52
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 53
    sget-object p1, Lcom/android/systemui/controls/ui/ControlsActivity$onCreate$1$1;->INSTANCE:Lcom/android/systemui/controls/ui/ControlsActivity$onCreate$1$1;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onResume()V

    .line 78
    sget-object v0, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->parent:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/management/ControlsAnimations;->enterAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    :cond_0
    const-string p0, "parent"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method protected onStart()V
    .locals 4

    .line 68
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onStart()V

    .line 70
    sget v0, Lcom/android/systemui/R$id;->global_actions_controls:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "requireViewById<ViewGroup>(R.id.global_actions_controls)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const-string v2, "parent"

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    .line 71
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->parent:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    new-instance v1, Lcom/android/systemui/controls/ui/ControlsActivity$onStart$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/ui/ControlsActivity$onStart$1;-><init>(Lcom/android/systemui/controls/ui/ControlsActivity;)V

    invoke-interface {v0, v3, v1, p0}, Lcom/android/systemui/controls/ui/ControlsUiController;->show(Landroid/view/ViewGroup;Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method protected onStop()V
    .locals 0

    .line 86
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onStop()V

    .line 88
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    invoke-interface {p0}, Lcom/android/systemui/controls/ui/ControlsUiController;->hide()V

    return-void
.end method
