.class public final synthetic Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/DefaultTransitionHandler;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$2:Landroid/view/SurfaceControl;

.field public final synthetic f$3:F

.field public final synthetic f$4:Ljava/util/ArrayList;

.field public final synthetic f$5:Landroid/animation/ValueAnimator;

.field public final synthetic f$6:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FLjava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda1;->f$1:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda1;->f$2:Landroid/view/SurfaceControl;

    iput p4, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda1;->f$3:F

    iput-object p5, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda1;->f$4:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda1;->f$5:Landroid/animation/ValueAnimator;

    iput-object p7, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda1;->f$6:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda1;->f$1:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda1;->f$2:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda1;->f$3:F

    iget-object v4, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda1;->f$4:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda1;->f$5:Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler-$$ExternalSyntheticLambda1;->f$6:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v6}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->$r8$lambda$2O8nVzlPBo4h6gvVikrQN67Zkvk(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FLjava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    return-void
.end method
