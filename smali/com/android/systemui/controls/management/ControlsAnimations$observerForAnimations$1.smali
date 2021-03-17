.class public final Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;
.super Ljava/lang/Object;
.source "ControlsAnimations.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsAnimations;->observerForAnimations(Landroid/view/ViewGroup;Landroid/view/Window;Landroid/content/Intent;)Landroidx/lifecycle/LifecycleObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $intent:Landroid/content/Intent;

.field final synthetic $view:Landroid/view/ViewGroup;

.field final synthetic $window:Landroid/view/Window;

.field private showAnimation:Z

.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlsAnimations;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/view/ViewGroup;Lcom/android/systemui/controls/management/ControlsAnimations;Landroid/view/Window;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$view:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->this$0:Lcom/android/systemui/controls/management/ControlsAnimations;

    iput-object p4, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$window:Landroid/view/Window;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "extra_animate"

    const/4 p4, 0x0

    .line 59
    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->showAnimation:Z

    const/4 p0, 0x1

    .line 64
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    const/4 p1, 0x0

    .line 65
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setTransitionAlpha(F)V

    .line 67
    invoke-static {}, Lcom/android/systemui/controls/management/ControlsAnimations;->access$getTranslationY$p$s-1162163995()F

    move-result p1

    const/high16 p3, -0x40800000    # -1.0f

    cmpg-float p1, p1, p3

    if-nez p1, :cond_0

    move p4, p0

    :cond_0
    if-eqz p4, :cond_1

    .line 68
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 69
    sget p1, Lcom/android/systemui/R$dimen;->global_actions_controls_y_translation:I

    .line 68
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsAnimations;->access$setTranslationY$p$s-1162163995(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final enterAnimation()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->showAnimation:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->this$0:Lcom/android/systemui/controls/management/ControlsAnimations;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$view:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/management/ControlsAnimations;->enterAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->showAnimation:Z

    :cond_0
    return-void
.end method

.method public final resetAnimation()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 94
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$view:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method public final setup()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$window:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->this$0:Lcom/android/systemui/controls/management/ControlsAnimations;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$view:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    .line 76
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAllowEnterTransitionOverlap(Z)V

    .line 77
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/controls/management/ControlsAnimations;->enterWindowTransition(I)Lcom/android/systemui/controls/management/WindowTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    .line 78
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/controls/management/ControlsAnimations;->exitWindowTransition(I)Lcom/android/systemui/controls/management/WindowTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setExitTransition(Landroid/transition/Transition;)V

    .line 79
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/controls/management/ControlsAnimations;->enterWindowTransition(I)Lcom/android/systemui/controls/management/WindowTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setReenterTransition(Landroid/transition/Transition;)V

    .line 80
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/systemui/controls/management/ControlsAnimations;->exitWindowTransition(I)Lcom/android/systemui/controls/management/WindowTransition;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setReturnTransition(Landroid/transition/Transition;)V

    return-void
.end method
