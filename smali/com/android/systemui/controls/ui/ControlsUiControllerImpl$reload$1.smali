.class public final Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ControlsUiControllerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->reload(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $parent:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;->$parent:Landroid/view/ViewGroup;

    .line 191
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->access$getControlViewsById$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 194
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->access$getControlsById$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 196
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;->$parent:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->access$getOnDismiss$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->getControlActionCoordinator()Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/controls/ui/ControlActionCoordinator;->getStartedFromGlobalActions()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->show(Landroid/view/ViewGroup;Ljava/lang/Runnable;Z)V

    .line 197
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;->$parent:Landroid/view/ViewGroup;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    const-string v0, "alpha"

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 198
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    .line 199
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 200
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_0
    const-string p0, "onDismiss"

    .line 196
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
