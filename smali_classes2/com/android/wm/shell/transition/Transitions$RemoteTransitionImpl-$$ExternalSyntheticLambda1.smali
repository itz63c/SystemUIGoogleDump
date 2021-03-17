.class public final synthetic Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl-$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;

.field public final synthetic f$1:Landroid/window/TransitionFilter;

.field public final synthetic f$2:Landroid/window/IRemoteTransition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;Landroid/window/TransitionFilter;Landroid/window/IRemoteTransition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl-$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;

    iput-object p2, p0, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl-$$ExternalSyntheticLambda1;->f$1:Landroid/window/TransitionFilter;

    iput-object p3, p0, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl-$$ExternalSyntheticLambda1;->f$2:Landroid/window/IRemoteTransition;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl-$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl-$$ExternalSyntheticLambda1;->f$1:Landroid/window/TransitionFilter;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl-$$ExternalSyntheticLambda1;->f$2:Landroid/window/IRemoteTransition;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;->$r8$lambda$oqW2m1Ji4Wpyfs9dWO3bQVaDXtM(Lcom/android/wm/shell/transition/Transitions$RemoteTransitionImpl;Landroid/window/TransitionFilter;Landroid/window/IRemoteTransition;)V

    return-void
.end method
